.class public Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;
.super Lcom/voxel/launcher3/compat/PackageInstallerCompat;
.source "PackageInstallerCompatV16.java"


# instance fields
.field mFinishedBind:Z

.field protected final mPrefs:Landroid/content/SharedPreferences;

.field mReplayPending:Z

.field mUseQueue:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;-><init>()V

    const-string v0, "com.voxel.launcher3.compat.PackageInstallerCompatV16.queue"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static infoFromJson(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;
    .locals 2

    .line 145
    new-instance v0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;)V

    .line 147
    :try_start_0
    new-instance p0, Lorg/json/JSONTokener;

    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const-string p1, "state"

    .line 148
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const-string p1, "progress"

    .line 149
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PackageInstallerCompatV16"

    const-string v1, "failed to deserialize app state update"

    .line 151
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private replayUpdates()V
    .locals 6

    .line 82
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mReplayPending:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mReplayPending:Z

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    iget-object v4, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    invoke-static {v3, v4}, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->infoFromJson(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->sendUpdate(Lcom/voxel/launcher3/LauncherAppState;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private sendUpdate(Lcom/voxel/launcher3/LauncherAppState;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/LauncherAppState;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mReplayPending:Z

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/LauncherAppState;->setPackageState(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFinishBind()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mFinishedBind:Z

    .line 72
    iget-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mUseQueue:Z

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->replayUpdates()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mUseQueue:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mUseQueue:Z

    .line 64
    iget-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->mFinishedBind:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatV16;->replayUpdates()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateAndGetActiveSessionCache()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
