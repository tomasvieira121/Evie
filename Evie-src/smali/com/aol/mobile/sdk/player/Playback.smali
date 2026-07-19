.class public interface abstract Lcom/aol/mobile/sdk/player/Playback;
.super Ljava/lang/Object;
.source "Playback.java"


# virtual methods
.method public abstract setCameraDirection(DD)V
.end method

.method public abstract stopPlayback()V
.end method

.method public abstract stopSeek()V
.end method

.method public abstract stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
.end method

.method public abstract updateBufferedPercentage(I)V
.end method

.method public abstract updateDuration(J)V
.end method

.method public abstract updateHlsBitrate(J)V
.end method

.method public abstract updatePosition(J)V
.end method

.method public abstract updateReadyToPlayState(Z)V
.end method

.method public abstract updateTrackInfo(Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract updateViewportSize(II)V
.end method
