package com.evie.models.frequentlyused.room;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenHelper;
import androidx.room.util.TableInfo;
import androidx.sqlite.p001db.SupportSQLiteDatabase;
import androidx.sqlite.p001db.SupportSQLiteOpenHelper;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class AppLaunchDatabase_Impl extends AppLaunchDatabase {
    private volatile AppLaunchDAO _appLaunchDAO;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new RoomOpenHelper.Delegate(1) { // from class: com.evie.models.frequentlyused.room.AppLaunchDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `app_launch_entries` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `package_name` TEXT, `class_name` TEXT)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"e769f0d2567d33c09ab79105291ceff8\")");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `app_launch_entries`");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
                if (AppLaunchDatabase_Impl.this.mCallbacks != null) {
                    int size = AppLaunchDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) AppLaunchDatabase_Impl.this.mCallbacks.get(i)).onCreate(supportSQLiteDatabase);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
                AppLaunchDatabase_Impl.this.mDatabase = supportSQLiteDatabase;
                AppLaunchDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
                if (AppLaunchDatabase_Impl.this.mCallbacks != null) {
                    int size = AppLaunchDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) AppLaunchDatabase_Impl.this.mCallbacks.get(i)).onOpen(supportSQLiteDatabase);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void validateMigration(SupportSQLiteDatabase supportSQLiteDatabase) {
                HashMap map = new HashMap(3);
                map.put("id", new TableInfo.Column("id", "INTEGER", true, 1));
                map.put("package_name", new TableInfo.Column("package_name", "TEXT", false, 0));
                map.put("class_name", new TableInfo.Column("class_name", "TEXT", false, 0));
                TableInfo tableInfo = new TableInfo("app_launch_entries", map, new HashSet(0), new HashSet(0));
                TableInfo tableInfo2 = TableInfo.read(supportSQLiteDatabase, "app_launch_entries");
                if (tableInfo.equals(tableInfo2)) {
                    return;
                }
                throw new IllegalStateException("Migration didn't properly handle app_launch_entries(com.evie.models.frequentlyused.room.AppLaunchEntry).\n Expected:\n" + tableInfo + "\n Found:\n" + tableInfo2);
            }
        }, "e769f0d2567d33c09ab79105291ceff8", "1c67b69cea9398a2712f7a006533d633")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, "app_launch_entries");
    }

    @Override // com.evie.models.frequentlyused.room.AppLaunchDatabase
    public AppLaunchDAO appLaunchDAO() {
        AppLaunchDAO appLaunchDAO;
        if (this._appLaunchDAO != null) {
            return this._appLaunchDAO;
        }
        synchronized (this) {
            if (this._appLaunchDAO == null) {
                this._appLaunchDAO = new AppLaunchDAO_Impl(this);
            }
            appLaunchDAO = this._appLaunchDAO;
        }
        return appLaunchDAO;
    }
}
