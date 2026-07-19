.class public final Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;
.super Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;
.source "AppLaunchDatabase_Impl.java"


# instance fields
.field private volatile _appLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public appLaunchDAO()Lcom/evie/models/frequentlyused/room/AppLaunchDAO;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->_appLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->_appLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    return-object v0

    .line 115
    :cond_0
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->_appLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;

    invoke-direct {v0, p0}, Lcom/evie/models/frequentlyused/room/AppLaunchDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->_appLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;->_appLaunchDAO:Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 2

    .line 90
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "app_launch_entries"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 30
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl$1;-><init>(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase_Impl;I)V

    const-string v2, "e769f0d2567d33c09ab79105291ceff8"

    const-string v3, "1c67b69cea9398a2712f7a006533d633"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 84
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method
