.class public final Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;
.super Lcom/aol/mobile/sdk/renderer/a;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field private b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

.field private c:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/aol/mobile/sdk/chromecast/OneCastManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/aol/mobile/sdk/renderer/j;

    invoke-direct {v0, p1, p0}, Lcom/aol/mobile/sdk/renderer/j;-><init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/i;)V

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->setRenderer(Landroid/view/View;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->a()V

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aol/mobile/sdk/chromecast/OneCastManager;

    invoke-direct {v0, p1}, Lcom/aol/mobile/sdk/chromecast/OneCastManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->f:Lcom/aol/mobile/sdk/chromecast/OneCastManager;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;)Lcom/aol/mobile/sdk/chromecast/OneCastManager;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->f:Lcom/aol/mobile/sdk/chromecast/OneCastManager;

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->e:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/aol/mobile/sdk/chromecast/CastRenderer;->getViewport()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->removeView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->currentPosition:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->currentPosition:Ljava/lang/Long;

    iput-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->seekPosition:Ljava/lang/Long;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->c()V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->getCastRenderer()Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    new-instance v0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->c:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/chromecast/CastRenderer;->getViewport()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer$1;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer$1;-><init>(Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCastRenderer()Lcom/aol/mobile/sdk/chromecast/CastRenderer;
    .locals 2

    new-instance v0, Lcom/aol/mobile/sdk/chromecast/CastRendererImpl;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/chromecast/CastRendererImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/aol/mobile/sdk/renderer/a;->dispose()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->c()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onLoadingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public bridge synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/aol/mobile/sdk/renderer/a;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-super {p0}, Lcom/aol/mobile/sdk/renderer/a;->onRenderedFirstFrame()V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onRepeatModeChanged(I)V

    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0

    invoke-super {p0}, Lcom/aol/mobile/sdk/renderer/a;->onSeekProcessed()V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/a;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/aol/mobile/sdk/renderer/a;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/renderer/a;->onVideoSizeChanged(IIIF)V

    return-void
.end method

.method public bridge synthetic onVideoSurfaceAvailable(Landroid/view/Surface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onVideoSurfaceAvailable(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic onVideoSurfaceReleased(Landroid/view/Surface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->onVideoSurfaceReleased(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic onVideoSurfaceResized(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/aol/mobile/sdk/renderer/a;->onVideoSurfaceResized(II)V

    return-void
.end method

.method public render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V
    .locals 2

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isCasting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    :goto_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->b:Lcom/aol/mobile/sdk/chromecast/CastRenderer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/ExoFlatRenderer;->c:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->translate(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/chromecast/CastRenderer;->render(Lcom/aol/mobile/sdk/chromecast/CastVideoVM;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->shouldPlay:Z

    :cond_1
    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    return-void
.end method
