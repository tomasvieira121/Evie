package com.evie.models.frequentlyused.room;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.sqlite.p001db.SupportSQLiteStatement;
import io.reactivex.Maybe;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class AppLaunchDAO_Impl implements AppLaunchDAO {
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter __deletionAdapterOfAppLaunchEntry;
    private final EntityInsertionAdapter __insertionAdapterOfAppLaunchEntry;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAllOlderThanLimit;

    public AppLaunchDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfAppLaunchEntry = new EntityInsertionAdapter<AppLaunchEntry>(roomDatabase) { // from class: com.evie.models.frequentlyused.room.AppLaunchDAO_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR ABORT INTO `app_launch_entries`(`id`,`package_name`,`class_name`) VALUES (nullif(?, 0),?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, AppLaunchEntry appLaunchEntry) {
                supportSQLiteStatement.bindLong(1, appLaunchEntry.getId());
                if (appLaunchEntry.getPackageName() == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, appLaunchEntry.getPackageName());
                }
                if (appLaunchEntry.getClassName() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, appLaunchEntry.getClassName());
                }
            }
        };
        this.__deletionAdapterOfAppLaunchEntry = new EntityDeletionOrUpdateAdapter<AppLaunchEntry>(roomDatabase) { // from class: com.evie.models.frequentlyused.room.AppLaunchDAO_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `app_launch_entries` WHERE `id` = ?";
            }
        };
        this.__preparedStmtOfDeleteAllOlderThanLimit = new SharedSQLiteStatement(roomDatabase) { // from class: com.evie.models.frequentlyused.room.AppLaunchDAO_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM app_launch_entries WHERE id < ?";
            }
        };
    }

    @Override // com.evie.models.frequentlyused.room.AppLaunchDAO
    public void insertAppLaunchEntry(AppLaunchEntry appLaunchEntry) {
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfAppLaunchEntry.insert(appLaunchEntry);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.evie.models.frequentlyused.room.AppLaunchDAO
    public int deleteAllOlderThanLimit(long j) {
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteAllOlderThanLimit.acquire();
        this.__db.beginTransaction();
        try {
            supportSQLiteStatementAcquire.bindLong(1, j);
            int iExecuteUpdateDelete = supportSQLiteStatementAcquire.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return iExecuteUpdateDelete;
        } finally {
            this.__db.endTransaction();
            this.__preparedStmtOfDeleteAllOlderThanLimit.release(supportSQLiteStatementAcquire);
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.evie.models.frequentlyused.room.AppLaunchDAO
    public List<AppLaunchEntry> getAllEntries() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM app_launch_entries ORDER BY id ASC", 0);
        Cursor cursorQuery = this.__db.query(roomSQLiteQueryAcquire);
        try {
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("id");
            int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("package_name");
            int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("class_name");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                AppLaunchEntry appLaunchEntry = new AppLaunchEntry();
                appLaunchEntry.setId(cursorQuery.getInt(columnIndexOrThrow));
                appLaunchEntry.setPackageName(cursorQuery.getString(columnIndexOrThrow2));
                appLaunchEntry.setClassName(cursorQuery.getString(columnIndexOrThrow3));
                arrayList.add(appLaunchEntry);
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th) {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            throw th;
        }
    }

    @Override // com.evie.models.frequentlyused.room.AppLaunchDAO
    public Maybe<AppLaunchEntry> getMostRecentEntry() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM app_launch_entries ORDER BY id DESC LIMIT 1", 0);
        return Maybe.fromCallable(new Callable<AppLaunchEntry>() { // from class: com.evie.models.frequentlyused.room.AppLaunchDAO_Impl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AppLaunchEntry call() throws Exception {
                AppLaunchEntry appLaunchEntry;
                Cursor cursorQuery = AppLaunchDAO_Impl.this.__db.query(roomSQLiteQueryAcquire);
                try {
                    int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("id");
                    int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("package_name");
                    int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("class_name");
                    if (cursorQuery.moveToFirst()) {
                        appLaunchEntry = new AppLaunchEntry();
                        appLaunchEntry.setId(cursorQuery.getInt(columnIndexOrThrow));
                        appLaunchEntry.setPackageName(cursorQuery.getString(columnIndexOrThrow2));
                        appLaunchEntry.setClassName(cursorQuery.getString(columnIndexOrThrow3));
                    } else {
                        appLaunchEntry = null;
                    }
                    return appLaunchEntry;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }
}
