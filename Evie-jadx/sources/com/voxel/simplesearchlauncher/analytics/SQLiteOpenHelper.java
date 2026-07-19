package com.voxel.simplesearchlauncher.analytics;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class SQLiteOpenHelper {
    private static final String TAG = "SQLiteOpenHelper";
    private final Context mContext;
    private SQLiteDatabase mDatabase;
    private final DatabaseErrorHandler mErrorHandler;
    private final SQLiteDatabase.CursorFactory mFactory;
    private boolean mIsInitializing;
    private final String mName;
    private final int mNewVersion;

    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
    }

    public abstract void onCreate(SQLiteDatabase sQLiteDatabase);

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2);

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(context, str, cursorFactory, i, null);
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, DatabaseErrorHandler databaseErrorHandler) {
        if (i < 1) {
            throw new IllegalArgumentException("Version must be >= 1, was " + i);
        }
        this.mContext = context;
        this.mName = str;
        this.mFactory = cursorFactory;
        this.mNewVersion = i;
        this.mErrorHandler = databaseErrorHandler;
    }

    public SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase databaseLocked;
        synchronized (this) {
            databaseLocked = getDatabaseLocked();
        }
        return databaseLocked;
    }

    private SQLiteDatabase getDatabaseLocked() {
        SQLiteDatabase sQLiteDatabase = this.mDatabase;
        if (sQLiteDatabase != null) {
            if (!sQLiteDatabase.isOpen()) {
                this.mDatabase = null;
            } else if (!this.mDatabase.isReadOnly()) {
                return this.mDatabase;
            }
        }
        if (this.mIsInitializing) {
            throw new IllegalStateException("getDatabase called recursively");
        }
        SQLiteDatabase sQLiteDatabaseOpenDatabase = this.mDatabase;
        try {
            this.mIsInitializing = true;
            if (sQLiteDatabaseOpenDatabase == null && this.mName == null) {
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.create(null);
            } else if (sQLiteDatabaseOpenDatabase == null) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(validateFilePath(this.mContext.getDatabasePath(this.mName), true).getPath(), this.mFactory, 268435472, this.mErrorHandler);
                } catch (SQLiteException e) {
                    throw e;
                }
            }
            onConfigure(sQLiteDatabaseOpenDatabase);
            int version = sQLiteDatabaseOpenDatabase.getVersion();
            if (version != this.mNewVersion) {
                sQLiteDatabaseOpenDatabase.beginTransaction();
                try {
                    if (version == 0) {
                        onCreate(sQLiteDatabaseOpenDatabase);
                    } else if (version > this.mNewVersion) {
                        onDowngrade(sQLiteDatabaseOpenDatabase, version, this.mNewVersion);
                    } else {
                        onUpgrade(sQLiteDatabaseOpenDatabase, version, this.mNewVersion);
                    }
                    sQLiteDatabaseOpenDatabase.setVersion(this.mNewVersion);
                    sQLiteDatabaseOpenDatabase.setTransactionSuccessful();
                    sQLiteDatabaseOpenDatabase.endTransaction();
                } catch (Throwable th) {
                    sQLiteDatabaseOpenDatabase.endTransaction();
                    throw th;
                }
            }
            onOpen(sQLiteDatabaseOpenDatabase);
            this.mDatabase = sQLiteDatabaseOpenDatabase;
            this.mIsInitializing = false;
            if (sQLiteDatabaseOpenDatabase != null && sQLiteDatabaseOpenDatabase != this.mDatabase) {
                sQLiteDatabaseOpenDatabase.close();
            }
            return sQLiteDatabaseOpenDatabase;
        } catch (Throwable th2) {
            this.mIsInitializing = false;
            if (sQLiteDatabaseOpenDatabase != null && sQLiteDatabaseOpenDatabase != this.mDatabase) {
                sQLiteDatabaseOpenDatabase.close();
            }
            throw th2;
        }
    }

    private File validateFilePath(File file, boolean z) {
        File parentFile = file.getParentFile();
        if (!z || parentFile.isDirectory() || parentFile.mkdir()) {
            return file;
        }
        throw new RuntimeException("issue when creating database folder?!");
    }

    public synchronized void close() {
        if (this.mIsInitializing) {
            throw new IllegalStateException("Closed during initialization");
        }
        if (this.mDatabase != null && this.mDatabase.isOpen()) {
            this.mDatabase.close();
            this.mDatabase = null;
        }
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
    }
}
