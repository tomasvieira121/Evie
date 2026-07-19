.class public Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;
.super Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;
.source "ArticleTileHeroVideoPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter<",
        "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mArticle:Lorg/schema/NewsArticle;

.field private mAutoPlayObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPlayOn:Ljava/lang/Boolean;

.field private mAutoplayDuration:J

.field private final mFocus:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastKnownVideoDuration:J

.field private mLastKnownVideoPosition:J

.field private mLastStartPosition:J

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

.field private mMediaSelected:Z

.field private final mMediaState:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlay:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayOnce:Z

.field private final mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

.field private final mPopupVideoViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;

.field private mServerDefinedAspectRatioHeight:I

.field private mServerDefinedAspectRatioWidth:I

.field private final mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

.field private final mVideoFocusPriority:I


# direct methods
.method public constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;Lio/reactivex/Observable;)V
    .locals 2
    .param p4    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p8    # Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p9    # Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p10    # Lio/reactivex/Observable;
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
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            "Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p3, p7}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 78
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    const/4 p3, 0x1

    .line 79
    iput-boolean p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayOnce:Z

    .line 86
    sget-object p3, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->IMAGE:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-static {p3}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    const/4 p3, 0x0

    .line 88
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-static {p7}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p7

    iput-object p7, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    .line 90
    iput-boolean p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaSelected:Z

    .line 93
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayOn:Ljava/lang/Boolean;

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoDuration:J

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoPosition:J

    const/16 p3, 0x10

    .line 102
    iput p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioWidth:I

    const/16 p3, 0x9

    .line 103
    iput p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioHeight:I

    .line 105
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastStartPosition:J

    .line 107
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoplayDuration:J

    .line 122
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    .line 123
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 124
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    .line 125
    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result p1

    iput p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusPriority:I

    .line 126
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    .line 127
    iput-object p8, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    .line 128
    iput-object p10, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayObservable:Lio/reactivex/Observable;

    .line 129
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayOn:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 130
    iput-object p9, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPopupVideoViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;

    return-void
.end method

