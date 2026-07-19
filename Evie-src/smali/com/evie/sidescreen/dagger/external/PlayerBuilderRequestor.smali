.class public Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
.super Ljava/lang/Object;
.source "PlayerBuilderRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;
    }
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field mException:Ljava/lang/Exception;

.field mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mCallbackList:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized resolveRequests()V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->iterator:Ljava/util/Iterator;

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;

    .line 38
    iget-object v1, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;->onSuccess(Lcom/aol/mobile/sdk/player/PlayerBuilder;)V

    goto :goto_1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mException:Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;->onFailure(Ljava/lang/Exception;)V

    .line 43
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method


# virtual methods
.method public declared-synchronized failRequests(Ljava/lang/Exception;)V
    .locals 0

    monitor-enter p0

    .line 24
    :try_start_0
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mException:Ljava/lang/Exception;

    .line 25
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->resolveRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fulfillRequests(Lcom/aol/mobile/sdk/player/PlayerBuilder;)V
    .locals 0

    monitor-enter p0

    .line 18
    :try_start_0
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    .line 19
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->resolveRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized request(Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;)V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->resolveRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
