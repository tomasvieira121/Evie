.class public Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;
.super Lcom/voxel/launcher3/compat/LauncherAppsCompat;
.source "LauncherAppsCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;",
            "Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "launcherapps"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
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

    .line 167
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
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

    .line 171
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    .line 176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;

    .line 177
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public addOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 3

    .line 90
    new-instance v0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;-><init>(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 91
    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object p1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .locals 2
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

    .line 59
    invoke-direct {p0, p2}, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->getAllActivityList(Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 65
    new-instance v1, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatVL;

    invoke-direct {v1, v0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatVL;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public removeOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 102
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    new-instance p2, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatVL;

    invoke-direct {p2, p1}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompatVL;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method
