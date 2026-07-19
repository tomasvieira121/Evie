.class public Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;
.super Lcom/voxel/launcher3/compat/PackageInstallerCompat;
.source "PackageInstallerCompatVL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mBound:Z

.field private final mCache:Lcom/voxel/launcher3/IconCache;

.field private final mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field private final mInstaller:Landroid/content/pm/PackageInstaller;

.field private final mPendingBadgeUpdates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingReplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResumed:Z

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingReplays:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingBadgeUpdates:Ljava/util/HashSet;

    .line 157
    new-instance v0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;-><init>(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)V

    iput-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mCache:Lcom/voxel/launcher3/IconCache;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mResumed:Z

    .line 53
    iput-boolean p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mBound:Z

    .line 54
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 56
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    new-instance v0, Lcom/voxel/launcher3/compat/-$$Lambda$PackageInstallerCompatVL$8VcGXfKhFLT0BlcDBm94-K3O3dQ;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/compat/-$$Lambda$PackageInstallerCompatVL$8VcGXfKhFLT0BlcDBm94-K3O3dQ;-><init>(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingReplays:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Ljava/util/HashSet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingBadgeUpdates:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->replayUpdates(Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method private addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 3

    .line 77
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 79
    invoke-virtual {v1, v0, p2, v2, p1}, Lcom/voxel/launcher3/IconCache;->cachePackageInstallInfo(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 58
    iget-object v2, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingReplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private replayUpdates(Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 7

    .line 119
    iget-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mResumed:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mBound:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingReplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 133
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 134
    iget v2, p1, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingReplays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_0
    if-ltz p1, :cond_5

    .line 138
    iget-object v3, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingReplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 139
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 140
    new-instance v4, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v3

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    invoke-direct {v4, v5, v2, v3}, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    .line 140
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 145
    :cond_5
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingReplays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 147
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/LauncherAppState;->setPackageState(Ljava/util/ArrayList;)V

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingBadgeUpdates:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 150
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingBadgeUpdates:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/LauncherAppState;->updatePackageBadge(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_7
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mPendingBadgeUpdates:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_8
    return-void

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public onFinishBind()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mBound:Z

    .line 92
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mResumed:Z

    .line 103
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->replayUpdates(Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    return-void
.end method

.method public updateAndGetActiveSessionCache()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 68
    invoke-direct {p0, v3, v1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->addSessionInfoToCahce(Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 69
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
