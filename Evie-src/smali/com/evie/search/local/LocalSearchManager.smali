.class public Lcom/evie/search/local/LocalSearchManager;
.super Ljava/lang/Object;
.source "LocalSearchManager.java"


# static fields
.field private static initialized:Z = false

.field private static instance:Lcom/evie/search/local/LocalSearchManager;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContactManager:Lcom/evie/search/local/ContactManager;

.field private mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

.field private mMaxRecents:I

.field private mNeedsContactUpdate:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/evie/search/model/RecentItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchSettings:Lcom/evie/common/SearchSettings;

.field private mShortcutSizeInPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/evie/search/local/SearchDbHelper;

    invoke-direct {v0, p1}, Lcom/evie/search/local/SearchDbHelper;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lcom/evie/search/local/SearchDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "Search DB size: %f MB"

    const/4 v1, 0x1

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {p1}, Lcom/evie/common/SearchSettings;->getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mSearchSettings:Lcom/evie/common/SearchSettings;

    .line 94
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {v0}, Lcom/evie/common/SearchSettings;->getMaxRecents()I

    move-result v0

    iput v0, p0, Lcom/evie/search/local/LocalSearchManager;->mMaxRecents:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 97
    invoke-static {p1}, Lcom/evie/search/local/ContactManager;->getInstance(Landroid/content/Context;)Lcom/evie/search/local/ContactManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mContactManager:Lcom/evie/search/local/ContactManager;

    .line 98
    invoke-static {p1}, Lcom/evie/search/local/LocalAppsManager;->getInstance(Landroid/content/Context;)Lcom/evie/search/local/LocalAppsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    .line 99
    invoke-virtual {p0}, Lcom/evie/search/local/LocalSearchManager;->getRecentItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 101
    invoke-virtual {p0}, Lcom/evie/search/local/LocalSearchManager;->decayUsageIfNeeded()V

    .line 102
    invoke-direct {p0, p1}, Lcom/evie/search/local/LocalSearchManager;->setUsageDecayAlarm(Landroid/content/Context;)V

    const-string v0, "activity"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 105
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    iput v0, p0, Lcom/evie/search/local/LocalSearchManager;->mShortcutSizeInPixels:I

    if-eqz p2, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/evie/search/local/LocalSearchManager;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private addToRecents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 580
    iget-object v2, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "places:"

    .line 583
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "\\|"

    .line 584
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    .line 585
    iget-object v5, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "recents"

    const-string v7, "link LIKE ?"

    new-array v3, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|%"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v5, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "recents"

    const-string v6, "link=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 596
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "last_used"

    .line 597
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "link"

    .line 598
    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    .line 599
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "item_type"

    .line 600
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "image_url"

    .line 601
    invoke-virtual {v2, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "recents"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 608
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 609
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 611
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p0}, Lcom/evie/search/local/LocalSearchManager;->getRecentItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 613
    invoke-direct {p0}, Lcom/evie/search/local/LocalSearchManager;->trimRecents()V

    return-void
.end method

.method private getAppImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/local/LocalSearchManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 800
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 797
    invoke-static {p1, p2, v1}, Lcom/evie/common/HybridNetworkFetcherCommon;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 801
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string v1, "Error retrieving package info for %s/%s"

    const/4 v2, 0x2

    .line 804
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/evie/search/local/LocalSearchManager;
    .locals 2

    const-class v0, Lcom/evie/search/local/LocalSearchManager;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/evie/search/local/LocalSearchManager;->instance:Lcom/evie/search/local/LocalSearchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lcom/evie/search/local/LocalSearchManager;
    .locals 2

    const-class v0, Lcom/evie/search/local/LocalSearchManager;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/evie/search/local/LocalSearchManager;->instance:Lcom/evie/search/local/LocalSearchManager;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/evie/search/local/LocalSearchManager;

    invoke-direct {v1, p0, p1}, Lcom/evie/search/local/LocalSearchManager;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/evie/search/local/LocalSearchManager;->instance:Lcom/evie/search/local/LocalSearchManager;

    :cond_0
    if-eqz p1, :cond_1

    .line 81
    sget-boolean p1, Lcom/evie/search/local/LocalSearchManager;->initialized:Z

    if-nez p1, :cond_1

    .line 82
    sget-object p1, Lcom/evie/search/local/LocalSearchManager;->instance:Lcom/evie/search/local/LocalSearchManager;

    invoke-direct {p1, p0}, Lcom/evie/search/local/LocalSearchManager;->init(Landroid/content/Context;)V

    .line 85
    :cond_1
    sget-object p0, Lcom/evie/search/local/LocalSearchManager;->instance:Lcom/evie/search/local/LocalSearchManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    sput-boolean v0, Lcom/evie/search/local/LocalSearchManager;->initialized:Z

    .line 114
    invoke-direct {p0, p1}, Lcom/evie/search/local/LocalSearchManager;->updateSettings(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0}, Lcom/evie/search/local/LocalSearchManager;->updateAllApps()V

    .line 116
    invoke-direct {p0, p1}, Lcom/evie/search/local/LocalSearchManager;->initContacts(Landroid/content/Context;)V

    return-void
