.class public abstract Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;
.super Lcom/evie/sidescreen/tiles/TilePresenter;
.source "AbstractAdMediationItemPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/mvp/Unreliable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationViewHolder;",
        ">",
        "Lcom/evie/sidescreen/tiles/TilePresenter<",
        "TVH;>;",
        "Lcom/evie/sidescreen/mvp/Unreliable;"
    }
.end annotation


# instance fields
.field private final mAd:Lorg/schema/evie/ads/Ad;

.field private mAdProvider:Ljava/lang/String;

.field private final mAdTilePresenterFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mAdUnit:Lcom/evie/sidescreen/tiles/ads/AdUnit;

.field private final mAdUnitPools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacer:Lcom/evie/sidescreen/mvp/Replacer;

.field private final mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private final mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;


# direct methods
.method protected constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/evie/ads/Ad;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Ljava/util/Map;Ljava/util/Map;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            "Lorg/schema/evie/ads/Ad;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p3, p6}, Lcom/evie/sidescreen/tiles/TilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 47
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    .line 48
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAd:Lorg/schema/evie/ads/Ad;

    .line 49
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 50
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnitPools:Ljava/util/Map;

    .line 51
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdTilePresenterFactories:Ljava/util/Map;

    .line 52
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnitPools:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;

    .line 53
    invoke-virtual {p3}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->getAlwaysPreload()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->preload(Lcom/evie/models/sidescreen/data/TileType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bindAdUnit()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnit:Lcom/evie/sidescreen/tiles/ads/AdUnit;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdTilePresenterFactories:Ljava/util/Map;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdProvider:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;

    .line 182
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnit:Lcom/evie/sidescreen/tiles/ads/AdUnit;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAd:Lorg/schema/evie/ads/Ad;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;->create(Lcom/evie/sidescreen/tiles/ads/AdUnit;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/TilePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/evie/sidescreen/mvp/Replacer;->replace(Lcom/evie/sidescreen/mvp/ItemPresenter;Ljava/util/List;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->bindNoAdUnit()V

    :cond_1
    :goto_0
    return-void
.end method

.method private bindNoAdUnit()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/evie/sidescreen/mvp/Replacer;->replace(Lcom/evie/sidescreen/mvp/ItemPresenter;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private handleAdUnits(Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnit;",
            ">;Z)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnit:Lcom/evie/sidescreen/tiles/ads/AdUnit;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 108
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/tiles/ads/AdUnit;

    .line 109
    invoke-virtual {v3}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->isReady()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->isLoadError()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    const/4 p2, 0x1

    .line 121
    :cond_3
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAd:Lorg/schema/evie/ads/Ad;

    invoke-virtual {v2}, Lorg/schema/evie/ads/Ad;->getPreferredProvider()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/sidescreen/tiles/ads/AdUnit;

    if-eqz p2, :cond_6

    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v3}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->isReady()Z

    move-result v4

    if-nez v4, :cond_6

    .line 126
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 129
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 131
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evie/sidescreen/tiles/ads/AdUnit;

    .line 132
    invoke-virtual {v5}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->isReady()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v3, v5

    move-object v2, v6

    :cond_6
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 143
    invoke-virtual {v3}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->isReady()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 144
    iput-object v2, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdProvider:Ljava/lang/String;

    .line 145
    iput-object v3, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnit:Lcom/evie/sidescreen/tiles/ads/AdUnit;

    .line 147
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->bindAdUnit()V

    move-object v4, v3

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 154
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->bindNoAdUnit()V

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_a

    .line 160
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/tiles/ads/AdUnit;

    if-ne p2, v4, :cond_9

    goto :goto_2

    .line 168
    :cond_9
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnitPools:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-virtual {v1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->relinquishUnusedAdUnit(Lcom/evie/models/sidescreen/data/TileType;Lcom/evie/sidescreen/tiles/ads/AdUnit;)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->handleAdUnits(Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->handleAdUnits(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method protected getAnalyticsAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationViewHolder;)V
    .locals 5

    .line 61
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnit:Lcom/evie/sidescreen/tiles/ads/AdUnit;

    if-nez p1, :cond_2

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnitPools:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->handleAdUnits(Ljava/util/Map;Z)V

    goto :goto_1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mAdUnitPools:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;

    .line 74
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-virtual {v3}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/evie/sidescreen/tiles/ads/AdUnitPool;->getAdUnit(Lcom/evie/models/sidescreen/data/TileType;)Lcom/evie/sidescreen/tiles/ads/AdUnit;

    move-result-object v1

    .line 76
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 78
    invoke-virtual {v1}, Lcom/evie/sidescreen/tiles/ads/AdUnit;->getLoadCompletable()Lio/reactivex/Completable;

    move-result-object v1

    .line 79
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v3, Lcom/evie/sidescreen/tiles/ads/-$$Lambda$AbstractAdMediationItemPresenter$nzBsqMra5xqv6RBN5jV3iwQ9lSQ;

    invoke-direct {v3, p0, p1}, Lcom/evie/sidescreen/tiles/ads/-$$Lambda$AbstractAdMediationItemPresenter$nzBsqMra5xqv6RBN5jV3iwQ9lSQ;-><init>(Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;Ljava/util/Map;)V

    .line 80
    invoke-virtual {v1, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 77
    invoke-virtual {v2, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 87
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v1

    .line 88
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    invoke-virtual {v1, v2, v3, v4}, Lio/reactivex/Completable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/evie/sidescreen/tiles/ads/-$$Lambda$AbstractAdMediationItemPresenter$0CpFxkDrr_tiVbPYd-68jRahj9M;

    invoke-direct {v2, p0, p1}, Lcom/evie/sidescreen/tiles/ads/-$$Lambda$AbstractAdMediationItemPresenter$0CpFxkDrr_tiVbPYd-68jRahj9M;-><init>(Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;Ljava/util/Map;)V

    .line 90
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->bindAdUnit()V

    :goto_1
    return-void
.end method

.method public setReplacer(Lcom/evie/sidescreen/mvp/Replacer;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;->mReplacer:Lcom/evie/sidescreen/mvp/Replacer;

    return-void
.end method

.method public shouldReportImpressionEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
