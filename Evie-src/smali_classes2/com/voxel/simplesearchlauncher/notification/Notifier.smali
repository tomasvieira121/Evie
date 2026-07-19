.class public Lcom/voxel/simplesearchlauncher/notification/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;


# instance fields
.field private mAppRemoveReceiver:Landroid/content/BroadcastReceiver;

.field mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

.field mController:Lcom/voxel/simplesearchlauncher/notification/INotificationController;

.field mEnabled:Z

.field mHandler:Landroid/os/Handler;

.field mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field mPreferences:Landroid/content/SharedPreferences;

.field private mReceiverRegistered:Z

.field mTransientNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/Notifier$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier$1;-><init>(Lcom/voxel/simplesearchlauncher/notification/Notifier;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mAppRemoveReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "notifications"

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListeners:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mTransientNotifications:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mNotifications:Ljava/util/Map;

    .line 130
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 131
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListenerMap:Ljava/util/Map;

    .line 132
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mHandler:Landroid/os/Handler;

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$JDm1OXrSbRxkOenEBxHKf4U7Zjk;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$JDm1OXrSbRxkOenEBxHKf4U7Zjk;-><init>(Lcom/voxel/simplesearchlauncher/notification/Notifier;Landroid/content/Context;)V

    const/4 p1, 0x2

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;->processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z

    return-void
.end method

.method private declared-synchronized dispatchListeners(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 5

    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->shouldNotifyForApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 489
    monitor-exit p0

    return-void

    .line 491
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListeners:Ljava/util/Map;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 494
    monitor-exit p0

    return-void

    .line 496
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 498
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;

    if-nez v4, :cond_2

    .line 500
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 506
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$x_0iGkzJrSFCE2sMjBjaWWgHevM;

    invoke-direct {v2, v0, p1}, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$x_0iGkzJrSFCE2sMjBjaWWgHevM;-><init>(Ljava/util/List;Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private getCountReal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 297
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_1

    return p2

    .line 304
    :cond_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mTransientNotifications:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;
    .locals 3

    .line 66
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    .line 69
    :cond_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/Notifier;->sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    iget-boolean v1, v1, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mReceiverRegistered:Z

    if-nez v1, :cond_1

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/voxel/simplesearchlauncher/notification/Notifier;->sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mAppRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v2, v1}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    sget-object p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mReceiverRegistered:Z

    .line 77
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget-object p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->sInstance:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    return-object p0

    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getNotificationForKey(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
    .locals 3

    const-string v0, "/source"

    .line 411
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/updated"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 422
    :cond_1
    :try_start_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;)V

    .line 423
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method static synthetic lambda$dispatchListeners$2(Ljava/util/List;Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 1

    .line 507
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 508
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;

    if-eqz v0, :cond_0

    .line 510
    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;->onNotificationChanged(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getNotificationKeys$1(Lcom/voxel/simplesearchlauncher/notification/Notifier;Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;)I
    .locals 7

    .line 345
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mNotifications:Ljava/util/Map;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .line 346
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mNotifications:Ljava/util/Map;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/StatusBarNotification;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    return v0

    .line 354
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/notification/Notifier;Landroid/content/Context;II)V
    .locals 1

    const/4 p3, 0x2

    if-ge p2, p3, :cond_2

    const/4 p2, 0x0

    .line 141
    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_0

    .line 147
    invoke-virtual {p0, p3}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->clearCount(Ljava/lang/String;)V

    .line 152
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "tel:123456789"

    .line 153
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, p3, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_1

    iget-object p3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "android"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 156
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 159
    :cond_1
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->clearCount(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private shouldNotifyForApp(Ljava/lang/String;)Z
    .locals 1

    .line 472
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mController:Lcom/voxel/simplesearchlauncher/notification/INotificationController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/INotificationController;->isAppWorking(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static supportsNotifications(Lcom/voxel/launcher3/ShortcutInfo;)Z
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 92
    :cond_1
    iget p0, p0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    if-eqz p0, :cond_2

    return v1

    .line 95
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mNotifications:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearCount(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    invoke-direct {p0, v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getNotificationForKey(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 208
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 212
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mTransientNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchForPackage(Ljava/lang/String;)V

    return-void
.end method

.method public clearNotifications()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dispatchForPackage(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCountReal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    .line 186
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->shouldNotifyForApp(Ljava/lang/String;)Z

    move-result p1

    .line 187
    iget v1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    if-lez v1, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 189
    iput p1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    .line 190
    :cond_1
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchListeners(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    :cond_2
    return-void
.end method

.method public getAllCounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationCount;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    invoke-direct {p0, v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getNotificationForKey(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBadgeAppsInfo()Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    return-object v0
.end method

.method protected getComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 465
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    .line 468
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 312
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->shouldNotifyForApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 314
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCountReal(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getNotificationKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-nez v1, :cond_0

    return-object v0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 339
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_2
    new-instance p1, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$wq73PpHRLkMqvdvfXaRUGU3i6pQ;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$wq73PpHRLkMqvdvfXaRUGU3i6pQ;-><init>(Lcom/voxel/simplesearchlauncher/notification/Notifier;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getStatusBarNotificationsForKeys(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    .line 324
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mNotifications:Ljava/util/Map;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasHandlerData(Ljava/lang/String;)Z
    .locals 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/source"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->HANDLER:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHighAccuracy(Ljava/lang/String;)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->isHighAccuracyApp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 479
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getNotificationForKey(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchListeners(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    return-void
.end method

.method public readCount(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 2

    .line 362
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    return-void
.end method

.method public declared-synchronized registerListener(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V
    .locals 3

    monitor-enter p0

    .line 393
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 394
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 396
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 404
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setController(Lcom/voxel/simplesearchlauncher/notification/INotificationController;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mController:Lcom/voxel/simplesearchlauncher/notification/INotificationController;

    return-void
.end method

.method public setCount(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 6

    .line 220
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->activityName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->source:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    sget-object v2, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->EXTRACTOR:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->isTrustedHandler(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    .line 226
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->hasHandlerData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 231
    :cond_1
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->source:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    sget-object v2, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->HANDLER:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mBadgeAppsInfo:Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->isUnreliableHandler(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "Notifier"

    const-string v2, "Setting count of %s to %d"

    const/4 v3, 0x2

    .line 235
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 238
    iget v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    if-nez v2, :cond_3

    .line 239
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 242
    :cond_3
    iget v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/source"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->source:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->ordinal()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mController:Lcom/voxel/simplesearchlauncher/notification/INotificationController;

    if-eqz v0, :cond_4

    .line 254
    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/notification/INotificationController;->hasNotificationUpdate(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    .line 256
    :cond_4
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchListeners(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 165
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mEnabled:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    :goto_0
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getAllCounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    if-nez p1, :cond_1

    .line 170
    iput v1, v2, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    .line 171
    :cond_1
    invoke-direct {p0, v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchListeners(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setTransientCount(Ljava/lang/String;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 261
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mTransientNotifications:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mTransientNotifications:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :goto_0
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mEnabled:Z

    if-nez p2, :cond_1

    return-void

    .line 268
    :cond_1
    new-instance p2, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->readCount(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    .line 270
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->dispatchListeners(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    return-void
.end method

.method public declared-synchronized unregisterListener(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V
    .locals 5

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 435
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_0

    move-object v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 441
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_3

    .line 447
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized unregisterListenerForAll(Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V
    .locals 2

    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/Notifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 455
    monitor-exit p0

    return-void

    .line 456
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    invoke-virtual {p0, v1, p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->unregisterListener(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 459
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method
