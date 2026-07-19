.class public final Lcom/aol/mobile/sdk/renderer/ExoSphereRenderer;
.super Lcom/aol/mobile/sdk/renderer/b;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/aol/mobile/sdk/renderer/k;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/renderer/ExoSphereRenderer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/aol/mobile/sdk/renderer/h;

    const/16 v2, 0x5a

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-direct {v1, v2, v3}, Lcom/aol/mobile/sdk/renderer/h;-><init>(IF)V

    invoke-direct {p1, v0, v1, p0}, Lcom/aol/mobile/sdk/renderer/k;-><init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/e;Lcom/aol/mobile/sdk/renderer/i;)V

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/renderer/ExoSphereRenderer;->setRenderer(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/aol/mobile/sdk/renderer/b;->dispose()V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onLoadingChanged(Z)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public bridge synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/aol/mobile/sdk/renderer/b;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-super {p0}, Lcom/aol/mobile/sdk/renderer/b;->onRenderedFirstFrame()V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onRepeatModeChanged(I)V

    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0

    invoke-super {p0}, Lcom/aol/mobile/sdk/renderer/b;->onSeekProcessed()V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/renderer/b;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/aol/mobile/sdk/renderer/b;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(IIIF)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/renderer/b;->onVideoSizeChanged(IIIF)V

    return-void
.end method

.method public bridge synthetic onVideoSurfaceAvailable(Landroid/view/Surface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onVideoSurfaceAvailable(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic onVideoSurfaceReleased(Landroid/view/Surface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->onVideoSurfaceReleased(Landroid/view/Surface;)V

    return-void
.end method

.method public bridge synthetic onVideoSurfaceResized(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/aol/mobile/sdk/renderer/b;->onVideoSurfaceResized(II)V

    return-void
.end method

.method public bridge synthetic render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/b;->render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    return-void
.end method
