.class public Lcom/aol/mobile/sdk/player/AdvertisementPlayback;
.super Ljava/lang/Object;
.source "AdvertisementPlayback.java"

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
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    .line 24
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    return-void
.end method


# virtual methods
.method public setCameraDirection(DD)V
    .locals 0

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->clearAd()V

    .line 62
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public stopSeek()V
    .locals 0

    return-void
.end method

.method public stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->stopAdWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V

    .line 68
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateBufferedPercentage(I)V
    .locals 0

    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateAdDuration(J)V

    .line 30
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateHlsBitrate(J)V
    .locals 0

    return-void
.end method

.method public updatePosition(J)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateAdPosition(J)V

    .line 36
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateReadyToPlayState(Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateAdPlayback(Z)V

    .line 52
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public updateTrackInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public updateViewportSize(II)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->updateAdDimensions(II)V

    .line 46
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method
