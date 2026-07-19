.class public Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;
.super Ljava/lang/Object;
.source "HideAppsModel.java"

# interfaces
.implements Lcom/evie/search/AppAvailabilityProvider;


# instance fields
.field private mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

.field private mHiddenApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mHiddenApps:Ljava/util/HashMap;

    const-string v0, "hide_apps"

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getAllApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getAllApps()Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    .line 41
    iget-boolean v4, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    if-eqz v4, :cond_0

    .line 42
    iget-object v4, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_1

    .line 44
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 45
    iget-object v5, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_2
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mHiddenApps:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mLoaded:Z

    return-object v1
.end method

.method public isHidden(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mLoaded:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->getAllApps()Ljava/util/List;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mHiddenApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isHiddenFromBrowse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->isHidden(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isHiddenFromSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->isHidden(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->isHiddenSearchable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isHiddenSearchable()Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "searchable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setHidden(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iput-boolean p3, v0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    .line 69
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->update(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)Z

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mHiddenApps:Ljava/util/HashMap;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mHiddenApps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz p3, :cond_2

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 77
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mHiddenApps:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 83
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setHiddenSearchable(Z)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "searchable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
