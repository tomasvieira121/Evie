.class public Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationListener"

.field static sInstance:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;


# instance fields
.field mBadgeEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mHasChanged:Z

.field mIsConnected:Z

.field mListener:Landroid/content/BroadcastReceiver;

.field mRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mRemoved:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mBadgeEnabled:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener$1;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener$1;-><init>(Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance()Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;
    .locals 1

    .line 66
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->sInstance:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    return-object v0
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 72
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v1, "listener connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mIsConnected:Z

    .line 75
    sput-object p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->sInstance:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    .line 76
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->refreshNotifications()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.evie.refresh_notifications"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.evie.dismiss_notification"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mIsConnected:Z

    .line 88
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->sInstance:Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;

    return-void
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 2

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mBadgeEnabled:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->refreshNotifications()V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mRemoved:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->refreshNotifications()V

    .line 101
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.evie.notification_dismissed"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v1, "Could not send removed broadcast"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized refreshNotifications()V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getState()Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    move-result-object v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 138
    iput-boolean v3, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mHasChanged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v4

    .line 149
    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->clearNotifications()V

    .line 150
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v1, v6

    .line 151
    invoke-virtual {p0, v7}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->shouldUseForBadge(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 155
    :cond_1
    sget-boolean v8, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v8, :cond_2

    .line 156
    invoke-virtual {v4, v7}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 157
    :cond_2
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 160
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    add-int/2addr v8, v3

    .line 163
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mRemoved:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 174
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->updateTransientNotification(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 178
    :try_start_2
    sget-object v2, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->TAG:Ljava/lang/String;

    const-string v3, "exception while refreshing"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 181
    :cond_7
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mHasChanged:Z

    .line 182
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->mRemoved:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0

    return-void
.end method

.method public shouldUseForBadge(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    const/16 v0, 0x200

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected updateTransientNotification(Ljava/lang/String;I)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/service/NotificationListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->setTransientCount(Ljava/lang/String;I)V

    return-void
.end method
