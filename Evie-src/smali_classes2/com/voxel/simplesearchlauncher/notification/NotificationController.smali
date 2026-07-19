.class public Lcom/voxel/simplesearchlauncher/notification/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/notification/INotificationController;
.implements Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;
.implements Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;,
        Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationController"

.field private static sInstance:Lcom/voxel/simplesearchlauncher/notification/NotificationController;


# instance fields
.field private mAppDefaultEnabled:Z

.field private mAppsEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExtractorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

.field private mUpdatedExtractors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mUpdatedExtractors:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    const-string v0, "notification_controller"

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    .line 86
    sget-object p1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    .line 87
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mEnabled:Z

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mHandler:Landroid/os/Handler;

    .line 90
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppDefaultEnabled:Z

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    .line 92
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->refreshApps()V

    .line 93
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->initFromPrefs()V

    .line 95
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->setController(Lcom/voxel/simplesearchlauncher/notification/INotificationController;)V

    .line 97
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->setEnabled(Z)V

    .line 99
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x3

    invoke-static {p1, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;->processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;
    .locals 1

    .line 75
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->sInstance:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->sInstance:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    .line 78
    :cond_0
    sget-object p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->sInstance:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    return-object p0
.end method

.method public static synthetic lambda$onExtractorUpdated$0(Lcom/voxel/simplesearchlauncher/notification/NotificationController;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->updateExtractors()V

    return-void
.end method

.method private declared-synchronized updateExtractors()V
    .locals 2

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mUpdatedExtractors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 167
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->update()V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mUpdatedExtractors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method


# virtual methods
.method public activateWidgetExtractors()V
    .locals 8

    .line 348
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getValidExtractors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 352
    instance-of v2, v1, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    if-eqz v2, :cond_1

    .line 353
    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    .line 354
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->isConfigured()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->requiresConfig()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->allocateAppWidgetId()I

    move-result v3

    const/4 v4, 0x0

    .line 360
    :try_start_0
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getWidgetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 361
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 362
    invoke-virtual {v6, v3, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    .line 363
    invoke-virtual {v6, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 364
    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 376
    :goto_1
    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 368
    :cond_3
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->createWidget(I)V

    .line 369
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setAppEnabled(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    :cond_4
    if-nez v4, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 373
    :try_start_2
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 376
    :goto_2
    invoke-virtual {v2, v3}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->deleteAppWidgetId(I)V

    .line 378
    throw v0

    :cond_5
    return-void
.end method

.method public clearAppEnabled(Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchForPackage(Ljava/lang/String;)V

    return-void
.end method

.method public dismissNotification(Ljava/lang/String;)V
    .locals 2

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.evie.dismiss_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.evie.notification.key"

    .line 385
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 387
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public getBadgeScale()F
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "scale_factor"

    const v2, 0x3f59999a    # 0.85f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getBadgeStyle()Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "badge_style"

    sget-object v2, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->DOTS:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 191
    invoke-static {}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->values()[Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getExtractor(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    return-object p1
.end method

.method public getExtractorByKey(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 283
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getState()Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    return-object v0
.end method

.method public hasNotificationUpdate(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 3

    .line 317
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->source:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->HANDLER:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 320
    iget-object v1, v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->isHandlerPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->addHandlerPackage(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "package_id"

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    .line 325
    invoke-virtual {v1, v2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    const-string v1, "ev_badge_new_handler"

    .line 326
    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 328
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->savePrefs()V

    :cond_0
    return-void
.end method

.method protected initFromPrefs()V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mEnabled:Z

    .line 411
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "app_default_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppDefaultEnabled:Z

    .line 412
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 414
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "disabled_apps"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "enabled_apps"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 417
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 418
    invoke-virtual {p0, v3, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setAppEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 421
    invoke-virtual {p0, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setAppEnabled(Ljava/lang/String;Z)V

    goto :goto_1

    .line 432
    :cond_1
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mEnabled:Z

    if-nez v0, :cond_2

    return-void

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getValidExtractors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 436
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isAppEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 439
    :cond_4
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 443
    :cond_5
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 445
    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->setConfig(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public isAppDefaultEnabled()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppDefaultEnabled:Z

    return v0
.end method

.method public isAppEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 247
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->hasPermission()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->isHighAccuracy(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 254
    :cond_1
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppDefaultEnabled:Z

    return p1

    .line 257
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isAppWorking(Ljava/lang/String;)Z
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isAppEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 270
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isExtractorRequired(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->isConfigured()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public isEnabled()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mEnabled:Z

    return v0
.end method

.method public isExtractorRequired(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getBadgeAppsInfo()Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->isTrustedHandler(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public declared-synchronized onExtractorUpdated(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;)V
    .locals 3

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mUpdatedExtractors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    if-ne p1, v0, :cond_0

    .line 489
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$NotificationController$fi_09sT6kC5x8N-XD0CJ_vkPG-I;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$NotificationController$fi_09sT6kC5x8N-XD0CJ_vkPG-I;-><init>(Lcom/voxel/simplesearchlauncher/notification/NotificationController;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUpgrade(II)V
    .locals 0

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->activateWidgetExtractors()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ge p1, p2, :cond_1

    .line 339
    sget-object p1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->COUNT:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->setBadgeStyle(Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 131
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->TAG:Ljava/lang/String;

    const-string v1, "paused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STARTED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshApps()V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 395
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->unregisterObserver()V

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->setListener(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 400
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getValidExtractors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 401
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->refresh()V

    .line 402
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->resetExtractors()V

    .line 406
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->addExtractors(Ljava/util/Collection;)V

    return-void
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STARTED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 138
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->TAG:Ljava/lang/String;

    const-string v1, "resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    .line 143
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->updateExtractors()V

    .line 144
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.evie.refresh_notifications"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public save()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->savePrefs()V

    return-void
.end method

.method protected savePrefs()V
    .locals 6

    .line 450
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled"

    .line 451
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "app_default_enabled"

    .line 452
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isAppDefaultEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "known_handlers"

    .line 453
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v2

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->getHandlerPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 455
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 456
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 457
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 458
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-nez v5, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 462
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, "enabled_apps"

    .line 466
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "disabled_apps"

    .line 467
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 469
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getValidExtractors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 470
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isAppEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 472
    :cond_4
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getConfigKey()Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getConfig()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_3

    if-nez v2, :cond_5

    goto :goto_1

    .line 477
    :cond_5
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 479
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAppDefaultEnabled(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppDefaultEnabled:Z

    return-void
.end method

.method public setAppEnabled(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    if-eq v0, v1, :cond_1

    .line 210
    sget-object p1, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not change settings as state isn\'t stopped. State: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 215
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 216
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isExtractorRequired(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 220
    :cond_2
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->isConfigured()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 224
    :cond_3
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_4
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mAppsEnabled:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->setConfig(Ljava/lang/String;)V

    .line 234
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchForPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setBadgeScale(F)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scale_factor"

    .line 175
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setBadgeStyle(Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "badge_style"

    .line 185
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mEnabled:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 302
    :cond_1
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mEnabled:Z

    .line 303
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mEnabled:Z

    if-eqz p1, :cond_2

    .line 304
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    .line 305
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v1, "ev_badge_enabled"

    .line 306
    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 308
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->activateWidgetExtractors()V

    :cond_2
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STARTED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    .line 106
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->savePrefs()V

    .line 108
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->setEnabled(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-static {}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->deleteInstanceHost()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mExtractorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 117
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->isAppEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v1, p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->setListener(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;)V

    .line 119
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->registerObserver()V

    .line 120
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->pause()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STARTED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->TAG:Ljava/lang/String;

    const-string v1, "stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->mState:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    .line 157
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->refreshApps()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
