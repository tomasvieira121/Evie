.class public interface abstract Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;
    }
.end annotation


# virtual methods
.method public abstract onCameraDirectionChanged(DD)V
.end method

.method public abstract onDurationReceived(J)V
.end method

.method public abstract onErrorOccurred(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;)V
.end method

.method public abstract onHlsBitrateUpdated(J)V
.end method

.method public abstract onSeekPerformed()V
.end method

.method public abstract onTrackInfoAvailable(Ljava/util/List;Ljava/util/List;)V
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

.method public abstract onVideoBufferUpdated(I)V
.end method

.method public abstract onVideoEnded()V
.end method

.method public abstract onVideoPlaybackFlagUpdated(Z)V
.end method

.method public abstract onVideoPositionUpdated(J)V
.end method

.method public abstract onViewportResized(II)V
.end method
