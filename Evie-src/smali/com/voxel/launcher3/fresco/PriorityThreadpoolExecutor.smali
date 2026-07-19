.class public Lcom/voxel/launcher3/fresco/PriorityThreadpoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PriorityThreadpoolExecutor.java"


# static fields
.field private static final DEFAULT_THREAD_PREFIX:Ljava/lang/String; = "PriorityThreadpoolExecutor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    new-instance v7, Lcom/voxel/simplesearchlauncher/utils/NamedThreadFactory;

    invoke-direct {v7, p7}, Lcom/voxel/simplesearchlauncher/utils/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 26
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/fresco/PriorityRunnable;

    .line 27
    new-instance v7, Lcom/voxel/launcher3/fresco/PriorityFutureTask;

    iget-object v2, v0, Lcom/voxel/launcher3/fresco/PriorityRunnable;->priority:Lcom/facebook/imagepipeline/common/Priority;

    iget-wide v3, v0, Lcom/voxel/launcher3/fresco/PriorityRunnable;->ts:J

    move-object v1, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/fresco/PriorityFutureTask;-><init>(Lcom/facebook/imagepipeline/common/Priority;JLjava/lang/Runnable;Ljava/lang/Object;)V

    return-object v7
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Just runnables for now"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
