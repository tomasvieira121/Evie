.class public final Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;
.super Lcom/aol/mobile/sdk/player/advertisement/AdServices;
.source "AdServiceGuard.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ad:",
        "Ljava/lang/Object;",
        "Source:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/aol/mobile/sdk/player/advertisement/AdServices<",
        "TAd;TSource;>;",
        "Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback<",
        "TAd;TSource;>;"
    }
.end annotation


# instance fields
.field private hardReached:Z

.field private innerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback<",
            "TAd;TSource;>;>;"
        }
    .end annotation
.end field

.field private final innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices<",
            "TAd;TSource;>;"
        }
    .end annotation
.end field

.field private softReached:Z

.field private tasksLoaded:Z


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/AdServices;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    .line 30
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->callbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    .line 31
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->callbacks:Ljava/util/List;

    .line 32
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->callbacks:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method addCallback(Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->callbacks:Ljava/util/List;

    .line 39
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->callbacks:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addCallback was not called"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->cancel()V

    return-void
.end method

.method public launch(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addCallback was not called"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->tasksLoaded:Z

    const-string v1, "No tasks were loaded"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->launch(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    return-void
.end method

.method public onHardTimeoutReached()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "addCallback was not called"

    invoke-static {v0, v2}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->tasksLoaded:Z

    const-string v2, "No tasks were loaded"

    invoke-static {v0, v2}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->softReached:Z

    const-string v2, "Hard timeout can not be reached before soft timeout"

    invoke-static {v0, v2}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 68
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->hardReached:Z

    .line 69
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 70
    invoke-interface {v1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onHardTimeoutReached()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSoftTimeoutReached()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "addCallback was not called"

    invoke-static {v0, v2}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->tasksLoaded:Z

    const-string v2, "No tasks were loaded"

    invoke-static {v0, v2}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 56
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->softReached:Z

    .line 57
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 58
    invoke-interface {v1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onSoftTimeoutReached()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addCallback was not called"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->tasksLoaded:Z

    const-string v1, "No tasks were loaded"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->hardReached:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "No data is accepted after hard timeout is reached"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 91
    invoke-interface {v1, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTaskFinished(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTaskLaunched(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "addCallback was not called"

    invoke-static {v0, v2}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 78
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->tasksLoaded:Z

    .line 79
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 80
    invoke-interface {v1, p1}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTaskLaunched(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTasksReady(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "TAd;TSource;>;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "addCallback was not called"

    invoke-static {v0, v2}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 46
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->tasksLoaded:Z

    .line 47
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;

    .line 48
    invoke-interface {v1, p1, p2, p3}, Lcom/aol/mobile/sdk/player/advertisement/AdServices$Callback;->onTasksReady(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareTasks()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addCallback was not called"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->prepareTasks()V

    return-void
.end method

.method public startTimer()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addCallback was not called"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->tasksLoaded:Z

    const-string v1, "No tasks were loaded"

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/AdServiceGuard;->innerService:Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/advertisement/AdServices;->startTimer()V

    return-void
.end method
