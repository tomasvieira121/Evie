.class public Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
.super Ljava/lang/Object;
.source "AnalyticsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;,
        Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsHandler"

.field private static instance:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;


# instance fields
.field private canSyncLogs:Z

.field private context:Landroid/content/Context;

.field private deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

.field private distinctUserId:Ljava/lang/String;

.field private logsDatabase:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

.field private final mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

.field private final mAllowedUser:Z

.field private final mAnalyticsFilter:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

.field private mBackoffLimitRetries:I

.field private mBackoffMilli:I

.field private mLastAppAnalyticsUploadTime:J

.field private mLastUploadTime:J

.field private final mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

.field private mRetryHandler:Landroid/os/Handler;

.field private mRetryRunnable:Ljava/lang/Runnable;

.field private mScreenEvent:Lorg/json/JSONObject;

.field private mScreenTime:J

.field private mUploadLogsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;Z)V
    .locals 2

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 203
    iput v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffMilli:I

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffLimitRetries:I

    .line 300
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mRetryHandler:Landroid/os/Handler;

    .line 301
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$toFsTXaWrAnmcKhDkOXAim2LkUw;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$toFsTXaWrAnmcKhDkOXAim2LkUw;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 401
    iput-wide v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenTime:J

    .line 306
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    .line 307
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAnalyticsFilter:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

    .line 308
    new-instance p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logsDatabase:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    .line 309
    new-instance p2, Lcom/evie/common/AbTestConfiguration;

    invoke-direct {p2, p1}, Lcom/evie/common/AbTestConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    .line 310
    iput-boolean p3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAllowedUser:Z

    .line 311
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    .line 313
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    .line 315
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.SCREEN_OFF"

    .line 316
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    new-instance p3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$1;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$1;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 329
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    .line 330
    check-cast p1, Landroid/app/Application;

    .line 332
    new-instance p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$2;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$2;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mLastAppAnalyticsUploadTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mLastAppAnalyticsUploadTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mRetryHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mUploadLogsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logsDatabase:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->canSyncLogs:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)Lorg/json/JSONObject;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateEventLog(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$602(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mLastUploadTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffMilli:I

    return p0
.end method

.method static synthetic access$702(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffMilli:I

    return p1
.end method

.method static synthetic access$800(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffLimitRetries:I

    return p0
.end method

.method static synthetic access$802(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffLimitRetries:I

    return p1
.end method

.method static synthetic access$808(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I
    .locals 2

    .line 62
    iget v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffLimitRetries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffLimitRetries:I

    return v0
.end method

.method static synthetic access$900(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mRetryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static generateAppLaunchProperties(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 1

    .line 890
    invoke-static {p0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getLauncherComponent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 893
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz p0, :cond_1

    .line 894
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 892
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p0

    return-object p0
.end method

.method public static generateAppLaunchProperties(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 0

    .line 873
    invoke-static {p0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getComponent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    .line 874
    invoke-static {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p0

    return-object p0
.end method

.method private static generateAppLaunchProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 904
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    .line 906
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "launch_source"

    .line 907
    invoke-virtual {v0, v1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 910
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "launch_package_name"

    .line 911
    invoke-virtual {v0, p2, p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    .line 914
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "launch_class_name"

    .line 915
    invoke-virtual {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_2
    return-object v0
.end method

.method private generateDistinctUserId()Ljava/lang/String;
    .locals 1

    .line 629
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateEventLog(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)Lorg/json/JSONObject;
    .locals 11

    .line 536
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    if-nez v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->loadDeviceInfo()V

    .line 540
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getInstance()Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 542
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "id"

    .line 544
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "event"

    .line 545
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_id"

    .line 546
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user_id"

    .line 547
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "time"

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "time_zone"

    .line 549
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    .line 550
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->platform:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_version"

    .line 551
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->platformVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "brand"

    .line 552
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "manufacturer"

    .line 553
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    .line 554
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "package_id"

    .line 555
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "carrier"

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->country:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "country"

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->country:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "app_version"

    .line 558
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget v3, v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->appVersion:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 559
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAnalyticsFilter:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->allowLocation()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 560
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 561
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    cmpg-double v10, v4, v8

    if-gez v10, :cond_3

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    cmpl-double v10, v4, v8

    if-lez v10, :cond_3

    const-wide/high16 v4, -0x3fbc000000000000L    # -40.0

    cmpg-double v8, v6, v4

    if-gez v8, :cond_3

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v8, v6, v4

    if-lez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 567
    :goto_0
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAnalyticsFilter:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->isLocationUSGeolimited()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_5

    .line 569
    :cond_4
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v0, 0x6

    invoke-static {v4, v5, v6, v7, v0}, Lch/hsr/geohash/GeoHash;->geoHashStringWithCharacterPrecision(DDI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "location_geohash"

    .line 570
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "ev_ss_active"

    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ev_ss_running"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 576
    :cond_6
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mNotificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_8

    .line 578
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_8

    const-string v4, "default"

    .line 580
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 582
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    and-int/2addr p1, v2

    :cond_8
    const-string v0, "notifications_enabled"

    .line 586
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    if-eqz p2, :cond_a

    const-string p1, "properties"

    .line 589
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->getProps()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 592
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 595
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAnalyticsFilter:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;->filter(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private static getComponent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2

    const/4 v0, 0x0

    .line 924
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p1, :cond_0

    return-object v0

    .line 928
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 931
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 932
    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    .line 935
    :cond_2
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    return-object v0
.end method

.method private getFromSharedPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    const-string v1, "analytics_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 849
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    monitor-enter v0

    .line 393
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->instance:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    if-eqz v1, :cond_0

    .line 397
    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->instance:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 394
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Instance must be initialized before trying to use."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getLauncherComponent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 956
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 959
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    .line 961
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 962
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 964
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 965
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 967
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 968
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 970
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 978
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    .line 982
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 984
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getUploadLogsAsyncTask()Landroid/os/AsyncTask;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 683
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;)V
    .locals 3

    const-class v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    monitor-enter v0

    .line 372
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->instance:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 374
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    const/4 v1, 0x1

    .line 384
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 388
    :catch_0
    :goto_0
    :try_start_2
    new-instance v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-direct {v2, p0, p1, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;Z)V

    sput-object v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->instance:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    monitor-exit v0

    return-void

    .line 378
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must be provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$loadDeviceInfo$1(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$loadDeviceInfo$2(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iput-object p1, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$loadDeviceInfo$3(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 3

    .line 302
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getUploadLogsAsyncTask()Landroid/os/AsyncTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic lambda$saveLogToDatabase$4(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logsDatabase:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->insertLog(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Ljava/lang/String;)V

    return-void
.end method

.method private loadDeviceInfo()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 602
    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    .line 603
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    const-string v2, "Android"

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->platform:Ljava/lang/String;

    .line 604
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->platformVersion:Ljava/lang/String;

    .line 605
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->brand:Ljava/lang/String;

    .line 606
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 607
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->model:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->carrier:Ljava/lang/String;

    .line 611
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->country:Ljava/lang/String;

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->packageId:Ljava/lang/String;

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->packageId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->deviceInfo:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$DeviceInfo;->appVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 619
    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->TAG:Ljava/lang/String;

    const-string v2, "Could not get version code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    :goto_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$7TdE1ol64dBhlr8ncUcIXVexXm8;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$7TdE1ol64dBhlr8ncUcIXVexXm8;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 622
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 623
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$pKteHgsDP1s-LolzLzUqqyDsBiM;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$pKteHgsDP1s-LolzLzUqqyDsBiM;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    sget-object v2, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;->INSTANCE:Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$0F20nZ1Zmj9At9vzYWwhELSh9A0;

    .line 624
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private saveLogToDatabase(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V
    .locals 5

    .line 633
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isAnalyticsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    const-string v0, "ev: %s %s %d %s"

    const/4 v1, 0x4

    .line 640
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "properties"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 642
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 646
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "experiment"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAbTestConfiguration:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "group"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 652
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 656
    :cond_3
    :goto_1
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/-$$Lambda$AnalyticsHandler$FV202v0NsOo9lGGDDdhWdFOunco;-><init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V

    .line 657
    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 658
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 659
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private saveToSharedPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    const-string v1, "analytics_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 855
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 856
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 857
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private declared-synchronized uploadLogs()V
    .locals 3

    monitor-enter p0

    .line 665
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->canSyncLogs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 666
    monitor-exit p0

    return-void

    .line 669
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mUploadLogsTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mRetryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 671
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getUploadLogsAsyncTask()Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mUploadLogsTask:Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :try_start_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mUploadLogsTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 676
    :try_start_3
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mUploadLogsTask:Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 679
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized finishScreenView()V
    .locals 5

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenEvent:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 433
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v0, v2

    .line 436
    :try_start_2
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenEvent:Lorg/json/JSONObject;

    const-string v3, "properties"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    :try_start_3
    sget-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->EVENT:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenEvent:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->saveLogToDatabase(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 438
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not add duration"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenEvent:Lorg/json/JSONObject;

    const-wide/16 v0, -0x1

    .line 444
    iput-wide v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDistinctUserId()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "anonym_user_id"

    .line 831
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getFromSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 834
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateDistinctUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->saveDistinctUserId(Ljava/lang/String;)V

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V
    .locals 1

    .line 467
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isAnalyticsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAllowedUser:Z

    if-nez v0, :cond_1

    return-void

    .line 469
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 472
    new-instance p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    :cond_3
    const-string v0, "ev_app_launch"

    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->finishScreenView()V

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateEventLog(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)Lorg/json/JSONObject;

    move-result-object p1

    .line 478
    sget-object p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->APP_LAUNCH:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    invoke-direct {p0, p2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->saveLogToDatabase(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 481
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateEventLog(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)Lorg/json/JSONObject;

    move-result-object p1

    .line 482
    sget-object p2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->EVENT:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    invoke-direct {p0, p2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->saveLogToDatabase(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public recordAppLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 448
    invoke-static {p1, p2, p3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    const-string p2, "ev_app_launch"

    .line 449
    invoke-virtual {p0, p2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method

.method public recordAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 458
    invoke-static {p1, p2, p3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    const-string p2, "ev_app_launch"

    .line 459
    invoke-virtual {p0, p2, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    return-void
.end method

.method public requestLogsSync()V
    .locals 1

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync(Z)V

    return-void
.end method

.method public requestLogsSync(Z)V
    .locals 8

    .line 492
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/DebugUtil;->isAnalyticsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mAllowedUser:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 497
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_2

    return-void

    .line 501
    :cond_2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 502
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x1b7740

    .line 507
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v0, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/16 v2, 0x9

    if-ne p1, v2, :cond_5

    :cond_4
    const v1, 0x493e0

    .line 511
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mLastUploadTime:J

    sub-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long p1, v2, v4

    if-gez p1, :cond_7

    .line 512
    sget-object p1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping log upload for aonther "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mLastUploadTime:J

    sub-long/2addr v1, v6

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_0
    return-void

    :cond_7
    const/4 p1, 0x0

    .line 517
    iput p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mBackoffLimitRetries:I

    .line 518
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->canSyncLogs:Z

    .line 519
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->uploadLogs()V

    return-void
.end method

.method public saveDistinctUserId(Ljava/lang/String;)V
    .locals 1

    .line 841
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->distinctUserId:Ljava/lang/String;

    const-string v0, "anonym_user_id"

    .line 842
    invoke-direct {p0, v0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->saveToSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->finishScreenView()V

    .line 409
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "type"

    .line 410
    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "subtype"

    .line 411
    invoke-virtual {v0, v1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "title"

    .line 412
    invoke-virtual {v0, p2, p3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_2
    if-eqz p4, :cond_3

    const-string p2, "metadata"

    .line 413
    invoke-virtual {v0, p2, p4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_3
    if-eqz p5, :cond_4

    const-string p2, "analytics_proto"

    .line 414
    invoke-virtual {v0, p2, p5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    :cond_4
    const-string p2, "web"

    .line 419
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ev_screen_view"

    .line 420
    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    goto :goto_0

    :cond_5
    const-string p1, "ev_screen_view"

    .line 422
    invoke-direct {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateEventLog(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenEvent:Lorg/json/JSONObject;

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->mScreenTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopLogsSync()V
    .locals 1

    const/4 v0, 0x0

    .line 523
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->canSyncLogs:Z

    return-void
.end method
