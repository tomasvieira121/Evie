.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;
.source "ArticleTileHeroOathPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mArticle:Lorg/schema/NewsArticle;

.field private mAutoPlayObserver:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPlayOn:Z

.field private mAutoplayDuration:J

.field private mContext:Landroid/content/Context;

.field private mFocusSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastKnownVideoDuration:J

.field private mLastKnownVideoPosition:J

.field private mLastStartPosition:J

.field private mOathAdImpressionDuration:J

.field private mOathAdLastStartPosition:J

.field private mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

.field private mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

.field private mPlayer:Lcom/aol/mobile/sdk/player/Player;

.field private mShouldReportAdImpressionEvent:Z

.field private mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

.field private final mVideoFocusPriority:I


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Landroid/content/Context;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;Lio/reactivex/Observable;)V
    .locals 2
    .param p4    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p8    # Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p9    # Lio/reactivex/Observable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            "Lorg/schema/NewsArticle;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            "Lcom/evie/sidescreen/ActivityStarter;",
            "Landroid/content/Context;",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p3, p6}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    const/4 p3, 0x0

    .line 62
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-static {p6}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p6

    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mFocusSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 64
    iput-boolean p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoPlayOn:Z

    const-wide/16 v0, -0x1

    .line 66
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoplayDuration:J

    .line 67
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastStartPosition:J

    .line 68
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    .line 69
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    .line 71
    iput-boolean p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mShouldReportAdImpressionEvent:Z

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdImpressionDuration:J

    .line 73
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdLastStartPosition:J

    .line 91
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 93
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mVideoFocusPriority:I

    .line 94
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 95
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    .line 96
    iput-object p8, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    .line 97
    iput-object p9, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoPlayObserver:Lio/reactivex/Observable;

    return-void
.end method

