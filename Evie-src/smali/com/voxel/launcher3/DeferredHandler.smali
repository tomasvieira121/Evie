.class public Lcom/voxel/launcher3/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;,
        Lcom/voxel/launcher3/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/voxel/launcher3/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 37
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 38
    new-instance v0, Lcom/voxel/launcher3/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/voxel/launcher3/DeferredHandler$Impl;-><init>(Lcom/voxel/launcher3/DeferredHandler;Lcom/voxel/launcher3/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mHandler:Lcom/voxel/launcher3/DeferredHandler$Impl;

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/DeferredHandler;)Ljava/util/LinkedList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public cancelAllRunnablesOfType(I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 108
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 110
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 111
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 114
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public flush()V
    .locals 3

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v2, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 131
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 129
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;I)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/voxel/launcher3/DeferredHandler;->scheduleNextLocked()V

    .line 88
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/DeferredHandler;->postIdle(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public postIdle(Ljava/lang/Runnable;I)V
    .locals 1

    .line 96
    new-instance v0, Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;-><init>(Lcom/voxel/launcher3/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;I)V

    return-void
.end method

.method scheduleNextLocked()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 138
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 139
    instance-of v0, v0, Lcom/voxel/launcher3/DeferredHandler$IdleRunnable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/voxel/launcher3/DeferredHandler;->mHandler:Lcom/voxel/launcher3/DeferredHandler$Impl;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/DeferredHandler;->mHandler:Lcom/voxel/launcher3/DeferredHandler$Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method