.end method

.method private initContacts(Landroid/content/Context;)V
    .locals 2

    const-string v0, "android.permission.READ_CONTACTS"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/evie/search/local/LocalSearchManager;->mNeedsContactUpdate:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/evie/search/local/LocalSearchManager;->mNeedsContactUpdate:Z

    .line 141
    new-instance v0, Lcom/evie/search/local/ContactUpdater;

    iget-object v1, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p1}, Lcom/evie/search/local/ContactUpdater;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$search$0(Lcom/evie/search/model/LocalSearchItem;Lcom/evie/search/model/LocalSearchItem;)I
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v0

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result p0

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static synthetic lambda$updateAllApps$2(Lcom/evie/search/local/LocalSearchManager;)V
    .locals 8

    .line 349
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "item"

    const-string v2, "_id"

    const-string v3, "link"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "type=?"

    const-string v4, "LOCAL_APP"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/evie/search/local/LocalSearchManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v1}, Lcom/evie/search/local/LocalAppsManager;->getAllApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/evie/search/local/LocalSearchManager;->updateApps(Landroid/database/Cursor;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$updateAppPackage$3(Lcom/evie/search/local/LocalSearchManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    .line 367
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "item"

    const-string v2, "_id"

    const-string v3, "link"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "link LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|%"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/evie/search/local/LocalSearchManager;->updateApps(Landroid/database/Cursor;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$updateRecents$4(Lcom/evie/search/local/LocalSearchManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$updateSettings$1(Lcom/evie/search/local/LocalSearchManager;Landroid/content/Context;)V
    .locals 12

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 307
    :try_start_0
    invoke-static {p1}, Lcom/evie/search/local/SettingsDeeplinkManager;->getAvailableItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 310
    iget-object v4, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "item"

    const-string v6, "_id"

    const-string v7, "link"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "type=?"

    const-string v8, "SETTINGS_DEEPLINK"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 317
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    const-string v7, "link"

    .line 318
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 319
    new-instance v9, Lcom/evie/search/model/LocalSearchItem;

    invoke-direct {v9, v7, v2, v2, v2}, Lcom/evie/search/model/LocalSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 320
    invoke-interface {p1, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_0

    .line 322
    invoke-virtual {p0, v7, v8}, Lcom/evie/search/local/LocalSearchManager;->delete(Ljava/lang/String;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-interface {p1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 329
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evie/search/model/LocalSearchItem;

    .line 330
    invoke-virtual {p0, v7}, Lcom/evie/search/local/LocalSearchManager;->insert(Lcom/evie/search/model/LocalSearchItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 335
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string p1, "Found %d settings. Deleted: %d, Inserted: %d. Time: %d ms"

    const/4 v4, 0x4

    .line 339
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v8

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p1, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_4

    .line 335
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_4
    throw p1

    return-void
.end method

.method private setUsageDecayAlarm(Landroid/content/Context;)V
    .locals 8

    const-string v0, "alarm"

    .line 719
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evie/search/local/LocalSearchBroadcastReceiver;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.evie.search.DECAY_USAGE_IF_NEEDED"

    .line 722
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 723
    invoke-static {p1, v2, v0, v2}, Lis/shortcut/compat/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 727
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v2, 0x3

    const-wide/32 v5, 0x5265c00

    .line 725
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private trimRecents()V
    .locals 10

    .line 621
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recents"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "recents"

    const-string v3, "last_used"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "last_used"

    const/16 v9, 0x14

    .line 629
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 624
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "last_used"

    .line 632
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 633
    iget-object v2, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "recents"

    const-string v4, "last_used<?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 636
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 633
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    .line 640
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private updateAllApps()V
    .locals 1

    .line 348
    new-instance v0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l0czAiC29xUUMfec7mgrClprEQ4;

    invoke-direct {v0, p0}, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l0czAiC29xUUMfec7mgrClprEQ4;-><init>(Lcom/evie/search/local/LocalSearchManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateApps(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Lcom/evie/search/model/LocalSearchItem;",
            ">;)V"
        }
    .end annotation

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 387
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 389
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const-string v5, "_id"

    .line 390
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v5, "link"

    .line 391
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    new-instance v9, Lcom/evie/search/model/LocalSearchItem;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v10, v10}, Lcom/evie/search/model/LocalSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 394
    invoke-interface {p2, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_0

    .line 396
    invoke-virtual {p0, v5, v6}, Lcom/evie/search/local/LocalSearchManager;->delete(Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    :cond_0
    iget-object v10, p0, Lcom/evie/search/local/LocalSearchManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v10, v5}, Lcom/evie/search/local/LocalAppsManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 400
    iget-object v11, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "appname"

    invoke-static {v11, v7, v8, v12, v10}, Lcom/evie/search/local/LocalSearchUtil;->keywordMatches(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 401
    invoke-interface {p2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    .line 404
    invoke-virtual {p0, v5, v10}, Lcom/evie/search/local/LocalSearchManager;->updateRecentItemLabel(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, v5, v3}, Lcom/evie/search/local/LocalSearchManager;->delete(Ljava/lang/String;Z)V

    goto :goto_1

    .line 407
    :cond_2
    invoke-virtual {p0, v5, v6}, Lcom/evie/search/local/LocalSearchManager;->delete(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 414
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evie/search/model/LocalSearchItem;

    .line 415
    invoke-virtual {p0, v7}, Lcom/evie/search/local/LocalSearchManager;->insert(Lcom/evie/search/model/LocalSearchItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 420
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string p1, "Found %d apps. Deleted: %d, Inserted: %d. Time: %d ms"

    const/4 p2, 0x4

    .line 424
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v6

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    .line 420
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_6
    throw p2

    return-void
.end method

.method private updateSettings(Landroid/content/Context;)V
    .locals 1

    .line 299
    new-instance v0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$PzkgqbvA9jqXDRiPhqBYaew46xA;

    invoke-direct {v0, p0, p1}, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$PzkgqbvA9jqXDRiPhqBYaew46xA;-><init>(Lcom/evie/search/local/LocalSearchManager;Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearRecentItems()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recents"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method decayUsageIfNeeded()V
    .locals 2

    .line 706
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/evie/search/local/LocalSearchManager;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {v1}, Lcom/evie/common/SearchSettings;->getLastDecay()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/evie/search/local/LocalSearchManager;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {v1, v0}, Lcom/evie/common/SearchSettings;->setLastDecay(I)V

    .line 709
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE \"item\" SET \"usage\"=ROUND((\"usage\"*0.9)+0.5)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method delete(Ljava/lang/String;Z)V
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "item"

    const-string v3, "link =?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 453
    iget-object p2, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "recents"

    const-string v2, "link =?"

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p0}, Lcom/evie/search/local/LocalSearchManager;->getRecentItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "Delete called on closed or null database."

    .line 441
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method deleteAppPackage(Ljava/lang/String;)V
    .locals 8

    .line 468
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "item"

    const-string v3, "link LIKE ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "recents"

    const-string v3, "link LIKE ?"

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|%"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 485
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p0}, Lcom/evie/search/local/LocalSearchManager;->getRecentItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "DeleteAppPackage called on closed or null database."

    .line 469
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAppImageUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 791
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 792
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/evie/search/local/LocalSearchManager;->getAppImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageUrl(Lcom/evie/search/model/LocalSearchItem;)Ljava/lang/String;
    .locals 7

    .line 735
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3f903c7e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    const v2, -0x94fb8ed

    if-eq v1, v2, :cond_2

    const v2, 0x5e55770d

    if-eq v1, v2, :cond_1

    const v2, 0x6382b000

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "LOCAL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "WEB_AUTOCOMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v1, "SETTINGS_DEEPLINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unrecognized item type: %s"

    .line 784
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 781
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "res:///"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/evie/search/R$drawable;->autocomplete_shortcut_icon:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 751
    :pswitch_1
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "|"

    .line 754
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\\|"

    .line 755
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 756
    aget-object v2, v0, v4

    .line 757
    aget-object v0, v0, v3

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    .line 759
    :cond_5
    iget-object v2, p0, Lcom/evie/search/local/LocalSearchManager;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 760
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_6

    .line 761
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 762
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 770
    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/evie/search/local/LocalSearchManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 773
    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 770
    invoke-static {v0, v2, v5}, Lcom/evie/common/HybridNetworkFetcherCommon;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string v0, "Error retrieving package info for %s"

    .line 776
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const-string p1, "Error resolving intent action %s"

    .line 764
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 741
    :pswitch_2
    :try_start_1
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\|"

    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 743
    aget-object v2, v0, v4

    aget-object v0, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/evie/search/local/LocalSearchManager;->getAppImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string v0, "Error retrieving package info for %s"

    .line 746
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 737
    :pswitch_3
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mContactManager:Lcom/evie/search/local/ContactManager;

    invoke-virtual {v0, p1}, Lcom/evie/search/local/ContactManager;->getImageUrl(Lcom/evie/search/model/LocalSearchItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecentItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/search/model/RecentItem;",
            ">;"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 669
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 673
    :try_start_0
    iget-object v2, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "recents"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "last_used DESC"

    iget v10, p0, Lcom/evie/search/local/LocalSearchManager;->mMaxRecents:I

    .line 677
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 673
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 679
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    new-instance v2, Lcom/evie/search/model/RecentItem;

    const-string v3, "link"

    .line 681
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "label"

    .line 682
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "item_type"

    .line 683
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "image_url"

    .line 684
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/evie/search/model/RecentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 688
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_3
    throw v0

    :cond_4
    :goto_1
    const-string v0, "GetRecentItems called with closed or null database."

    const/4 v1, 0x0

    .line 665
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRecentSubject()Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/evie/search/model/RecentItem;",
            ">;>;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public initContactsIfNeeded(Landroid/content/Context;)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/evie/search/local/LocalSearchManager;->mNeedsContactUpdate:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/evie/search/local/LocalSearchManager;->initContacts(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method insert(Lcom/evie/search/model/LocalSearchItem;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/evie/search/local/LocalSearchUtil;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/evie/search/model/LocalSearchItem;F)V

    return-void
.end method

.method public itemAccessed(Lcom/evie/search/local/LocalSearchSubitem;)V
    .locals 4

    .line 532
    invoke-virtual {p1}, Lcom/evie/search/local/LocalSearchSubitem;->getParent()Lcom/evie/search/model/LocalSearchItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 534
    invoke-virtual {p0, v0, v1}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/model/LocalSearchItem;Z)V

    .line 536
    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {p0, v0}, Lcom/evie/search/local/LocalSearchManager;->getImageUrl(Lcom/evie/search/model/LocalSearchItem;)Ljava/lang/String;

    move-result-object v1

    .line 540
    :cond_0
    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CONTACT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 541
    invoke-virtual {p1}, Lcom/evie/search/local/LocalSearchSubitem;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/evie/search/local/LocalSearchManager;->mShortcutSizeInPixels:I

    invoke-static {v1, v2, v0, v3}, Lcom/evie/common/BadgedIcons;->getBadgedIconUrl(Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {p1}, Lcom/evie/search/local/LocalSearchSubitem;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/search/local/LocalSearchSubitem;->getRecentsLabel()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ACTION_CONTACT"

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/evie/search/local/LocalSearchManager;->addToRecents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public itemAccessed(Lcom/evie/search/model/LocalSearchItem;Z)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE \"item\" SET \"usage\"=\"usage\"+1 WHERE \"link\"=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/evie/search/local/LocalSearchManager;->addToRecents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public itemAccessed(Lcom/evie/search/model/RecentItem;)V
    .locals 4

    .line 558
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3f903c7e

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x94fb8ed

    if-eq v1, v2, :cond_2

    const v2, 0x5e55770d

    if-eq v1, v2, :cond_1

    const v2, 0x6382b000

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "LOCAL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "WEB_AUTOCOMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v1, "SETTINGS_DEEPLINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 572
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/evie/search/local/LocalSearchManager;->addToRecents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {v0}, Lcom/evie/common/SearchSettings;->getRecentsIncludeWebResults()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 567
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/evie/search/local/LocalSearchManager;->addToRecents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 562
    :pswitch_1
    new-instance v0, Lcom/evie/search/model/LocalSearchItem;

    invoke-direct {v0, p1}, Lcom/evie/search/model/LocalSearchItem;-><init>(Lcom/evie/search/model/RecentItem;)V

    invoke-virtual {p0, v0, v3}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/model/LocalSearchItem;Z)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public itemAccessed(Lcom/evie/search/model/RemoteSearchItem;)V
    .locals 4

    const-string v0, "||"

    .line 547
    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getItemType()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/evie/search/R$dimen;->search_item_image_dimension:I

    invoke-virtual {p1, v3}, Lcom/evie/search/model/RemoteSearchItem;->getImageUrl(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/evie/search/local/LocalSearchManager;->addToRecents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public itemAccessed(Lcom/evie/search/model/WebSearchItem;)V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {v0}, Lcom/evie/common/SearchSettings;->getRecentsIncludeWebResults()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/evie/search/model/WebSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WEB_AUTOCOMPLETE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res:///"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/evie/search/R$drawable;->autocomplete_shortcut_icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/evie/search/local/LocalSearchManager;->addToRecents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recordAppAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 512
    new-instance v0, Lcom/evie/search/model/LocalSearchItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LOCAL_APP"

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1, p2}, Lcom/evie/search/model/LocalSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, v0}, Lcom/evie/search/local/LocalSearchManager;->getImageUrl(Lcom/evie/search/model/LocalSearchItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/evie/search/model/LocalSearchItem;->setImageUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 518
    invoke-virtual {p0, v0, p1}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/model/LocalSearchItem;Z)V

    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/search/model/LocalSearchItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v2, v1, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    return-object v0

    .line 158
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/evie/search/local/LocalSearchUtil;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/evie/search/local/LocalSearchUtil;->tokenizeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 163
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move-object v5, v0

    const/4 v0, 0x0

    .line 165
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_14

    .line 166
    aget-object v6, v2, v0

    .line 169
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-le v8, v9, :cond_2

    .line 170
    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v6

    .line 176
    :goto_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 177
    invoke-static {v8}, Lcom/evie/search/local/LocalSearchUtil;->maxDistance(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v9, v8, v10, v11}, Lcom/evie/search/local/LocalSearchUtil;->addKeywordWithDeletions(Ljava/util/Set;Ljava/lang/String;IZ)V

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "SELECT * FROM search JOIN item ON item_id=item._id WHERE search_keyword IN ("

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 185
    :goto_2
    array-length v12, v9

    if-ge v10, v12, :cond_4

    const-string v12, "\'"

    .line 186
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    aget-object v12, v9, v10

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    array-length v12, v9

    sub-int/2addr v12, v11

    if-ge v10, v12, :cond_3

    const-string v12, "\',"

    .line 189
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v12, "\')"

    .line 191
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 195
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 200
    :try_start_0
    iget-object v12, v1, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 201
    invoke-static {v6}, Lcom/evie/search/local/LocalSearchUtil;->maxDistance(Ljava/lang/String;)I

    move-result v8

    .line 203
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "match_keyword"

    .line 204
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 205
    array-length v13, v2

    sub-int/2addr v13, v11

    if-ne v0, v13, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    invoke-static {v6, v12, v13}, Lcom/evie/search/local/LocalSearchUtil;->distance(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v13

    if-le v13, v8, :cond_6

    goto :goto_4

    .line 213
    :cond_6
    new-instance v15, Lcom/evie/search/model/LocalSearchItem;

    const-string v14, "link"

    .line 214
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v14, "label"

    .line 215
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v14, "note"

    .line 216
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const-string v14, "type"

    .line 218
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v14, v15

    move-object v11, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Lcom/evie/search/model/LocalSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 220
    invoke-interface {v9, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_c

    const-string v14, "usage"

    .line 223
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    .line 225
    invoke-virtual {v11}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v7, 0x5e55770d

    if-eq v4, v7, :cond_8

    const v7, 0x6382b000

    if-eq v4, v7, :cond_7

    goto :goto_6

    :cond_7
    const-string v4, "CONTACT"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    :cond_8
    const-string v4, "LOCAL_APP"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v16, 0x0

    :cond_9
    :goto_6
    packed-switch v16, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_7

    :pswitch_0
    const/4 v4, 0x0

    cmpl-float v7, v14, v4

    if-nez v7, :cond_a

    if-nez v0, :cond_a

    const/4 v4, 0x0

    .line 234
    invoke-static {v6, v12, v4}, Lcom/evie/search/local/LocalSearchUtil;->distance(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v7

    if-le v7, v8, :cond_b

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    :pswitch_1
    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v14, v7

    .line 239
    :cond_b
    :goto_7
    invoke-virtual {v11}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v3, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v9, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 245
    :cond_c
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/evie/search/model/LocalSearchItem;

    invoke-static {v7, v6, v13}, Lcom/evie/search/local/LocalSearchUtil;->updateRank(Lcom/evie/search/model/LocalSearchItem;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_d
    if-eqz v10, :cond_e

    .line 249
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    if-nez v0, :cond_10

    .line 255
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evie/search/model/LocalSearchItem;

    .line 256
    invoke-virtual {v6}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v7

    array-length v8, v2

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/evie/search/model/LocalSearchItem;->setRank(F)V

    goto :goto_8

    :cond_f
    move-object v5, v9

    goto :goto_a

    .line 259
    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/evie/search/model/LocalSearchItem;

    .line 261
    invoke-interface {v5, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_11

    goto :goto_9

    .line 265
    :cond_11
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/evie/search/model/LocalSearchItem;

    .line 266
    invoke-virtual {v9}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v10

    invoke-virtual {v8}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v8

    array-length v11, v2

    int-to-float v11, v11

    div-float/2addr v8, v11

    add-float/2addr v10, v8

    invoke-virtual {v9, v10}, Lcom/evie/search/model/LocalSearchItem;->setRank(F)V

    .line 267
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    move-object v5, v6

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_13

    .line 249
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_13
    throw v0

    .line 274
    :cond_14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/search/model/LocalSearchItem;

    .line 275
    invoke-virtual {v4}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    cmpl-float v0, v2, v4

    if-lez v0, :cond_16

    .line 278
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/search/model/LocalSearchItem;

    .line 279
    invoke-virtual {v4}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v4, v6, v2}, Lcom/evie/search/local/LocalSearchUtil;->updateRank(Lcom/evie/search/model/LocalSearchItem;FF)V

    goto :goto_c

    .line 284
    :cond_16
    sget-object v0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;->INSTANCE:Lcom/evie/search/local/-$$Lambda$LocalSearchManager$l6dzASYNUUUdqqfmtpgFWbNlYzI;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxRecents(I)V
    .locals 1

    .line 504
    iget v0, p0, Lcom/evie/search/local/LocalSearchManager;->mMaxRecents:I

    if-eq p1, v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchManager;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {v0, p1}, Lcom/evie/common/SearchSettings;->setMaxRecents(I)V

    .line 506
    iput p1, p0, Lcom/evie/search/local/LocalSearchManager;->mMaxRecents:I

    .line 507
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p0}, Lcom/evie/search/local/LocalSearchManager;->getRecentItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method updateAppPackage(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/search/model/LocalSearchItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 366
    new-instance v0, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;

    invoke-direct {v0, p0, p2, p1}, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$JWAAaLABub6GIAa3LOwK3oz5dQo;-><init>(Lcom/evie/search/local/LocalSearchManager;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateRecentItemLabel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 647
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "label"

    .line 648
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object p2, p0, Lcom/evie/search/local/LocalSearchManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recents"

    const-string v2, "link=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    iget-object p1, p0, Lcom/evie/search/local/LocalSearchManager;->mRecentSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p0}, Lcom/evie/search/local/LocalSearchManager;->getRecentItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public updateRecents()V
    .locals 2

    .line 497
    new-instance v0, Lcom/evie/search/local/-$$Lambda$FoUWy0LovX7aNNGdvp2142F6pRQ;

    invoke-direct {v0, p0}, Lcom/evie/search/local/-$$Lambda$FoUWy0LovX7aNNGdvp2142F6pRQ;-><init>(Lcom/evie/search/local/LocalSearchManager;)V

    .line 498
    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 499
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$lmbqijPjDRu6lHjvU7Fp-IC3INc;

    invoke-direct {v1, p0}, Lcom/evie/search/local/-$$Lambda$LocalSearchManager$lmbqijPjDRu6lHjvU7Fp-IC3INc;-><init>(Lcom/evie/search/local/LocalSearchManager;)V

    .line 500
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
