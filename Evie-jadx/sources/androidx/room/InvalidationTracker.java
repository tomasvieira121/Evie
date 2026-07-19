package androidx.room;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.sqlite.p001db.SupportSQLiteDatabase;
import androidx.sqlite.p001db.SupportSQLiteStatement;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public class InvalidationTracker {
    private static final String[] TRIGGERS = {"UPDATE", "DELETE", "INSERT"};
    volatile SupportSQLiteStatement mCleanupStatement;
    final RoomDatabase mDatabase;
    private ObservedTableTracker mObservedTableTracker;
    private String[] mTableNames;
    long[] mTableVersions;
    Object[] mQueryArgs = new Object[1];
    long mMaxVersion = 0;
    AtomicBoolean mPendingRefresh = new AtomicBoolean(false);
    private volatile boolean mInitialized = false;
    final SafeIterableMap<Observer, ObserverWrapper> mObserverMap = new SafeIterableMap<>();
    Runnable mRefreshRunnable = new Runnable() { // from class: androidx.room.InvalidationTracker.1
        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        @Override // java.lang.Runnable
        public void run() {
            Lock closeLock = InvalidationTracker.this.mDatabase.getCloseLock();
            boolean zCheckUpdatedTable = false;
            try {
                try {
                    closeLock.lock();
                    if (!InvalidationTracker.this.ensureInitialization()) {
                        closeLock.unlock();
                        return;
                    }
                    if (!InvalidationTracker.this.mPendingRefresh.compareAndSet(true, false)) {
                        closeLock.unlock();
                        return;
                    }
                    if (InvalidationTracker.this.mDatabase.inTransaction()) {
                        closeLock.unlock();
                        return;
                    }
                    InvalidationTracker.this.mCleanupStatement.executeUpdateDelete();
                    InvalidationTracker.this.mQueryArgs[0] = Long.valueOf(InvalidationTracker.this.mMaxVersion);
                    if (InvalidationTracker.this.mDatabase.mWriteAheadLoggingEnabled) {
                        SupportSQLiteDatabase writableDatabase = InvalidationTracker.this.mDatabase.getOpenHelper().getWritableDatabase();
                        try {
                            writableDatabase.beginTransaction();
                            zCheckUpdatedTable = checkUpdatedTable();
                            writableDatabase.setTransactionSuccessful();
                            writableDatabase.endTransaction();
                        } catch (Throwable th) {
                            writableDatabase.endTransaction();
                            throw th;
                        }
                    } else {
                        zCheckUpdatedTable = checkUpdatedTable();
                    }
                    closeLock.unlock();
                    if (zCheckUpdatedTable) {
                        synchronized (InvalidationTracker.this.mObserverMap) {
                            Iterator<Map.Entry<Observer, ObserverWrapper>> it = InvalidationTracker.this.mObserverMap.iterator();
                            while (it.hasNext()) {
                                it.next().getValue().checkForInvalidation(InvalidationTracker.this.mTableVersions);
                            }
                        }
                    }
                } catch (SQLiteException | IllegalStateException e) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                }
            } catch (Throwable th2) {
                closeLock.unlock();
                throw th2;
            }
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        private boolean checkUpdatedTable() {
            Cursor cursorQuery = InvalidationTracker.this.mDatabase.query("SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;", InvalidationTracker.this.mQueryArgs);
            boolean z = false;
            while (cursorQuery.moveToNext()) {
                try {
                    long j = cursorQuery.getLong(0);
                    InvalidationTracker.this.mTableVersions[cursorQuery.getInt(1)] = j;
                    InvalidationTracker.this.mMaxVersion = j;
                    z = true;
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }
            cursorQuery.close();
            return z;
        }
    };
    ArrayMap<String, Integer> mTableIdLookup = new ArrayMap<>();

    public static abstract class Observer {
        public abstract void onInvalidated(Set<String> set);
    }

    public InvalidationTracker(RoomDatabase roomDatabase, String... strArr) {
        this.mDatabase = roomDatabase;
        this.mObservedTableTracker = new ObservedTableTracker(strArr.length);
        int length = strArr.length;
        this.mTableNames = new String[length];
        for (int i = 0; i < length; i++) {
            String lowerCase = strArr[i].toLowerCase(Locale.US);
            this.mTableIdLookup.put(lowerCase, Integer.valueOf(i));
            this.mTableNames[i] = lowerCase;
        }
        this.mTableVersions = new long[strArr.length];
        Arrays.fill(this.mTableVersions, 0L);
    }

    void internalInit(SupportSQLiteDatabase supportSQLiteDatabase) {
        synchronized (this) {
            if (this.mInitialized) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            supportSQLiteDatabase.beginTransaction();
            try {
                supportSQLiteDatabase.execSQL("PRAGMA temp_store = MEMORY;");
                supportSQLiteDatabase.execSQL("PRAGMA recursive_triggers='ON';");
                supportSQLiteDatabase.execSQL("CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)");
                supportSQLiteDatabase.setTransactionSuccessful();
                supportSQLiteDatabase.endTransaction();
                syncTriggers(supportSQLiteDatabase);
                this.mCleanupStatement = supportSQLiteDatabase.compileStatement("DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)");
                this.mInitialized = true;
            } catch (Throwable th) {
                supportSQLiteDatabase.endTransaction();
                throw th;
            }
        }
    }

    private static void appendTriggerName(StringBuilder sb, String str, String str2) {
        sb.append("`");
        sb.append("room_table_modification_trigger_");
        sb.append(str);
        sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        sb.append(str2);
        sb.append("`");
    }

    private void stopTrackingTable(SupportSQLiteDatabase supportSQLiteDatabase, int i) {
        String str = this.mTableNames[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : TRIGGERS) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            appendTriggerName(sb, str, str2);
            supportSQLiteDatabase.execSQL(sb.toString());
        }
    }

    private void startTrackingTable(SupportSQLiteDatabase supportSQLiteDatabase, int i) {
        String str = this.mTableNames[i];
        StringBuilder sb = new StringBuilder();
        for (String str2 : TRIGGERS) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            appendTriggerName(sb, str, str2);
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN INSERT OR REPLACE INTO ");
            sb.append("room_table_modification_log");
            sb.append(" VALUES(null, ");
            sb.append(i);
            sb.append("); END");
            supportSQLiteDatabase.execSQL(sb.toString());
        }
    }

    boolean ensureInitialization() {
        if (!this.mDatabase.isOpen()) {
            return false;
        }
        if (!this.mInitialized) {
            this.mDatabase.getOpenHelper().getWritableDatabase();
        }
        if (this.mInitialized) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public void refreshVersionsAsync() {
        if (this.mPendingRefresh.compareAndSet(false, true)) {
            this.mDatabase.getQueryExecutor().execute(this.mRefreshRunnable);
        }
    }

    void syncTriggers(SupportSQLiteDatabase supportSQLiteDatabase) {
        if (supportSQLiteDatabase.inTransaction()) {
            return;
        }
        while (true) {
            try {
                Lock closeLock = this.mDatabase.getCloseLock();
                closeLock.lock();
                try {
                    int[] tablesToSync = this.mObservedTableTracker.getTablesToSync();
                    if (tablesToSync != null) {
                        int length = tablesToSync.length;
                        try {
                            supportSQLiteDatabase.beginTransaction();
                            for (int i = 0; i < length; i++) {
                                switch (tablesToSync[i]) {
                                    case 1:
                                        startTrackingTable(supportSQLiteDatabase, i);
                                        break;
                                    case 2:
                                        stopTrackingTable(supportSQLiteDatabase, i);
                                        break;
                                }
                            }
                            supportSQLiteDatabase.setTransactionSuccessful();
                            supportSQLiteDatabase.endTransaction();
                            this.mObservedTableTracker.onSyncCompleted();
                            closeLock.unlock();
                        } catch (Throwable th) {
                            supportSQLiteDatabase.endTransaction();
                            throw th;
                        }
                    } else {
                        closeLock.unlock();
                        return;
                    }
                } catch (Throwable th2) {
                    closeLock.unlock();
                    throw th2;
                }
            } catch (SQLiteException | IllegalStateException e) {
                Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                return;
            }
        }
    }

    static class ObserverWrapper {
        final Observer mObserver;
        private final Set<String> mSingleTableSet;
        final int[] mTableIds;
        private final String[] mTableNames;
        private final long[] mVersions;

        void checkForInvalidation(long[] jArr) {
            int length = this.mTableIds.length;
            Set<String> arraySet = null;
            for (int i = 0; i < length; i++) {
                long j = jArr[this.mTableIds[i]];
                long[] jArr2 = this.mVersions;
                if (jArr2[i] < j) {
                    jArr2[i] = j;
                    if (length == 1) {
                        arraySet = this.mSingleTableSet;
                    } else {
                        if (arraySet == null) {
                            arraySet = new ArraySet<>(length);
                        }
                        arraySet.add(this.mTableNames[i]);
                    }
                }
            }
            if (arraySet != null) {
                this.mObserver.onInvalidated(arraySet);
            }
        }
    }

    static class ObservedTableTracker {
        boolean mNeedsSync;
        boolean mPendingSync;
        final long[] mTableObservers;
        final int[] mTriggerStateChanges;
        final boolean[] mTriggerStates;

        ObservedTableTracker(int i) {
            this.mTableObservers = new long[i];
            this.mTriggerStates = new boolean[i];
            this.mTriggerStateChanges = new int[i];
            Arrays.fill(this.mTableObservers, 0L);
            Arrays.fill(this.mTriggerStates, false);
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        int[] getTablesToSync() {
            synchronized (this) {
                if (this.mNeedsSync && !this.mPendingSync) {
                    int length = this.mTableObservers.length;
                    int i = 0;
                    while (true) {
                        int i2 = 1;
                        if (i < length) {
                            boolean z = this.mTableObservers[i] > 0;
                            if (z != this.mTriggerStates[i]) {
                                int[] iArr = this.mTriggerStateChanges;
                                if (!z) {
                                    i2 = 2;
                                }
                                iArr[i] = i2;
                            } else {
                                this.mTriggerStateChanges[i] = 0;
                            }
                            this.mTriggerStates[i] = z;
                            i++;
                        } else {
                            this.mPendingSync = true;
                            this.mNeedsSync = false;
                            return this.mTriggerStateChanges;
                        }
                    }
                }
                return null;
            }
        }

        void onSyncCompleted() {
            synchronized (this) {
                this.mPendingSync = false;
            }
        }
    }
}
