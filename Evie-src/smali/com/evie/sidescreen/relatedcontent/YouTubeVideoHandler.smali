.class public Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;
.super Ljava/lang/Object;
.source "YouTubeVideoHandler.java"

# interfaces
.implements Lcom/evie/sidescreen/relatedcontent/VideoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFullScreenYTControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mIsYouTubePlayerLoaded:Z

.field private mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

.field private mScrubPending:Z

.field private mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

.field private mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

.field mYouTubeContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

.field private mYouTubeRefreshPosition:Ljava/lang/Runnable;

.field private mYouTubeVideoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsYouTubePlayerLoaded:Z

    .line 40
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsInitialized:Z

    .line 45
    new-instance v0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;-><init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeRefreshPosition:Ljava/lang/Runnable;

    .line 70
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 71
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    .line 73
    iput-object p3, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    .line 74
    iput-object p4, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mPlayerActionHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->loadVideoYouTube()V

    return-void
.end method

.method static synthetic access$102(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mScrubPending:Z

    return p0
.end method

.method static synthetic access$202(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mScrubPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeRefreshPosition:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$602(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsYouTubePlayerLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->playYouTube()V

    return-void
.end method

.method static synthetic access$800(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->pauseYouTube()V

    return-void
.end method

.method private disposeYouTube()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeRefreshPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 335
    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :catch_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->release()V

    .line 340
    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    :cond_0
    return-void
.end method

.method private enterYouTubeFullScreenMode()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 184
    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setPersistentImmersiveMode()V

    return-void
.end method

.method private exitYouTubeFullScreenMode()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mFullScreenYTControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    .line 198
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setToolBarVisibility(Z)V

    .line 199
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0, v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setIsFullScreen(Z)V

    .line 200
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mFullScreenYTControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->exitFullScreen()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mFullScreenYTControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    .line 203
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    .line 205
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 206
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    :cond_0
    return-void
.end method

.method private initYouTube()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 262
    sget v1, Lcom/evie/sidescreen/R$id;->youtube_player_fragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    const-string v1, "REDACTED_GOOGLE_API_KEY"

    .line 263
    new-instance v2, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;

    invoke-direct {v2, p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;-><init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    return-void
.end method

.method public static synthetic lambda$MtvTR-UP1UGttTlcf7lB1D6RKs4(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->playYouTube()V

    return-void
.end method

.method private loadVideoYouTube()V
    .locals 3

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsYouTubePlayerLoaded:Z

    .line 291
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getVideoObjectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/VideoObject;

    invoke-virtual {v0}, Lorg/schema/VideoObject;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeVideoId:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 293
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeVideoId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->cueVideo(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->playYouTube()V

    :cond_0
    return-void
.end method

.method private pauseYouTube()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->pause()V

    .line 326
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 327
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeRefreshPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private playYouTube()V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget-boolean v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsYouTubePlayerLoaded:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 305
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getStartPosition()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->seekToMillis(I)V

    .line 308
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v3, v4}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->setStartPosition(J)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {v0, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 311
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 312
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeVideoId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->play()V

    .line 315
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {v0, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    .line 316
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeRefreshPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public enterFullscreen()V
    .locals 10

    .line 163
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->enterYouTubeFullScreenMode()V

    .line 169
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v0

    int-to-long v1, v0

    .line 171
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v0

    int-to-long v3, v0

    .line 172
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    move v9, v0

    move-wide v5, v1

    move-wide v7, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move-wide v5, v1

    move-wide v7, v5

    const/4 v9, 0x1

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoHelperInterface:Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-static/range {v3 .. v9}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->newInstance(ZZJJZ)Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mFullScreenYTControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    .line 178
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mFullScreenYTControllerDialog:Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/evie/sidescreen/relatedcontent/FullScreenControllerFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->exitYouTubeFullScreenMode()V

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initializeParams()V
    .locals 1

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsInitialized:Z

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsInitialized:Z

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mIsYouTubePlayerLoaded:Z

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->disposeYouTube()V

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->pauseYouTube()V

    return-void
.end method

.method public onActivityResume()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$YouTubeVideoHandler$MtvTR-UP1UGttTlcf7lB1D6RKs4;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$YouTubeVideoHandler$MtvTR-UP1UGttTlcf7lB1D6RKs4;-><init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAdInterrupted()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->pauseYouTube()V

    :cond_0
    return-void
.end method

.method public onVideoPlay()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->seekToMillis(I)V

    .line 132
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->playYouTube()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mScrubPending:Z

    .line 134
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    .line 135
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {v1, v0}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(Z)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->playYouTube()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoScrub(J)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz v0, :cond_1

    long-to-int v1, p1

    .line 152
    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->seekToMillis(I)V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mScrubPending:Z

    .line 154
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubePlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->playYouTube()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mVideoControlsViewHolder:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    :cond_1
    return-void
.end method

.method public samePlayerTransition()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->pauseYouTube()V

    .line 106
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->loadVideoYouTube()V

    return-void
.end method

.method public setUp()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->initYouTube()V

    return-void
.end method

.method public tearDown()V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->disposeYouTube()V

    .line 100
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->mYouTubeContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
