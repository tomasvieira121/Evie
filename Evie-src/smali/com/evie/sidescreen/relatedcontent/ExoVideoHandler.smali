.class public Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;
.super Ljava/lang/Object;
.source "ExoVideoHandler.java"

# interfaces
.implements Lcom/evie/sidescreen/relatedcontent/VideoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;
    }
.end annotation


# instance fields
.field private mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mContext:Landroid/content/Context;

.field mCurrentPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mExoPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;

.field private mExoPlayerDisposable:Lio/reactivex/disposables/Disposable;

.field private mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

.field mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mFullScreenExoDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

.field private mIsInitialized:Z

.field private mObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

.field mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

.field private mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;",
            "Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;",
            "Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;",
            "Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            "Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mIsInitialized:Z

    .line 59
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 60
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mObservableProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    .line 63
    iput-object p4, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 64
    iput-object p5, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 65
    iput-object p6, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    .line 66
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mCurrentPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    return-object p0
.end method

.method private createExoPlayer()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    .line 219
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->initialize()V

    .line 220
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mCurrentPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    return-void
.end method

.method private disposeExoPlayer()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setStartPosition(J)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mCurrentPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 250
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->dispose()V

    .line 251
    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    :cond_2
    return-void
.end method

.method private initExoPlayer()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getVideoObjectList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getScreenWidthPixels()I

    move-result v1

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getMediaAspectRatio()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    .line 176
    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v2, v1}, Lio/reactivex/disposables/CompositeDisposable;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;

    if-nez v1, :cond_2

    .line 180
    new-instance v1, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;-><init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$1;)V

    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-eqz v1, :cond_3

    .line 183
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->disposeExoPlayer()V

    .line 186
    :cond_3
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->createExoPlayer()V

    .line 187
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->onVideoVisibilityChanged(Z)V

    .line 189
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 190
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    .line 191
    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->prepare(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 192
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$ExoVideoHandler$dH9NH52iOsL9X27DElIswqJsxyU;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$ExoVideoHandler$dH9NH52iOsL9X27DElIswqJsxyU;-><init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)V

    new-instance v2, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$jzs1_YGlS1lmWPc2__D-9jMLOU0;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$jzs1_YGlS1lmWPc2__D-9jMLOU0;-><init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)V

    .line 193
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerDisposable:Lio/reactivex/disposables/Disposable;

    .line 196
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mActivityDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic lambda$initExoPlayer$0(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$ExoPlayerActionHandler;->dispatchEvent(Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent;)V

    return-void
.end method

.method private loadVideoExoPlayer()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getVideoObjectList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getScreenWidthPixels()I

    move-result v1

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getMediaAspectRatio()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->prepare(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 210
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 211
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    .line 212
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->play()V

    .line 213
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->onVideoVisibilityChanged(Z)V

    return-void
.end method

.method private pauseExoPlayer()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    .line 235
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    :cond_0
    return-void
.end method

.method private playExoPlayer()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->play()V

    .line 227
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 228
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->onVideoVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private setVideoContainerAspectRatio()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getMediaAspectRatio()F

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getAspectRatioLowerLimit()F

    move-result v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getDefaultAspectRatio()F

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    return-void
.end method


# virtual methods
.method public enterFullscreen()V
    .locals 4

    .line 144
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$1;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/evie/sidescreen/R$style;->DialogTheme:I

    iget-object v3, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$1;-><init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mFullScreenExoDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    .line 151
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mFullScreenExoDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->enterFullScreen(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 152
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mFullScreenExoDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    iget-object v0, v0, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mCurrentPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void
.end method

.method public exitFullscreen()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mFullScreenExoDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-virtual {v1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->exitFullScreen(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mFullScreenExoDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mSimpleExoPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mCurrentPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method protected final handleUnanticipatedException(Ljava/lang/Throwable;)V
    .locals 0

    .line 202
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 203
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public initializeParams()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getDefaultAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mIsInitialized:Z

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mIsInitialized:Z

    return v0
.end method

.method public onActivityDestroy()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->disposeExoPlayer()V

    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->pauseExoPlayer()V

    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->initExoPlayer()V

    return-void
.end method

.method public onAdInterrupted()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->pause()V

    .line 131
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    :cond_0
    return-void
.end method

.method public onVideoPlay()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->playExoPlayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoScrub(J)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoPlayerObservable:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->seek(J)V

    :cond_0
    return-void
.end method

.method public samePlayerTransition()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->pauseExoPlayer()V

    .line 97
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->setVideoContainerAspectRatio()V

    .line 98
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->loadVideoExoPlayer()V

    return-void
.end method

.method public setUp()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 84
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->setVideoContainerAspectRatio()V

    .line 85
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->initExoPlayer()V

    return-void
.end method

.method public tearDown()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->disposeExoPlayer()V

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->mExoplayerContainer:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    return-void
.end method
