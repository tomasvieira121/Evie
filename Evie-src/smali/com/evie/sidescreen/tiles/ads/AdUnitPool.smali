.class public abstract Lcom/evie/sidescreen/tiles/ads/AdUnitPool;
.super Ljava/lang/Object;
.source "AdUnitPool.java"


# instance fields
.field private mAlwaysPreload:Z

.field private final mPreloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/evie/sidescreen/tiles/ads/AdUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTestMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mPreloads:Ljava/util/Map;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mAlwaysPreload:Z

    .line 16
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mTestMode:Z

    return-void
.end method

.method private declared-synchronized getAdUnitSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/evie/sidescreen/tiles/ads/AdUnit;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mPreloads:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mPreloads:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected abstract generateNewAdUnit(Ljava/lang/String;)Lcom/evie/sidescreen/tiles/ads/AdUnit;
.end method

.method public declared-synchronized getAdUnit(Lcom/evie/models/sidescreen/data/TileType;)Lcom/evie/sidescreen/tiles/ads/AdUnit;
    .locals 5

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->translateAdType(Lcom/evie/models/sidescreen/data/TileType;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->getAdUnitSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->preload(Lcom/evie/models/sidescreen/data/TileType;)V

    .line 67
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/tiles/ads/AdUnit;

    .line 68
    invoke-virtual {v3}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->isReady()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_2
    if-nez v1, :cond_3

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/tiles/ads/AdUnit;

    .line 78
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-boolean v2, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mAlwaysPreload:Z

    if-eqz v2, :cond_4

    .line 81
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->preload(Lcom/evie/models/sidescreen/data/TileType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public getAlwaysPreload()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mAlwaysPreload:Z

    return v0
.end method

.method public declared-synchronized preload(Lcom/evie/models/sidescreen/data/TileType;)V
    .locals 2

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->translateAdType(Lcom/evie/models/sidescreen/data/TileType;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->getAdUnitSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->generateNewAdUnit(Ljava/lang/String;)Lcom/evie/sidescreen/tiles/ads/AdUnit;

    move-result-object p1

    .line 28
    iget-boolean v1, p0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->mTestMode:Z

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->setTestMode(Z)V

    .line 29
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->load()V

    .line 30
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized relinquishUnusedAdUnit(Lcom/evie/models/sidescreen/data/TileType;Lcom/evie/sidescreen/tiles/ads/AdUnit;)V
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p2}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->isLoadError()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->translateAdType(Lcom/evie/models/sidescreen/data/TileType;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->getAdUnitSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected translateAdType(Lcom/evie/models/sidescreen/data/TileType;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/TileType;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
