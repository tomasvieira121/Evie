.class public Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;
.super Ljava/lang/Object;
.source "OathVideoHandler.java"

# interfaces
.implements Lcom/evie/sidescreen/relatedcontent/VideoHandler;


# instance fields
.field private mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mContext:Landroid/content/Context;

.field private mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

.field private mIsInitialized:Z

.field private mIsPlayingOathAd:Z

.field private mOathAdImpressionDuration:J

.field private mOathAdLastStartPosition:J

.field mOathContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mOathPlayerBinder:Lcom/aol/mobile/sdk/player/Binder;

.field private mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

.field private mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

.field mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mOathVideoId:Ljava/lang/String;

.field private mObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalOathViewPortHeight:I

.field private mPlaybackControls:Landroid/view/View;

.field private mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

.field private mShouldReportAdImpressionEvent:Z

.field private mSquishedOathAdHeight:I

.field private mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

.field private mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

.field private originalOathContainerParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Lio/reactivex/disposables/CompositeDisposable;Landroid/view/View;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;",
            ">;",
            "Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;",
            "Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;",
            "Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            "Landroid/view/View;",
            "Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    .line 56
    iput v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mSquishedOathAdHeight:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsInitialized:Z

    .line 76
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 77
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mObservableProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mContext:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    .line 80
    iput-object p4, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 81
    iput-object p5, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 82
    iput-object p6, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mPlaybackControls:Landroid/view/View;

    .line 83
    iput-object p7, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    return-void
.end method

.method private destroyOathBinder()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerBinder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Binder;->onDestroy()V

    return-void
.end method

.method private disposeAll()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->onAdInterrupted()V

    .line 168
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->disposeOathPlayer()V

    .line 169
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->destroyOathBinder()V

    .line 170
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 171
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method private disposeOathPlayer()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->dispose()V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    :cond_0
    return-void
.end method

