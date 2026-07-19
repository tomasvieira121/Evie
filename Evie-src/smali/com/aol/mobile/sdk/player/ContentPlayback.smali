.class public Lcom/aol/mobile/sdk/player/ContentPlayback;
.super Ljava/lang/Object;
.source "ContentPlayback.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/Playback;


# instance fields
.field private final player:Lcom/aol/mobile/sdk/player/Player;

.field private final playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/Player;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    .line 24
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    return-void
.end method


# virtual methods
.method public setCameraDirection(DD)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/Player;->setCameraDirection(DD)V

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->endVideoPlayback()V

    .line 66
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public stopSeek()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->resetSeekPosition()V

    .line 60
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V

    .line 72
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateBufferedPercentage(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateVideoBufferedPercentage(I)V

    .line 42
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateVideoDuration(J)V

    .line 30
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateHlsBitrate(J)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateHlsBitrate(J)V

    return-void
.end method

.method public updatePosition(J)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateVideoPosition(J)V

    .line 36
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateReadyToPlayState(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateVideoPlayback(Z)V

    .line 54
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateTrackInfo(Ljava/util/List;Ljava/util/List;)V
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

    .line 87
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateTrackInfo(Ljava/util/List;Ljava/util/List;)V

    .line 88
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateViewportSize(II)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateVideoDimensions(II)V

    .line 48
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContentPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method
