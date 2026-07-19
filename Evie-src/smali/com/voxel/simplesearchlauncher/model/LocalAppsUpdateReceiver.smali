.class public Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalAppsUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalAppsUpdateReceiver"

.field private static sLocalAppsUpdateReceiver:Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 195
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Could not set app version code. "

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public static declared-synchronized registerReceiver(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->sLocalAppsUpdateReceiver:Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 38
    :cond_0
    :try_start_1
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;-><init>()V

    sput-object v1, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->sLocalAppsUpdateReceiver:Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;

    .line 42
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->sLocalAppsUpdateReceiver:Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;

    invoke-static {v2, v3, v1}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->sLocalAppsUpdateReceiver:Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;

    invoke-static {p0, v2, v1}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "Registered receiver"

    const/4 v1, 0x0

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updatePackage(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-virtual {p4, p3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApps(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    .line 120
    invoke-static {p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    if-nez p4, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_0
    if-nez v0, :cond_1

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 129
    :cond_1
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available activities for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 135
    invoke-virtual {v1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v4

    .line 136
    invoke-direct {p0, p2, p3}, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x0

    .line 139
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 140
    iget-object v9, v8, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v6, v8

    :cond_5
    if-eqz v6, :cond_6

    .line 149
    sget-object v7, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - updating: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {p4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v7, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    iget v8, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-static {v2, v7, v8}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 156
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromMemoryCache(Landroid/net/Uri;)V

    .line 157
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromDiskCache(Landroid/net/Uri;)V

    .line 159
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    .line 160
    iput v1, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    .line 161
    iput-wide v4, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->firstInstallTime:J

    .line 162
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_UPDATE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 166
    :cond_6
    sget-object v6, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  - inserting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    invoke-direct {v6}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;-><init>()V

    .line 169
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    .line 170
    iput-object p3, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    .line 171
    iput-object v2, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    .line 172
    iput v1, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    .line 173
    iput-wide v4, v6, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->firstInstallTime:J

    .line 174
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_INSERT:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 178
    :cond_7
    sget-object p2, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting apps in DB for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 181
    sget-object p4, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance p4, Landroid/util/Pair;

    sget-object v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;->TYPE_DELETE:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$BatchOp;

    invoke-direct {p4, v0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-direct {v1, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    .line 66
    sget-object v2, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apps Update Intent Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :cond_1
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x13

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    const-string v0, "android.intent.extra.REPLACING"

    .line 90
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "android.intent.extra.changed_package_list"

    .line 92
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    .line 94
    array-length v0, p2

    :goto_1
    if-ge v4, v0, :cond_8

    aget-object v3, p2, v4

    .line 95
    invoke-direct {p0, v2, p1, v3, v1}, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->updatePackage(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "android.intent.extra.REPLACING"

    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "android.intent.extra.changed_package_list"

    .line 102
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    .line 104
    array-length v0, p2

    :goto_3
    if-ge v4, v0, :cond_8

    aget-object v3, p2, v4

    .line 105
    invoke-direct {p0, v2, p1, v3, v1}, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->updatePackage(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 72
    :cond_5
    :goto_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.extra.REPLACING"

    .line 73
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz v3, :cond_a

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 81
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->TAG:Ljava/lang/String;

    const-string p2, "App is being replaced, ignore action."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_7
    invoke-direct {p0, v2, p1, v3, v1}, Lcom/voxel/simplesearchlauncher/model/LocalAppsUpdateReceiver;->updatePackage(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;)V

    .line 110
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 111
    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->applyBatch(Ljava/util/List;)V

    :cond_9
    return-void

    :cond_a
    :goto_5
    return-void
.end method