.method private endAdImpression(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 410
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mShouldReportAdImpressionEvent:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdImpressionDuration:J

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getMinimumImpressionDuration()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "entity_id"

    .line 415
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ad_network"

    .line 416
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "item_type"

    const-string p2, "ad"

    .line 417
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "parent_entity_id"

    .line 418
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {p2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getVideoObjectList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schema/VideoObject;

    invoke-virtual {p2}, Lorg/schema/VideoObject;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "screen_position_start"

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "duration"

    .line 420
    iget-wide v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdImpressionDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {p1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->trackAnalyticsModel()Lcom/evie/sidescreen/analytics/AnalyticsModel;

    move-result-object p1

    const-string p2, "ev_ss_article_impression"

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-wide/16 p1, 0x0

    .line 425
    iput-wide p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdLastStartPosition:J

    .line 426
    iput-wide p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdImpressionDuration:J

    .line 427
    iput-boolean v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mShouldReportAdImpressionEvent:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private enterOathFullScreenMode()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setToolBarVisibility(Z)V

    .line 226
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private exitOathFullScreenMode()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setToolBarVisibility(Z)V

    .line 237
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->exitFullScreen()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    .line 242
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPlayer()Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    .line 244
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 245
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPlayer()Lcom/aol/mobile/sdk/player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->originalOathContainerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsPlayingOathAd:Z

    if-eqz v0, :cond_1

    .line 250
    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    iget v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mSquishedOathAdHeight:I

    sub-int v1, v0, v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->setOathPlayerHeight(I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$Apn2occQoQeukxxZQRqG8NOVV1k(Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->oathPlayerStateHandler(Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;)V

    return-void
.end method

.method private oathPlayerStateHandler(Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;)V
    .locals 6

    .line 317
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderReady;

    if-eqz v0, :cond_0

    .line 318
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathVideoId:Ljava/lang/String;

    .line 319
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->createPlayer(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getStartPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    goto/16 :goto_1

    .line 322
    :cond_0
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Ready;

    if-eqz v0, :cond_2

    .line 323
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    new-instance v0, Lcom/evie/sidescreen/tiles/articles/BlankOathContentControlsView;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/articles/BlankOathContentControlsView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->setContentControls(Lcom/aol/mobile/sdk/controls/ContentControls;)V

    .line 324
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPlayer()Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerBinder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/Binder;->setPlayer(Lcom/aol/mobile/sdk/player/Player;)V

    .line 327
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerBinder:Lcom/aol/mobile/sdk/player/Binder;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/Binder;->setPlayerView(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getStartPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getStartDuration()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->seek(JJ)V

    .line 331
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setStartPosition(J)V

    .line 333
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->play()V

    goto/16 :goto_1

    .line 335
    :cond_2
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Play;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 336
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 337
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getViewportProperties()Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 339
    iget p1, p1, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iput p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    goto/16 :goto_1

    .line 341
    :cond_3
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;

    if-eqz v0, :cond_4

    .line 342
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->getPosition()J

    move-result-wide v0

    .line 343
    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;->getDuration()J

    move-result-wide v2

    .line 344
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    .line 345
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {p1, v2, v3}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    goto/16 :goto_1

    .line 347
    :cond_4
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Pause;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 348
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    goto/16 :goto_1

    .line 350
    :cond_5
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Finished;

    if-eqz v0, :cond_6

    .line 351
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {p1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->onVideoEnded()V

    goto/16 :goto_1

    .line 353
    :cond_6
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    if-eqz v0, :cond_7

    .line 354
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 355
    :cond_7
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;

    if-eqz v0, :cond_b

    .line 359
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsPlayingOathAd:Z

    if-nez v0, :cond_a

    iget-wide v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdLastStartPosition:J

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-lez v0, :cond_a

    .line 360
    iput-boolean v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsPlayingOathAd:Z

    .line 361
    iput-boolean v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mShouldReportAdImpressionEvent:Z

    .line 362
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mPlaybackControls:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getViewportProperties()Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 373
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/evie/sidescreen/R$dimen;->ss_oath_ad_fallback_controller_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 374
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getIsFullScreen()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_8
    iget v0, v0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    :goto_0
    iput v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mSquishedOathAdHeight:I

    .line 375
    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mSquishedOathAdHeight:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getIsFullScreen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 376
    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    iget v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mSquishedOathAdHeight:I

    sub-int v1, v0, v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->setOathPlayerHeight(I)V

    .line 380
    :cond_9
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    if-eqz v0, :cond_a

    .line 381
    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->turnOffControls()V

    .line 385
    :cond_a
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;->getPosition()J

    move-result-wide v0

    .line 386
    iget-wide v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdImpressionDuration:J

    iget-wide v4, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdLastStartPosition:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdImpressionDuration:J

    .line 387
    iput-wide v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathAdLastStartPosition:J

    goto :goto_1

    .line 389
    :cond_b
    instance-of v0, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;

    if-eqz v0, :cond_e

    .line 390
    iput-boolean v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsPlayingOathAd:Z

    .line 391
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mPlaybackControls:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getIsFullScreen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 394
    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOriginalOathViewPortHeight:I

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->setOathPlayerHeight(I)V

    .line 397
    :cond_c
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    if-eqz v0, :cond_d

    .line 398
    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->turnOnControls()V

    .line 401
    :cond_d
    check-cast p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;

    iget-object p1, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;->adProps:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    const-string v0, "oath"

    .line 402
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->endAdImpression(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 403
    :cond_e
    instance-of p1, p1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdClick;

    if-eqz p1, :cond_f

    .line 404
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const-string v0, "oath"

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getCurrentAdProperties()Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    move-result-object v1

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->trackAdTap(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_1
    return-void
.end method

.method private pauseOathBinder()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerBinder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Binder;->onPause()V

    return-void
.end method

.method private pauseOathVideo()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->pause()V

    return-void
.end method

.method private playOathVideo()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->play()V

    return-void
.end method

.method private resetOathPlayer()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->reset()V

    return-void
.end method

.method private resumeOathBinder()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerBinder:Lcom/aol/mobile/sdk/player/Binder;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Binder;->onResume()V

    return-void
.end method

.method private setOathPlayerHeight(I)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {v2, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setVideoContainerParams()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getScreenWidthPixels()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getMediaAspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getAspectRatioLowerLimit()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    int-to-float v1, v0

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getMediaAspectRatio()F

    move-result v2

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getDefaultAspectRatio()F

    move-result v2

    :goto_0
    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 131
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->originalOathContainerParams:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getVideoObjectList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getVideoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathVideoId:Ljava/lang/String;

    return-void
.end method

.method private startObservingOathPlayer()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    .line 257
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    .line 262
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k;-><init>(Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;)V

    .line 263
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    .line 267
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public enterFullscreen()V
    .locals 13

    .line 198
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->enterOathFullScreenMode()V

    .line 204
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPosition()J

    move-result-wide v1

    .line 206
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getDuration()J

    move-result-wide v4

    .line 207
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getPlayer()Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-boolean v3, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    move-wide v8, v1

    move v12, v3

    move-wide v10, v4

    goto :goto_0

    :cond_0
    move-wide v8, v1

    move-wide v10, v4

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    move-wide v8, v1

    move-wide v10, v8

    const/4 v12, 0x1

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v6, 0x0

    .line 215
    iget-boolean v7, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsPlayingOathAd:Z

    invoke-static/range {v6 .. v12}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->newInstance(ZZJJZ)Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    .line 216
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 217
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 219
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mFullScreenOathControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    if-eqz v1, :cond_2

    const v2, 0x1020002

    .line 220
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public exitFullscreen()V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->exitOathFullScreenMode()V

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initializeParams()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getScreenWidthPixels()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v2, v0

    .line 98
    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v3}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getDefaultAspectRatio()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsInitialized:Z

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsInitialized:Z

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->disposeAll()V

    .line 163
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerView:Lcom/aol/mobile/sdk/player/view/PlayerView;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/view/PlayerView;->dispose()V

    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->pauseOathBinder()V

    .line 156
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->onVideoPause()V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->resumeOathBinder()V

    .line 141
    invoke-virtual {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->onVideoPlay()V

    .line 144
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    .line 145
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k;-><init>(Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;)V

    .line 146
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    .line 150
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onAdInterrupted()V
    .locals 2

    .line 438
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsPlayingOathAd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 439
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mIsPlayingOathAd:Z

    .line 440
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getCurrentAdProperties()Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "oath"

    .line 442
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->endAdImpression(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->pauseOathVideo()V

    :cond_0
    return-void
.end method

.method public onVideoPlay()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->playOathVideo()V

    :cond_0
    return-void
.end method

.method public onVideoScrub(J)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->seek(JJ)V

    .line 192
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerObservable:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->play()V

    :cond_0
    return-void
.end method

.method public samePlayerTransition()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->pauseOathVideo()V

    .line 122
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->setVideoContainerParams()V

    .line 123
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->resetOathPlayer()V

    return-void
.end method

.method public setUp()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 107
    new-instance v0, Lcom/aol/mobile/sdk/player/Binder;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/Binder;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathPlayerBinder:Lcom/aol/mobile/sdk/player/Binder;

    .line 108
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->originalOathContainerParams:Landroid/view/ViewGroup$LayoutParams;

    .line 109
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->setVideoContainerParams()V

    .line 110
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->startObservingOathPlayer()V

    return-void
.end method

.method public tearDown()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->disposeAll()V

    .line 116
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/OathVideoHandler;->mOathContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