.method private bindMediaWithState(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;)V
    .locals 6

    .line 394
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v0

    .line 395
    sget-object v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$1;->$SwitchMap$com$evie$sidescreen$tiles$articles$ArticleTileHeroVideoPresenter$MediaState:[I

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const v1, 0x3fe38e39

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 502
    :pswitch_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideError()V

    .line 503
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideLoading()V

    .line 504
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideVideo()V

    .line 505
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideVideoProgress(Z)V

    .line 506
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideSnapshot()V

    .line 507
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hidePlayButton()V

    goto :goto_0

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showPlayButton()V

    .line 512
    :goto_0
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->bindPreviewImage()V

    goto/16 :goto_1

    .line 493
    :pswitch_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideError()V

    .line 494
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideLoading()V

    .line 495
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideVideo()V

    .line 496
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideVideoProgress(Z)V

    .line 497
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hidePlayButton()V

    .line 498
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 483
    :pswitch_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideLoading()V

    .line 484
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideVideo()V

    .line 485
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideVideoProgress(Z)V

    .line 486
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showImage(Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showError()V

    .line 488
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hidePlayButton()V

    .line 489
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    goto/16 :goto_1

    .line 474
    :pswitch_3
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    .line 475
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v0

    .line 476
    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoplayDuration:J

    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastStartPosition:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoplayDuration:J

    .line 478
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastStartPosition:J

    .line 479
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoPosition:J

    goto/16 :goto_1

    .line 449
    :pswitch_4
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideError()V

    .line 450
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideLoading()V

    .line 451
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideImage()V

    .line 452
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideSnapshot()V

    .line 454
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoDuration:J

    const-wide/16 v3, -0x1

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    .line 455
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoDuration:J

    .line 458
    :cond_1
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoDuration:J

    iget-wide v3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoPosition:J

    sub-long/2addr v0, v3

    .line 459
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showVideoProgressText(J)V

    .line 460
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showVideoProgress(Z)V

    .line 461
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastStartPosition:J

    .line 463
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 464
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hidePlayButton()V

    .line 465
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->setVolume(F)V

    .line 466
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->play()V

    goto :goto_1

    .line 468
    :cond_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showPlayButton()V

    .line 469
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    goto :goto_1

    .line 397
    :pswitch_5
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    .line 402
    invoke-virtual {v1, p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->prepare(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 403
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$I9qYm3xWY14XsC8YbZpesmsV-u8;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$I9qYm3xWY14XsC8YbZpesmsV-u8;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    new-instance v3, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$NPiPJtbeomc1s94zP66a_102LQ8;

    invoke-direct {v3, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$NPiPJtbeomc1s94zP66a_102LQ8;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    .line 404
    invoke-virtual {p1, v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 401
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 437
    :cond_3
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showLoading()V

    .line 441
    :pswitch_6
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->bindPreviewImage()V

    .line 442
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideError()V

    .line 443
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideVideoProgress(Z)V

    .line 444
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoPosition:J

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    .line 445
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showVideo(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bindPreviewImage()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    const v2, 0x3fe38e39

    invoke-static {v1, v0, v2}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object v0

    .line 346
    instance-of v1, v0, Lorg/schema/VideoObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showImage(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideImage()V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$NPiPJtbeomc1s94zP66a_102LQ8(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$OHWxeemKUi8duUSqtEVr8Y4oQJ0(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->bindMediaWithState(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;)V

    return-void
.end method

.method public static synthetic lambda$bindMediaWithState$8(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Ready;

    if-eqz v0, :cond_0

    .line 407
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_READY:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_0
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Error;

    if-eqz v0, :cond_1

    .line 410
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_ERROR:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    :cond_1
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getDuration()J

    move-result-wide v0

    .line 414
    check-cast p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;->getPosition()J

    move-result-wide v2

    .line 415
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    sub-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showVideoProgressText(J)V

    .line 419
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoDuration:J

    .line 420
    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoPosition:J

    goto :goto_0

    .line 422
    :cond_2
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 423
    :cond_3
    instance-of p1, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Finished;

    if-eqz p1, :cond_5

    .line 424
    iget-boolean p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayOnce:Z

    if-eqz p1, :cond_4

    .line 425
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 428
    :cond_4
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    .line 429
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 430
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    .line 431
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showPlayButton()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayOn:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Landroidx/core/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$onBindViewHolder$2(Landroidx/core/util/Pair;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    iget-object p0, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onBindViewHolder$3(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Landroidx/core/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_LOADING:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onBindViewHolder$4(Ljava/lang/Boolean;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_READY:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    if-ne p1, p0, :cond_0

    .line 316
    sget-object p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PAUSED:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    return-object p0

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$onBindViewHolder$5(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->SNAPSHOT:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 324
    :cond_1
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onBindViewHolder$6(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->bindPreviewImage()V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$7(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private selectMediaAspectRatio(Landroid/content/Context;)V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaSelected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaSelected:Z

    .line 365
    invoke-static {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result p1

    .line 366
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v0

    const v1, 0x3fe38e39

    invoke-static {v0, p1, v1}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object p1

    .line 368
    instance-of v0, p1, Lorg/schema/VideoObject;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 376
    invoke-virtual {p1}, Lorg/schema/MediaObject;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/schema/MediaObject;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 377
    :goto_0
    invoke-virtual {p1}, Lorg/schema/MediaObject;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/schema/MediaObject;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v0, p1

    :cond_3
    move p1, v0

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    const/16 v0, 0x10

    const/16 p1, 0x9

    .line 386
    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 389
    iput v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioWidth:I

    .line 390
    iput p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioHeight:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;
    .locals 1

    .line 258
    new-instance v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;-><init>(Landroid/view/View;)V

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

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "trending_video"

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_news_article"

    .line 150
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoplay_duration"

    .line 151
    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoplayDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_length"

    .line 152
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 248
    sget v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->ID:I

    return v0
.end method

.method public getVisibilityThreshold(Landroid/content/Context;)F
    .locals 1

    .line 218
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->selectMediaAspectRatio(Landroid/content/Context;)V

    .line 225
    iget p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3fe38e39

    .line 230
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr p1, v0

    const v0, 0x3f03a83b

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V
    .locals 3

    .line 264
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/articles/AbstractHeroViewHolder;)V

    .line 265
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->initialize()V

    const-string v0, "imageVideo"

    .line 268
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayOnce:Z

    .line 273
    :cond_0
    iget-object v0, p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->selectMediaAspectRatio(Landroid/content/Context;)V

    .line 276
    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioWidth:I

    iget v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mServerDefinedAspectRatioHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->setVideoFrameAspectRatio(II)V

    .line 279
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    .line 280
    invoke-virtual {v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->register(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$usAR21Wj9EIH8pI58Ljt4un3Wnc;

    invoke-direct {v2, v1}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$usAR21Wj9EIH8pI58Ljt4un3Wnc;-><init>(Lio/reactivex/subjects/Subject;)V

    .line 281
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 283
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 285
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 288
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayObservable:Lio/reactivex/Observable;

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$H-g-4WgcHHKQs6MiZ6fby4o1Sw0;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$H-g-4WgcHHKQs6MiZ6fby4o1Sw0;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    .line 289
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 288
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 296
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    sget-object v2, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;->INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;

    .line 297
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$McIA2liXTpixAjUhtu2M19miOlY;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$McIA2liXTpixAjUhtu2M19miOlY;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    .line 298
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;->INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$Dd4NrWerX38_fInxLpFlTcPypJU;

    .line 300
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->debounce(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$MmVNg6Et5hxuterdGEAU5cgl9uc;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$MmVNg6Et5hxuterdGEAU5cgl9uc;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$NPiPJtbeomc1s94zP66a_102LQ8;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$NPiPJtbeomc1s94zP66a_102LQ8;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    .line 301
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 296
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 310
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v2, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;->INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$fETDiGzYJkc0GNFtBRTP7kXIHLc;

    .line 311
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$p9SLvWew3ZQvoHmRC3wAx0EOOts;->INSTANCE:Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$p9SLvWew3ZQvoHmRC3wAx0EOOts;

    .line 320
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->distinctUntilChanged(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 327
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$OHWxeemKUi8duUSqtEVr8Y4oQJ0;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$OHWxeemKUi8duUSqtEVr8Y4oQJ0;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$NPiPJtbeomc1s94zP66a_102LQ8;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$NPiPJtbeomc1s94zP66a_102LQ8;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    .line 328
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 310
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 335
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 336
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$lEeG6-LGRmy83_DAKG9iX7OkJtU;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$lEeG6-LGRmy83_DAKG9iX7OkJtU;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$kNaQ3UNdb1TW94v7UTP43bYvoE4;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/tiles/articles/-$$Lambda$ArticleTileHeroVideoPresenter$kNaQ3UNdb1TW94v7UTP43bYvoE4;-><init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;)V

    .line 337
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 335
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onMediaClick(Landroid/view/View;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V
    .locals 12

    .line 158
    invoke-super {p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onMediaClick(Landroid/view/View;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;)V

    .line 159
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    .line 160
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "imageVideo"

    .line 164
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v0}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "trending_gif"

    .line 165
    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->trackTap(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p2

    const/16 v0, 0x44c

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p2, v0, v1}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 169
    invoke-virtual {v6}, Lorg/schema/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 170
    invoke-virtual {v6}, Lorg/schema/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v6}, Lorg/schema/MediaObject;->getExternalUrl()Ljava/lang/String;

    move-result-object v4

    .line 172
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    iget-object p2, p2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Landroid/view/TextureView;

    .line 173
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPopupVideoViewerPresenterFactory:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v8

    move-object v7, p1

    move-object v11, p0

    invoke-virtual/range {v2 .. v11}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenterFactory;->create(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Lorg/schema/MediaObject;Landroid/view/View;JLandroid/view/TextureView;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    iget-object p2, p2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    .line 175
    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V

    .line 176
    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->bindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V

    .line 178
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->showPopup()V

    goto :goto_0

    :cond_1
    const-string p2, "trending_video"

    .line 181
    invoke-virtual {p0, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->trackTap(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 184
    instance-of v0, p2, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    if-eqz v0, :cond_2

    .line 185
    check-cast p2, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->setArticleResult(Lorg/schema/NewsArticle;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 191
    :cond_2
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {p2, v0}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 192
    sget-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_ARTICLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    .line 195
    sget-object v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->EXTRA_START_POSITION:Ljava/lang/String;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onPopupDismiss(JLandroid/view/TextureView;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 562
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p3}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showSnapshot(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p3, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->hideSnapshot()V

    .line 566
    :goto_0
    iput-wide p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastKnownVideoPosition:J

    .line 567
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayOn:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 568
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoViewHolder;->showPlayButton()V

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object p2, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;->SNAPSHOT:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter$MediaState;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 1

    .line 551
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onUnbindViewHolder()V

    .line 552
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->dispose()V

    .line 553
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    invoke-virtual {v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 6

    .line 135
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractHeroPresenter;->onVisibilityChanged(Z)V

    .line 136
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoPlayOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusPriority:I

    invoke-virtual {p1, v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->requestFocus(ILjava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    iget v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mVideoFocusPriority:I

    invoke-virtual {p1, v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->unrequestFocus(ILjava/lang/Object;)V

    .line 141
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoplayDuration:J

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mLastStartPosition:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAutoplayDuration:J

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

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    .line 207
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_news_article"

    .line 208
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_content_tile"

    .line 209
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attribute_screen_info"

    .line 210
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p1, v1, v0}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
