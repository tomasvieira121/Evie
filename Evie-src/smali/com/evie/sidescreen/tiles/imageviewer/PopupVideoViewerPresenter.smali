.class public Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;
.super Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;
.source "PopupVideoViewerPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/StackLayer;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;,
        Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter<",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/StackLayer;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mArticle:Lorg/schema/NewsArticle;

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
            "Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;",
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

.field private mServerDefinedAspectRatioHeight:I

.field private mServerDefinedAspectRatioWidth:I

.field private mTextureView:Landroid/view/TextureView;

.field private final mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

.field private mVideoPopupDismissListener:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Lorg/schema/MediaObject;Landroid/view/View;JLandroid/view/TextureView;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/evie/sidescreen/LayerStack;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)V
    .locals 12
    .param p10    # Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p11    # Lcom/evie/sidescreen/LayerStack;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p12    # Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p13    # Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p14    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p15    # Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p16    # Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p17    # Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p17

    .line 113
    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Lorg/schema/MediaObject;Landroid/view/View;Lcom/evie/sidescreen/LayerStack;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)V

    .line 65
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayOnce:Z

    .line 73
    sget-object v1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->IMAGE:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-static {v1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    iput-object v1, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    iput-object v1, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    .line 77
    iput-boolean v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaSelected:Z

    const-wide/16 v0, -0x1

    .line 80
    iput-wide v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoDuration:J

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoPosition:J

    const/16 v2, 0x10

    .line 86
    iput v2, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mServerDefinedAspectRatioWidth:I

    const/16 v2, 0x9

    .line 87
    iput v2, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mServerDefinedAspectRatioHeight:I

    .line 89
    iput-wide v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastStartPosition:J

    .line 91
    iput-wide v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mAutoplayDuration:J

    move-wide/from16 v0, p6

    .line 115
    iput-wide v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoPosition:J

    move-object/from16 v0, p8

    .line 116
    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mTextureView:Landroid/view/TextureView;

    move-object/from16 v0, p10

    .line 117
    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    move-object/from16 v0, p15

    .line 118
    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-object/from16 v0, p16

    .line 119
    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    move-object v0, p3

    .line 120
    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    move-object/from16 v0, p14

    .line 121
    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    move-object/from16 v0, p9

    .line 122
    iput-object v0, v11, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mVideoPopupDismissListener:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;

    return-void
.end method

.method private bindMediaWithState(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;)V
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v0

    .line 265
    sget-object v1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$1;->$SwitchMap$com$evie$sidescreen$tiles$imageviewer$PopupVideoViewerPresenter$MediaState:[I

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const v1, 0x3fe38e39

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 369
    :pswitch_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideError()V

    .line 370
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideLoading()V

    .line 371
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideVideo()V

    .line 372
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideVideoProgress(Z)V

    .line 373
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hidePlayButton()V

    goto :goto_0

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showPlayButton()V

    .line 378
    :goto_0
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->bindPreviewImage()V

    goto/16 :goto_1

    .line 360
    :pswitch_1
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideError()V

    .line 361
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideLoading()V

    .line 362
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideVideo()V

    .line 363
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideVideoProgress(Z)V

    .line 364
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hidePlayButton()V

    .line 365
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 350
    :pswitch_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideLoading()V

    .line 351
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideVideo()V

    .line 352
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideVideoProgress(Z)V

    .line 353
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v2}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showImage(Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showError()V

    .line 355
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hidePlayButton()V

    .line 356
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    goto/16 :goto_1

    .line 341
    :pswitch_3
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    .line 342
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v0

    .line 343
    iget-wide v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mAutoplayDuration:J

    iget-wide v4, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastStartPosition:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mAutoplayDuration:J

    .line 345
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastStartPosition:J

    .line 346
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoPosition:J

    goto/16 :goto_1

    .line 317
    :pswitch_4
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideError()V

    .line 318
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideLoading()V

    .line 319
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideImage()V

    .line 320
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideSnapshot()V

    .line 322
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoDuration:J

    const-wide/16 v3, -0x1

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    .line 323
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoDuration:J

    .line 326
    :cond_1
    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoDuration:J

    iget-wide v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoPosition:J

    sub-long/2addr v0, v3

    .line 327
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showVideoProgressText(J)V

    .line 328
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showVideoProgress(Z)V

    .line 329
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastStartPosition:J

    .line 331
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 332
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hidePlayButton()V

    .line 333
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->setVolume(F)V

    .line 334
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->play()V

    goto :goto_1

    .line 336
    :cond_2
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showPlayButton()V

    .line 337
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    goto :goto_1

    .line 267
    :pswitch_5
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    .line 272
    invoke-virtual {v1, p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->prepare(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 273
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$qD-k4qr_P2jN8xKB20uu5Gv2y6o;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$qD-k4qr_P2jN8xKB20uu5Gv2y6o;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    new-instance v3, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKS-eFUB5cM0zdA;

    invoke-direct {v3, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKS-eFUB5cM0zdA;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    .line 274
    invoke-virtual {p1, v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 271
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 308
    :cond_3
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideError()V

    .line 309
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1, v2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideVideoProgress(Z)V

    .line 310
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showLoading()V

    .line 311
    invoke-direct {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->bindPreviewImage()V

    .line 312
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showVideo(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    .line 313
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iget-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoPosition:J

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bindPreviewImage()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showSnapshot(Landroid/graphics/Bitmap;)V

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideSnapshot()V

    .line 214
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    const v2, 0x3fe38e39

    invoke-static {v1, v0, v2}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object v0

    .line 216
    instance-of v1, v0, Lorg/schema/VideoObject;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getPreviewUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 218
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showImage(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->hideImage()V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$YLWnVzFD6YG3gBITymICAuaSBTU(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->bindMediaWithState(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;)V

    return-void
.end method

.method public static synthetic lambda$ZVa8MPt4uJO3zKS-eFUB5cM0zdA(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/mvp/ItemPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$bindMediaWithState$6(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Ready;

    if-eqz v0, :cond_0

    .line 277
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_READY:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_0
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Error;

    if-eqz v0, :cond_1

    .line 280
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_ERROR:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_1
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getDuration()J

    move-result-wide v0

    .line 284
    check-cast p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Progress;->getPosition()J

    move-result-wide v2

    .line 285
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    sub-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showVideoProgressText(J)V

    .line 289
    iput-wide v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoDuration:J

    .line 290
    iput-wide v2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoPosition:J

    goto :goto_0

    .line 292
    :cond_2
    instance-of v0, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    instance-of p1, p1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Finished;

    if-eqz p1, :cond_5

    .line 294
    iget-boolean p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayOnce:Z

    if-eqz p1, :cond_4

    .line 295
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 298
    :cond_4
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    .line 299
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 300
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    .line 301
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->showPlayButton()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Landroidx/core/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    invoke-virtual {p1}, Lio/reactivex/subjects/Subject;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    sget-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$onBindViewHolder$1(Landroidx/core/util/Pair;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
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

.method public static synthetic lambda$onBindViewHolder$2(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Landroidx/core/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
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

    .line 169
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_LOADING:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onBindViewHolder$3(Ljava/lang/Boolean;Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_READY:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    if-ne p1, p0, :cond_0

    .line 181
    sget-object p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_PAUSED:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static synthetic lambda$onBindViewHolder$4(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->dismissPopup(Z)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$5(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->handleUnanticipatedException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private selectMediaAspectRatio(Landroid/content/Context;)V
    .locals 3

    .line 228
    iget-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaSelected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaSelected:Z

    .line 235
    invoke-static {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result p1

    .line 236
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    const v2, 0x3fe38e39

    invoke-static {v1, p1, v2}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object p1

    .line 238
    instance-of v1, p1, Lorg/schema/VideoObject;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 246
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

    .line 247
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

    .line 256
    :cond_6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 259
    iput v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mServerDefinedAspectRatioWidth:I

    .line 260
    iput p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mServerDefinedAspectRatioHeight:I

    return-void
.end method


# virtual methods
.method createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;
    .locals 1

    .line 128
    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method bridge synthetic createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public dismissPopup(Z)V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_PAUSED:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget-object v0, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->mVideo:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mTextureView:Landroid/view/TextureView;

    .line 418
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mVideoPopupDismissListener:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;

    iget-wide v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLastKnownVideoPosition:J

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mTextureView:Landroid/view/TextureView;

    invoke-interface {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$VideoPopupDismissListener;->onPopupDismiss(JLandroid/view/TextureView;)V

    .line 419
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    invoke-virtual {v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->loseSpecialFocus(Ljava/lang/Object;)V

    .line 420
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->dismissPopup(Z)V

    return-void
.end method

.method public getPopupType()I
    .locals 1

    .line 133
    sget v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->ID:I

    return v0
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 3

    .line 139
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    .line 141
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->initialize()V

    .line 143
    iget-object p1, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->selectMediaAspectRatio(Landroid/content/Context;)V

    .line 146
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mViewHolder:Lcom/evie/sidescreen/mvp/MvpViewHolder;

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;

    iget v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mServerDefinedAspectRatioWidth:I

    iget v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mServerDefinedAspectRatioHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerViewHolder;->setVideoFrameAspectRatio(II)V

    .line 149
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    .line 150
    invoke-virtual {v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->register(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$usAR21Wj9EIH8pI58Ljt4un3Wnc;

    invoke-direct {v2, v1}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$usAR21Wj9EIH8pI58Ljt4un3Wnc;-><init>(Lio/reactivex/subjects/Subject;)V

    .line 151
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 152
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    invoke-virtual {p1, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->takeSpecialFocus(Ljava/lang/Object;)V

    .line 154
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mArticle:Lorg/schema/NewsArticle;

    invoke-virtual {p1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;->VIDEO_PREVIEW:Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter$MediaState;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlay:Lio/reactivex/subjects/Subject;

    sget-object v2, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;->INSTANCE:Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$jLZC61SXYy7GWujl-NhzjNKZotQ;

    .line 162
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$OnVROc6N6Cl1Yp88-a6RgpcO3uc;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$OnVROc6N6Cl1Yp88-a6RgpcO3uc;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    .line 163
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$8o_BBfWi55ZZ94g8-7GHkhr1PsM;->INSTANCE:Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$8o_BBfWi55ZZ94g8-7GHkhr1PsM;

    .line 165
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->debounce(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$9shTIFMQ5cPZm5TmVk0Ax_g2E34;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$9shTIFMQ5cPZm5TmVk0Ax_g2E34;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKS-eFUB5cM0zdA;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKS-eFUB5cM0zdA;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    .line 166
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 175
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mFocus:Lio/reactivex/subjects/Subject;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mMediaState:Lio/reactivex/subjects/Subject;

    sget-object v2, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;->INSTANCE:Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$7nGbUjQBMzf3J9CO0iZcyLCT_Fg;

    .line 176
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 187
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$YLWnVzFD6YG3gBITymICAuaSBTU;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$YLWnVzFD6YG3gBITymICAuaSBTU;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKS-eFUB5cM0zdA;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$ZVa8MPt4uJO3zKS-eFUB5cM0zdA;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    .line 188
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 175
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 195
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 196
    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;->getObservableForEvent(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$nKzsgqDHrXzxOm0CJ5wFIHCzazc;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$nKzsgqDHrXzxOm0CJ5wFIHCzazc;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    new-instance v2, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$YRkj7hkedazi5GDu0g8uubQOyxE;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupVideoViewerPresenter$YRkj7hkedazi5GDu0g8uubQOyxE;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;)V

    .line 197
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected onUnbindViewHolder()V
    .locals 1

    .line 409
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->onUnbindViewHolder()V

    .line 410
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mPlayer:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->dispose()V

    .line 411
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupVideoViewerPresenter;->mVideoFocusHandler:Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;

    invoke-virtual {v0, p0}, Lcom/evie/sidescreen/exoplayer/VideoFocusHandler;->unregister(Ljava/lang/Object;)V

    return-void
.end method
