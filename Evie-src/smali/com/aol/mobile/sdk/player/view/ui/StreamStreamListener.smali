.class public final Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;
.super Ljava/lang/Object;
.source "StreamStreamListener.java"

# interfaces
.implements Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;


# instance fields
.field private final playback:Lcom/aol/mobile/sdk/player/Playback;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/Playback;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    return-void
.end method


# virtual methods
.method public onCameraDirectionChanged(DD)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/Playback;->setCameraDirection(DD)V

    return-void
.end method

.method public onDurationReceived(J)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updateDuration(J)V

    return-void
.end method

.method public onErrorOccurred(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener$1;->$SwitchMap$com$aol$mobile$sdk$renderer$viewmodel$VideoVM$Callbacks$Error:[I

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    sget-object v0, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONTENT_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/player/Playback;->stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    sget-object v0, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONNECTION_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/player/Playback;->stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHlsBitrateUpdated(J)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updateHlsBitrate(J)V

    return-void
.end method

.method public onSeekPerformed()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/player/Playback;->stopSeek()V

    return-void
.end method

.method public onTrackInfoAvailable(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/AudioTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/TextTrack;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updateTrackInfo(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onVideoBufferUpdated(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/Playback;->updateBufferedPercentage(I)V

    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/player/Playback;->stopPlayback()V

    return-void
.end method

.method public onVideoPlaybackFlagUpdated(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/Playback;->updateReadyToPlayState(Z)V

    return-void
.end method

.method public onVideoPositionUpdated(J)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updatePosition(J)V

    return-void
.end method

.method public onViewportResized(II)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;->playback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updateViewportSize(II)V

    return-void
.end method
