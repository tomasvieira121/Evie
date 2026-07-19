.class public Lcom/voxel/simplesearchlauncher/utils/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static sInstance:Lcom/voxel/simplesearchlauncher/utils/Choreographer;


# instance fields
.field private mAnimationCounter:I

.field private mAnimationQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mNonAnimationQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationQueue:Ljava/util/Deque;

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mNonAnimationQueue:Ljava/util/Deque;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/voxel/simplesearchlauncher/utils/Choreographer;
    .locals 2

    const-class v0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->sInstance:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;-><init>()V

    sput-object v1, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->sInstance:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    .line 22
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->sInstance:Lcom/voxel/simplesearchlauncher/utils/Choreographer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTimeoutRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 91
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$nQFhTMeZcvs5uXfxuN3pbjX21Gw;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$nQFhTMeZcvs5uXfxuN3pbjX21Gw;-><init>(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V

    return-object v0
.end method

.method private handleQueues()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->logState()V

    .line 58
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0

    .line 60
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mNonAnimationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mNonAnimationQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$EGbIqHK4dQ6yvhNDFPr8RzMTXMU;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$EGbIqHK4dQ6yvhNDFPr8RzMTXMU;-><init>(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static synthetic lambda$animationEnded$4(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V
    .locals 2

    .line 102
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 104
    iput v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    .line 106
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->handleQueues()V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$getTimeoutRunnable$3(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->TAG:Ljava/lang/String;

    const-string v1, "Animation timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->logState()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 96
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->handleQueues()V

    return-void
.end method

.method public static synthetic lambda$handleQueues$1(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->handleQueues()V

    return-void
.end method

.method public static synthetic lambda$postAnimationStart$2(Lcom/voxel/simplesearchlauncher/utils/Choreographer;Ljava/lang/Runnable;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    iget v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    .line 83
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->handleQueues()V

    return-void
.end method

.method private logState()V
    .locals 5

    .line 128
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->TAG:Ljava/lang/String;

    const-string v1, "mAnimationCounter: %d, mAnimationQueue: %d, mNonAnimationQueue: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationCounter:I

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mAnimationQueue:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mNonAnimationQueue:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 128
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public animationEnded()V
    .locals 1

    .line 101
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$R52HNZnnmm_XX5wPhfwOxETjG_Y;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$R52HNZnnmm_XX5wPhfwOxETjG_Y;-><init>(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public declared-synchronized postAnimationStart(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk;-><init>(Lcom/voxel/simplesearchlauncher/utils/Choreographer;Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
