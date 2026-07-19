.class public Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;
.super Lcom/voxel/launcher3/compat/LauncherAppsCompat;
.source "LauncherAppsCompatV16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageMonitor:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    .line 55
    iput-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;-><init>(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$1;)V

    iput-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;)Ljava/util/List;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getAllActivityList(Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 222
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    .line 227
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 228
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private declared-synchronized getCallbacks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerForPackageIntents()V
    .locals 3

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-static {v1, v2, v0}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-static {v1, v2, v0}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterForPackageIntents()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPackageMonitor:Lcom/voxel/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->registerForPackageIntents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 62
    invoke-direct {p0, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->getAllActivityList(Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 71
    new-instance v1, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;

    iget-object v2, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 1

    const/4 p2, 0x0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :catch_0
    return p2
.end method

.method public isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 1

    const/4 p2, 0x0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2

    :catch_0
    return p2
.end method

.method public declared-synchronized removeOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->unregisterForPackageIntents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
    .locals 1

    .line 78
    iget-object p2, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mPm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    new-instance p2, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;

    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 3

    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    .line 98
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p1, 0x10808000

    .line 99
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 1

    .line 87
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 88
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const/high16 p1, 0x10000000

    .line 91
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
