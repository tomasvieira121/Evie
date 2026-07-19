.class public final Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector;
.super Ljava/lang/Object;
.source "VideoPlayDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 4

    .line 29
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->url:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector;->sessionId:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;->onPlayDetected(IIILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
