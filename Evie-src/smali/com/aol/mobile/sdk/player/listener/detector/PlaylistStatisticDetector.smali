.class public final Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;
.super Ljava/lang/Object;
.source "PlaylistStatisticDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;
    }
.end annotation


# instance fields
.field private adPlayed:Z

.field private adsNum:I

.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;

.field private isSent:Z

.field private playlistPlaybackDuration:J

.field private sessionId:Ljava/lang/String;

.field private videoCount:I

.field private videoPlaybackDuration:J


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->videoCount:I

    .line 27
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->isSent:Z

    .line 28
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->adPlayed:Z

    .line 31
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 1

    .line 36
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->reportState(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V

    return-void
.end method

.method reportState(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;)V
    .locals 6

    .line 43
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 44
    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->videoPlaybackDuration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 45
    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->playlistPlaybackDuration:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->playlistPlaybackDuration:J

    .line 47
    :cond_0
    iget-boolean v0, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isVideoStreamPlaying:Z

    if-eqz v0, :cond_1

    .line 48
    iget v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->videoCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->videoCount:I

    .line 49
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->sessionId:Ljava/lang/String;

    .line 52
    :cond_1
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v2, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->videoPlaybackDuration:J

    .line 54
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->adPlayed:Z

    if-nez v0, :cond_2

    .line 55
    iget v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->adsNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->adsNum:I

    .line 56
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->adPlayed:Z

    .line 59
    :cond_2
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->adPlayed:Z

    .line 63
    :cond_3
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->isSent:Z

    if-nez v0, :cond_4

    iget-boolean p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isSessionCompleted:Z

    if-eqz p1, :cond_4

    .line 64
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->isSent:Z

    .line 65
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->playlistPlaybackDuration:J

    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->videoPlaybackDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->playlistPlaybackDuration:J

    .line 66
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;

    iget v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->videoCount:I

    iget-wide v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->playlistPlaybackDuration:J

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;->adsNum:I

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;->onStatisticDetected(IFILjava/lang/String;)V

    :cond_4
    return-void
.end method
