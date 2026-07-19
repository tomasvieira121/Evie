.class public Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;
.super Ljava/lang/Object;
.source "VideoTimeDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;

.field private playbackDuration:J

.field private progress:Ljava/lang/Double;

.field private sessionId:Ljava/lang/String;

.field private uniqueVideoId:Ljava/lang/String;

.field private videoIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 1

    .line 40
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->reportState(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V

    return-void
.end method

.method reportState(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V
    .locals 7

    .line 46
    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    .line 47
    iget-boolean v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isSessionCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_0
    iget-wide v2, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 49
    :goto_0
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_7

    :cond_1
    if-eqz v1, :cond_2

    .line 50
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v2, v2, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->playbackDuration:J

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    if-eqz v1, :cond_3

    .line 53
    :goto_2
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->videoIndex:Ljava/lang/Integer;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    if-eqz v1, :cond_5

    move-object v5, v0

    goto :goto_4

    .line 54
    :cond_5
    iget-object v5, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->progress:Ljava/lang/Double;

    :goto_4
    if-eqz v1, :cond_6

    .line 55
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->uniqueVideoId:Ljava/lang/String;

    .line 57
    :goto_5
    iget-object v6, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-interface {v6, v4, v2, v5, v1}, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;->onTimeDetected(IFLjava/lang/Double;Ljava/lang/String;)V

    .line 61
    :cond_7
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->sessionId:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->progress:Ljava/lang/Double;

    .line 63
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->playbackDuration:J

    .line 64
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->videoIndex:Ljava/lang/Integer;

    .line 65
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;->uniqueVideoId:Ljava/lang/String;

    return-void
.end method
