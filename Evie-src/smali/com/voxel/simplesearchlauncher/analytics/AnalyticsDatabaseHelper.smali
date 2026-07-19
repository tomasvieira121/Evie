.class Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;
.super Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;
.source "AnalyticsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;,
        Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;,
        Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final APP_LAUNCH_ARGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AnalyticsDatabaseHelper"


# instance fields
.field private mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "id"

    const-string v1, "type"

    const-string v2, "timestamp"

    const-string v3, "log_data"

    const-string v4, "failures"

    .line 30
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->APP_LAUNCH:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->APP_LAUNCH_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AnalyticsLogsDB"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 52
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private declared-synchronized loadCursorIndexes(Landroid/database/Cursor;)V
    .locals 2

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$1;)V

    const-string v1, "id"

    .line 194
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->idIndex:I

    const-string v1, "type"

    .line 195
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->typeIndex:I

    const-string v1, "log_data"

    .line 196
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->dataIndex:I

    const-string v1, "failures"

    .line 197
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->numFailuresIndex:I

    .line 198
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized deleteLog(I)I
    .locals 5

    monitor-enter p0

    .line 170
    :try_start_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting record from database. ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "AnalyticsLogs"

    const-string v2, "id=?"

    const/4 v3, 0x1

    .line 173
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLogs(IZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 129
    new-array v2, v2, [Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "NOT type=?"

    .line 132
    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->APP_LAUNCH_ARGS:[Ljava/lang/String;

    move-object v4, p2

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v4, v1

    move-object v5, v2

    :goto_0
    const-string v2, "AnalyticsLogs"

    .line 134
    sget-object v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "timestamp"

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, v10

    .line 134
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 138
    sget-object p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->TAG:Ljava/lang/String;

    const-string p2, "Cursor is null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-object v0

    .line 143
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->loadCursorIndexes(Landroid/database/Cursor;)V

    .line 145
    :catch_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 146
    new-instance p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;)V

    .line 147
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->idIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->typeIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    move-result-object v1

    iput-object v1, p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->type:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->dataIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->data:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;->numFailuresIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->numFailures:I

    .line 155
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 158
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 160
    sget-object p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records from analytics logs table."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized insertLog(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 93
    :try_start_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Inserting analytics logs into the database."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    .line 99
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "log_data"

    .line 100
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "AnalyticsLogs"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 95
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating Analytics Logs DB Table."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE AnalyticsLogs ( id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, type TEXT, log_data TEXT, failures INTEGER DEFAULT 0 )"

    .line 66
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 71
    sget-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade(): Database version changed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "ALTER TABLE AnalyticsLogs ADD COLUMN failures INTEGER DEFAULT 0;"

    .line 76
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->mCursorItemIndexes:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$CursorItemIndexes;

    return-void
.end method

.method public declared-synchronized recreateDB(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->close()V

    const-string v0, "AnalyticsLogsDB"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 86
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateLog(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;)V
    .locals 5

    monitor-enter p0

    .line 108
    :try_start_0
    iget v0, p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 109
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    .line 112
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->type:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "log_data"

    .line 113
    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "failures"

    .line 114
    iget v2, p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->numFailures:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "AnalyticsLogs"

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
