.class public abstract Lcom/voxel/launcher3/util/SQLiteCacheHelper;
.super Ljava/lang/Object;
.source "SQLiteCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;
    }
.end annotation


# instance fields
.field private mIgnoreWrites:Z

.field private final mOpenHelper:Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p4, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    .line 26
    new-instance p4, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;-><init>(Lcom/voxel/launcher3/util/SQLiteCacheHelper;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    .line 28
    iget-object p1, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->access$000(Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/util/SQLiteCacheHelper;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method private onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V
    .locals 2

    const-string v0, "SQLiteCacheHelper"

    const-string v1, "Disk full, all write operations will be ignored"

    .line 82
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    return-void
.end method


# virtual methods
.method public insertOrReplace(Landroid/content/ContentValues;)V
    .locals 4

    .line 68
    iget-boolean v0, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mIgnoreWrites:Z

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SQLiteCacheHelper"

    const-string v1, "Ignoring sqlite exception"

    .line 77
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 75
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->onDiskFull(Landroid/database/sqlite/SQLiteFullException;)V

    :goto_0
    return-void
.end method

.method protected abstract onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 90
    iget-object v0, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mOpenHelper:Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/util/SQLiteCacheHelper$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/util/SQLiteCacheHelper;->mTableName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