.method private endAdImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 266
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->shouldReportImpressionEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mShouldReportAdImpressionEvent:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdImpressionDuration:J

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "entity_id"

    .line 271
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ad_network"

    .line 272
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_type"

    const-string p2, "ad"

    .line 273
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "parent_entity_id"

    .line 274
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "screen_position_start"

    const/4 p2, 0x0

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "duration"

    .line 276
    iget-wide v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdImpressionDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_article_impression"

    invoke-virtual {p1, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 v0, 0x0

    .line 281
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdLastStartPosition:J

    .line 282
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdImpressionDuration:J

    .line 283
    iput-boolean p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mShouldReportAdImpressionEvent:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$QbkQZgG8DeL5eN6I677xgYS_FtA(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$WGBVKP94vFA0Ahz5YoArmdXmywc(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->oathPlayerStateHandler(Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoPlayOn:Z

    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showVideoProgressText(J)V

    .line 129
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    .line 130
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$WGBVKP94vFA0Ahz5YoArmdXmywc;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$WGBVKP94vFA0Ahz5YoArmdXmywc;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;)V

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$QbkQZgG8DeL5eN6I677xgYS_FtA;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$QbkQZgG8DeL5eN6I677xgYS_FtA;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;)V

    .line 131
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    .line 135
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->reset()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->dispose()V

    .line 143
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->showPreviewState()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->play()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->pause()V

    :goto_0
    return-void
.end method

.method private oathPlayerStateHandler(Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;)V
    .locals 6

    .line 180
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderNotReady;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 182
    :cond_0
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderReady;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 183
    iget-boolean p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoPlayOn:Z

    if-eqz p1, :cond_e

    .line 184
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hidePlayButton()V

    .line 185
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showLoading()V

    .line 186
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->createPlayer(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    :cond_1
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Ready;

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_4

    .line 190
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showVideoProgressText(J)V

    .line 191
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPlayer()Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    .line 192
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showVideo(Lcom/aol/mobile/sdk/player/Player;)V

    .line 194
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->seek(JJ)V

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mFocusSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoPlayOn:Z

    if-eqz p1, :cond_e

    .line 199
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->play()V

    goto/16 :goto_1

    .line 201
    :cond_4
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Play;

    if-eqz v0, :cond_5

    .line 202
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastStartPosition:J

    .line 204
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideError()V

    .line 205
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideLoading()V

    .line 206
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hidePlayButton()V

    .line 207
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideImage()V

    .line 208
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideSnapshot()V

    goto/16 :goto_1

    .line 209
    :cond_5
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;

    if-eqz v0, :cond_8

    .line 210
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->getPosition()J

    move-result-wide v0

    .line 211
    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->getDuration()J

    move-result-wide v4

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    cmp-long p1, v4, v2

    if-nez p1, :cond_6

    goto :goto_0

    .line 216
    :cond_6
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    .line 217
    iput-wide v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    .line 219
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showVideoProgressText(J)V

    goto/16 :goto_1

    .line 214
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showVideoProgressText(J)V

    goto/16 :goto_1

    .line 222
    :cond_8
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Pause;

    if-eqz v0, :cond_9

    .line 223
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPosition()J

    move-result-wide v0

    .line 224
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getDuration()J

    move-result-wide v2

    .line 225
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoPosition:J

    .line 226
    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastKnownVideoDuration:J

    .line 228
    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoplayDuration:J

    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastStartPosition:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoplayDuration:J

    .line 229
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mLastStartPosition:J

    goto :goto_1

    .line 230
    :cond_9
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Finished;

    if-eqz v0, :cond_a

    .line 231
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showPlayButton()V

    .line 232
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->seek(JJ)V

    goto :goto_1

    .line 234
    :cond_a
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showError()V

    .line 236
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 238
    :cond_b
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mShouldReportAdImpressionEvent:Z

    .line 240
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;

    .line 241
    iget-wide v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;->position:J

    .line 242
    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdImpressionDuration:J

    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdLastStartPosition:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdImpressionDuration:J

    .line 243
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathAdLastStartPosition:J

    goto :goto_1

    .line 244
    :cond_c
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;

    if-eqz v0, :cond_d

    .line 245
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;

    iget-object p1, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;->adProps:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    const-string v0, "oath"

    .line 246
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->endAdImpression(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_d
    instance-of p1, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdClick;

    if-eqz p1, :cond_e

    const-string p1, "oath"

    .line 248
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getCurrentAdProperties()Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->trackAdTap(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_1
    return-void
.end method

.method private showPreviewState()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/VideoObject;

    .line 169
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideVideo()V

    .line 170
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideLoading()V

    .line 171
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideError()V

    .line 172
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showImage(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideSnapshot()V

    .line 174
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->hideVideoProgressText()V

    .line 175
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showPlayButton()V

    return-void
.end method

.method private trackAdTap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "entity_id"

    .line 256
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ad_network"

    .line 257
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_type"

    const-string p2, "ad"

    .line 258
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "parent_entity_id"

    .line 259
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2}, Lorg/schema/NewsArticle;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_screen_info"

    .line 260
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string p2, "ev_ss_tap"

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;
    .locals 2

    .line 107
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method protected getAnalyticsAttributes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_video"

    .line 306
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 307
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoplay_duration"

    .line 308
    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoplayDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_length"

    .line 309
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v2}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 102
    sget v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;)V
    .locals 3

    .line 112
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V

    .line 115
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    .line 117
    invoke-virtual {v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->register(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mFocusSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$IjiAOkWhxS-5xOonf6ETUmd2fHU;

    invoke-direct {v2, v1}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$IjiAOkWhxS-5xOonf6ETUmd2fHU;-><init>(Lio/reactivex/subjects/BehaviorSubject;)V

    .line 118
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 121
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->showPreviewState()V

    .line 123
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAutoPlayObserver:Lio/reactivex/Observable;

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$APYAI8wnZOezhUKurjaQwR2lcLo;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$APYAI8wnZOezhUKurjaQwR2lcLo;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;)V

    .line 124
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 153
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mFocusSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$fJYXRKDPxYJCg3k5tl16sSgV9JM;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroOathPresenter$fJYXRKDPxYJCg3k5tl16sSgV9JM;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;)V

    .line 155
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onMediaClick(Landroid/view/View;)V
    .locals 4

    .line 315
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onMediaClick(Landroid/view/View;)V

    const-string v0, "trending_video"

    .line 318
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->trackTap(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    instance-of v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    if-eqz v1, :cond_0

    .line 322
    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->setArticleResult(Lorg/schema/NewsArticle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 329
    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/Player;->pause()V

    .line 332
    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_START_POSITION:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v2}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 333
    sget-object v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_START_DURATION:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v2}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :catch_0
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathViewHolder;->showVideo(Lcom/aol/mobile/sdk/player/Player;)V

    .line 353
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onUnbindViewHolder()V

    .line 354
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->reset()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    .line 289
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mVideoFocusPriority:I

    invoke-virtual {p1, v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->requestFocus(ILjava/lang/Object;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mVideoFocusPriority:I

    invoke-virtual {p1, v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->unrequestFocus(ILjava/lang/Object;)V

    .line 294
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getCurrentAdProperties()Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "oath"

    .line 296
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->endAdImpression(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldShowTopTileDivider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected trackTap(Ljava/lang/String;)V
    .locals 2

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    .line 343
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_news_article"

    .line 344
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_content_tile"

    .line 345
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_screen_info"

    .line 346
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p1, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
