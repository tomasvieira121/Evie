.class public abstract Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteOpenHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p4, v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 87
    iput p4, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mNewVersion:I

    .line 88
    iput-object p5, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Version must be >= 1, was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDatabaseLocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 145
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 151
    :try_start_0
    iput-boolean v3, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_2

    .line 153
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 154
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 157
    :try_start_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->validateFilePath(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const v4, 0x10000010

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 165
    :try_start_2
    throw v1

    .line 169
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 172
    iget v3, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mNewVersion:I

    if-eq v1, v3, :cond_6

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_4

    .line 177
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 179
    :cond_4
    iget v3, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mNewVersion:I

    if-le v1, v3, :cond_5

    .line 180
    iget v3, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2

    .line 182
    :cond_5
    iget v3, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 185
    :goto_2
    iget v1, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 189
    throw v1

    .line 192
    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_7

    .line 198
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v1, :cond_7

    .line 199
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    return-object v0

    :catchall_1
    move-exception v1

    .line 197
    iput-boolean v2, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_8

    .line 198
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v2, :cond_8

    .line 199
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 201
    :cond_8
    throw v1

    .line 146
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateFilePath(Ljava/io/File;Z)Ljava/io/File;
    .locals 1

    .line 205
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "issue when creating database folder?!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;->getDatabaseLocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 296
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t downgrade database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
