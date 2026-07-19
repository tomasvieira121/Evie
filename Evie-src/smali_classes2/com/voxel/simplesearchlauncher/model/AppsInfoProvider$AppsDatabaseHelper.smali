.class Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;
.super Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;
.source "AppsInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsDatabaseHelper"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;Landroid/content/Context;)V
    .locals 2

    .line 228
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    const-string p1, "APPS_INFO_DB"

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 229
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 213
    const-class p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    .line 220
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private addIconColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 348
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "ALTER TABLE APPS_INFO ADD COLUMN icon BLOB;"

    .line 350
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 354
    :try_start_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 358
    throw v0
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 2

    .line 363
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 365
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE APPS_INFO ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 369
    :try_start_1
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    .line 372
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p2

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 373
    throw p2
.end method

.method private addTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    .line 378
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 380
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE APPS_INFO ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT;"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 384
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    .line 387
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p2

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 388
    throw p2
.end method

.method private applyingBatch()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createEmptyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating Apps Info DB Table."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE APPS_INFO ( _ID TEXT PRIMARY KEY, APP_LABEL TEXT, PACKAGE_NAME TEXT, ACTIVITY_NAME TEXT, APP_VERSION INTEGER, hidden INTEGER NOT NULL DEFAULT 0, icon BLOB, first_install_time INTEGER NOT NULL DEFAULT 0, opened INTEGER NOT NULL DEFAULT 0, label_override TEXT )"

    .line 294
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS APPS_INFO"

    .line 276
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 399
    :try_start_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 401
    new-array v4, v2, [Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 410
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentProviderOperation;

    if-lez v5, :cond_0

    .line 411
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0xfa0

    .line 413
    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v8

    .line 418
    :cond_0
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    .line 422
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    invoke-virtual {v7, v8, v4, v5}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v4, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 424
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    invoke-static {v9}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v6, :cond_3

    .line 435
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->dispatchChange(ZLandroid/net/Uri;)V

    :cond_3
    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v6, 0x0

    .line 431
    :goto_2
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v6, :cond_4

    .line 435
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->dispatchChange(ZLandroid/net/Uri;)V

    .line 437
    :cond_4
    throw p1

    return-void
.end method

.method public declared-synchronized bulkInsert([Landroid/content/ContentValues;)I
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 483
    monitor-exit p0

    return v0

    .line 488
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    :try_start_1
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    const-string v6, "APPS_INFO"

    const/4 v7, 0x0

    .line 493
    invoke-virtual {v1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 494
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 504
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v4, :cond_3

    .line 508
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->dispatchChange(ZLandroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 510
    :cond_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    .line 503
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 504
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 505
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 515
    :try_start_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->access$000()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 516
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleting specific record: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "_ID=?"

    const/4 p1, 0x1

    .line 522
    new-array p3, p1, [Ljava/lang/String;

    aput-object v0, p3, v1

    goto :goto_1

    .line 524
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting based on provided selection/selectionArgs [selection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    array-length v2, p3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->applyingBatch()Z

    move-result p1

    .line 529
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "APPS_INFO"

    .line 530
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 532
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of rows deleted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_3

    if-nez p1, :cond_3

    .line 536
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->dispatchChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_3
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insert(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 460
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "_ID"

    .line 462
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 463
    monitor-exit p0

    return-object v0

    .line 465
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->applyingBatch()Z

    move-result v2

    .line 466
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "APPS_INFO"

    .line 467
    invoke-virtual {v3, v4, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    if-nez v2, :cond_2

    .line 472
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 473
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->dispatchChange(ZLandroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :cond_2
    monitor-exit p0

    return-object v1

    .line 477
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->createEmptyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->createEmptyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

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

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string v2, "hidden"

    .line 304
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 v2, 0x3

    if-ne p2, p3, :cond_1

    .line 310
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->addIconColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    :cond_1
    const/4 p3, 0x4

    if-ne p2, v2, :cond_2

    const-string v2, "first_install_time"

    .line 316
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p2, 0x4

    :cond_2
    const/4 v2, 0x5

    if-ne p2, p3, :cond_3

    const-string p3, "opened"

    .line 322
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x5

    :cond_3
    const/4 p3, 0x6

    if-ne p2, v2, :cond_4

    const-string v0, "label_override"

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->addTextColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x6

    :cond_4
    if-eq p2, p3, :cond_5

    .line 334
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->createEmptyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    return-void
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 443
    :try_start_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->access$000()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_0
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string p1, "APPS_INFO"

    .line 448
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_ID="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 545
    :try_start_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->access$000()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 546
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 550
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Updating specific record: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "_ID=?"

    const/4 p1, 0x1

    .line 552
    new-array p4, p1, [Ljava/lang/String;

    aput-object v0, p4, v1

    goto :goto_1

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating based on provided selection/selectionArgs [selection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    array-length v2, p4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->applyingBatch()Z

    move-result p1

    .line 559
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "APPS_INFO"

    .line 560
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 562
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of rows affected: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_3

    if-nez p1, :cond_3

    .line 566
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider$AppsDatabaseHelper;->this$0:Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->getContentUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoProvider;->dispatchChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :cond_3
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
