package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.collection.SparseArrayCompat;
import androidx.core.app.ActivityManagerCompat;
import androidx.room.migration.Migration;
import androidx.sqlite.p001db.SimpleSQLiteQuery;
import androidx.sqlite.p001db.SupportSQLiteDatabase;
import androidx.sqlite.p001db.SupportSQLiteOpenHelper;
import androidx.sqlite.p001db.SupportSQLiteQuery;
import androidx.sqlite.p001db.SupportSQLiteStatement;
import androidx.sqlite.p001db.framework.FrameworkSQLiteOpenHelperFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoomDatabase {
    private boolean mAllowMainThreadQueries;
    protected List<Callback> mCallbacks;
    protected volatile SupportSQLiteDatabase mDatabase;
    private SupportSQLiteOpenHelper mOpenHelper;
    private Executor mQueryExecutor;
    boolean mWriteAheadLoggingEnabled;
    private final ReentrantLock mCloseLock = new ReentrantLock();
    private final InvalidationTracker mInvalidationTracker = createInvalidationTracker();

    public static abstract class Callback {
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    protected abstract InvalidationTracker createInvalidationTracker();

    protected abstract SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration);

    Lock getCloseLock() {
        return this.mCloseLock;
    }

    public void init(DatabaseConfiguration databaseConfiguration) {
        this.mOpenHelper = createOpenHelper(databaseConfiguration);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            z = databaseConfiguration.journalMode == JournalMode.WRITE_AHEAD_LOGGING;
            this.mOpenHelper.setWriteAheadLoggingEnabled(z);
        }
        this.mCallbacks = databaseConfiguration.callbacks;
        this.mQueryExecutor = databaseConfiguration.queryExecutor;
        this.mAllowMainThreadQueries = databaseConfiguration.allowMainThreadQueries;
        this.mWriteAheadLoggingEnabled = z;
    }

    public SupportSQLiteOpenHelper getOpenHelper() {
        return this.mOpenHelper;
    }

    public boolean isOpen() {
        SupportSQLiteDatabase supportSQLiteDatabase = this.mDatabase;
        return supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen();
    }

    public void assertNotMainThread() {
        if (!this.mAllowMainThreadQueries && isMainThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public Cursor query(String str, Object[] objArr) {
        return this.mOpenHelper.getWritableDatabase().query(new SimpleSQLiteQuery(str, objArr));
    }

    public Cursor query(SupportSQLiteQuery supportSQLiteQuery) {
        assertNotMainThread();
        return this.mOpenHelper.getWritableDatabase().query(supportSQLiteQuery);
    }

    public SupportSQLiteStatement compileStatement(String str) {
        assertNotMainThread();
        return this.mOpenHelper.getWritableDatabase().compileStatement(str);
    }

    public void beginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        this.mInvalidationTracker.syncTriggers(writableDatabase);
        writableDatabase.beginTransaction();
    }

    public void endTransaction() {
        this.mOpenHelper.getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        this.mInvalidationTracker.refreshVersionsAsync();
    }

    public Executor getQueryExecutor() {
        return this.mQueryExecutor;
    }

    public void setTransactionSuccessful() {
        this.mOpenHelper.getWritableDatabase().setTransactionSuccessful();
    }

    protected void internalInitInvalidationTracker(SupportSQLiteDatabase supportSQLiteDatabase) {
        this.mInvalidationTracker.internalInit(supportSQLiteDatabase);
    }

    public boolean inTransaction() {
        return this.mOpenHelper.getWritableDatabase().inTransaction();
    }

    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        @SuppressLint({"NewApi"})
        JournalMode resolve(Context context) {
            ActivityManager activityManager;
            if (this != AUTOMATIC) {
                return this;
            }
            if (Build.VERSION.SDK_INT >= 16 && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && !ActivityManagerCompat.isLowRamDevice(activityManager)) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    public static class Builder<T extends RoomDatabase> {
        private boolean mAllowMainThreadQueries;
        private ArrayList<Callback> mCallbacks;
        private final Context mContext;
        private final Class<T> mDatabaseClass;
        private SupportSQLiteOpenHelper.Factory mFactory;
        private Set<Integer> mMigrationStartAndEndVersions;
        private Set<Integer> mMigrationsNotRequiredFrom;
        private final String mName;
        private Executor mQueryExecutor;
        private JournalMode mJournalMode = JournalMode.AUTOMATIC;
        private boolean mRequireMigration = true;
        private final MigrationContainer mMigrationContainer = new MigrationContainer();

        Builder(Context context, Class<T> cls, String str) {
            this.mContext = context;
            this.mDatabaseClass = cls;
            this.mName = str;
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        public T build() {
            if (this.mContext == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.mDatabaseClass == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            if (this.mQueryExecutor == null) {
                this.mQueryExecutor = ArchTaskExecutor.getIOThreadExecutor();
            }
            Set<Integer> set = this.mMigrationStartAndEndVersions;
            if (set != null && this.mMigrationsNotRequiredFrom != null) {
                for (Integer num : set) {
                    if (this.mMigrationsNotRequiredFrom.contains(num)) {
                        throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                    }
                }
            }
            if (this.mFactory == null) {
                this.mFactory = new FrameworkSQLiteOpenHelperFactory();
            }
            Context context = this.mContext;
            DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.mName, this.mFactory, this.mMigrationContainer, this.mCallbacks, this.mAllowMainThreadQueries, this.mJournalMode.resolve(context), this.mQueryExecutor, this.mRequireMigration, this.mMigrationsNotRequiredFrom);
            T t = (T) Room.getGeneratedImplementation(this.mDatabaseClass, "_Impl");
            t.init(databaseConfiguration);
            return t;
        }
    }

    public static class MigrationContainer {
        private SparseArrayCompat<SparseArrayCompat<Migration>> mMigrations = new SparseArrayCompat<>();

        public List<Migration> findMigrationPath(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return findUpMigrationPath(new ArrayList(), i2 > i, i, i2);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001a  */
        /* JADX WARN: Code duplicated, block: B:15:0x0021  */
        /* JADX WARN: Code duplicated, block: B:16:0x0025  */
        /* JADX WARN: Code duplicated, block: B:18:0x0029  */
        /* JADX WARN: Code duplicated, block: B:20:0x002f  */
        /* JADX WARN: Code duplicated, block: B:23:0x0035  */
        /* JADX WARN: Code duplicated, block: B:24:0x0037  */
        /* JADX WARN: Code duplicated, block: B:27:0x003d  */
        /* JADX WARN: Code duplicated, block: B:30:0x004a A[LOOP:1: B:17:0x0027->B:30:0x004a, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:36:0x0019 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:42:0x0040 A[SYNTHETIC] */
        private List<Migration> findUpMigrationPath(List<Migration> list, boolean z, int i, int i2) {
            SparseArrayCompat<Migration> sparseArrayCompat;
            int size;
            boolean z2;
            int i3;
            int i4;
            int iKeyAt;
            boolean z3;
            int i5 = z ? -1 : 1;
            do {
                if (z) {
                    if (i >= i2) {
                        return list;
                    }
                    sparseArrayCompat = this.mMigrations.get(i);
                    if (sparseArrayCompat == null) {
                        return null;
                    }
                    size = sparseArrayCompat.size();
                    z2 = false;
                    if (z) {
                        i4 = size - 1;
                        i3 = -1;
                    } else {
                        i3 = size;
                        i4 = 0;
                    }
                    while (i4 != i3) {
                        iKeyAt = sparseArrayCompat.keyAt(i4);
                        if (z) {
                            if (iKeyAt <= i2 || iKeyAt <= i) {
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                        } else if (iKeyAt >= i2 || iKeyAt >= i) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (z3) {
                            list.add(sparseArrayCompat.valueAt(i4));
                            i = iKeyAt;
                            z2 = true;
                            break;
                        }
                        i4 += i5;
                    }
                } else {
                    if (i <= i2) {
                        return list;
                    }
                    sparseArrayCompat = this.mMigrations.get(i);
                    if (sparseArrayCompat == null) {
                        return null;
                    }
                    size = sparseArrayCompat.size();
                    z2 = false;
                    if (z) {
                        i4 = size - 1;
                        i3 = -1;
                    } else {
                        i3 = size;
                        i4 = 0;
                    }
                    while (i4 != i3) {
                        iKeyAt = sparseArrayCompat.keyAt(i4);
                        if (z) {
                            if (iKeyAt <= i2) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                        } else if (iKeyAt >= i2) {
                            z3 = false;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            list.add(sparseArrayCompat.valueAt(i4));
                            i = iKeyAt;
                            z2 = true;
                            break;
                            break;
                        }
                        i4 += i5;
                    }
                }
            } while (z2);
            return null;
        }
    }

    private static boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
