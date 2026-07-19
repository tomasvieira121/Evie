package com.voxel.simplesearchlauncher.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class AnalyticsDatabaseHelper extends SQLiteOpenHelper {
    private static final String[] ALL_COLUMNS = {"id", "type", "timestamp", "log_data", "failures"};
    private static final String[] APP_LAUNCH_ARGS = {LogType.APP_LAUNCH.name()};
    private static final String TAG = "AnalyticsDatabaseHelper";
    private CursorItemIndexes mCursorItemIndexes;

    public enum LogType {
        EVENT,
        PEOPLE_ATTR,
        APP_LAUNCH
    }

    public class LogInfo {
        String data;

        /* JADX INFO: renamed from: id */
        int f520id;
        int numFailures;
        LogType type;

        public LogInfo() {
        }
    }

    public AnalyticsDatabaseHelper(Context context) {
        super(context, "AnalyticsLogsDB", null, 3);
    }

    @Override // com.voxel.simplesearchlauncher.analytics.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        Log.d(TAG, "Creating Analytics Logs DB Table.");
        sQLiteDatabase.execSQL("CREATE TABLE AnalyticsLogs ( id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, type TEXT, log_data TEXT, failures INTEGER DEFAULT 0 )");
    }

    @Override // com.voxel.simplesearchlauncher.analytics.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.d(TAG, "onUpgrade(): Database version changed [" + i + " => " + i2 + "]");
        if (i == 2) {
            sQLiteDatabase.execSQL("ALTER TABLE AnalyticsLogs ADD COLUMN failures INTEGER DEFAULT 0;");
        }
        this.mCursorItemIndexes = null;
    }

    public synchronized void recreateDB(Context context) {
        close();
        context.deleteDatabase("AnalyticsLogsDB");
        getWritableDatabase();
    }

    public synchronized void insertLog(LogType logType, String str) {
        Log.d(TAG, "Inserting analytics logs into the database.");
        if (logType != null && !TextUtils.isEmpty(str)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", logType.name());
            contentValues.put("log_data", str);
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.insert("AnalyticsLogs", null, contentValues);
            writableDatabase.close();
        }
    }

    public synchronized void updateLog(LogInfo logInfo) {
        if (logInfo.f520id <= 0) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", logInfo.type.name());
        contentValues.put("log_data", logInfo.data);
        contentValues.put("failures", Integer.valueOf(logInfo.numFailures));
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.update("AnalyticsLogs", contentValues, "id=" + logInfo.f520id, null);
        writableDatabase.close();
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public synchronized List<LogInfo> getLogs(int i, boolean z) {
        String str;
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String[] strArr2 = new String[0];
        if (z) {
            str = null;
            strArr = strArr2;
        } else {
            str = "NOT type=?";
            strArr = APP_LAUNCH_ARGS;
        }
        Cursor cursorQuery = writableDatabase.query("AnalyticsLogs", ALL_COLUMNS, str, strArr, null, null, "timestamp", Integer.toString(i));
        if (cursorQuery == null) {
            Log.w(TAG, "Cursor is null.");
            writableDatabase.close();
            return arrayList;
        }
        loadCursorIndexes(cursorQuery);
        while (cursorQuery.moveToNext()) {
            LogInfo logInfo = new LogInfo();
            logInfo.f520id = cursorQuery.getInt(this.mCursorItemIndexes.idIndex);
            try {
                logInfo.type = LogType.valueOf(cursorQuery.getString(this.mCursorItemIndexes.typeIndex));
                logInfo.data = cursorQuery.getString(this.mCursorItemIndexes.dataIndex);
                logInfo.numFailures = cursorQuery.getInt(this.mCursorItemIndexes.numFailuresIndex);
                arrayList.add(logInfo);
            } catch (IllegalArgumentException unused) {
            }
        }
        cursorQuery.close();
        writableDatabase.close();
        Log.d(TAG, "Read " + arrayList.size() + " records from analytics logs table.");
        return arrayList;
    }

    public synchronized int deleteLog(int i) {
        int iDelete;
        Log.d(TAG, "Deleting record from database. ID: " + i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        iDelete = writableDatabase.delete("AnalyticsLogs", "id=?", new String[]{Integer.toString(i)});
        writableDatabase.close();
        return iDelete;
    }

    private synchronized void loadCursorIndexes(Cursor cursor) {
        if (this.mCursorItemIndexes != null) {
            return;
        }
        CursorItemIndexes cursorItemIndexes = new CursorItemIndexes();
        cursorItemIndexes.idIndex = cursor.getColumnIndexOrThrow("id");
        cursorItemIndexes.typeIndex = cursor.getColumnIndexOrThrow("type");
        cursorItemIndexes.dataIndex = cursor.getColumnIndexOrThrow("log_data");
        cursorItemIndexes.numFailuresIndex = cursor.getColumnIndexOrThrow("failures");
        this.mCursorItemIndexes = cursorItemIndexes;
    }

    private static final class CursorItemIndexes {
        int dataIndex;
        int idIndex;
        int numFailuresIndex;
        int typeIndex;

        private CursorItemIndexes() {
        }
    }
}
