.class public Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;
.super Ljava/lang/Object;
.source "Video3SecDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;
    }
.end annotation


# instance fields
.field private bft:J

.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;

.field private isSent:Z

.field private sessionId:Ljava/lang/String;

.field private startBufferTime:J


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->isSent:Z

    .line 25
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->reportState(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    return-void
.end method

.method reportState(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 9

    .line 34
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 38
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->sessionId:Ljava/lang/String;

    .line 39
    iput-boolean v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->isSent:Z

    .line 40
    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->bft:J

    .line 41
    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->startBufferTime:J

    .line 43
    :cond_1
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v5, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v1, v5, :cond_2

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->updateBufferTime(JZ)V

    return-void

    .line 47
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    invoke-virtual {p0, v5, v6, v1}, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->updateBufferTime(JZ)V

    .line 48
    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->isSent:Z

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v5, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    const-wide/16 v7, 0xbb8

    cmp-long v1, v5, v7

    if-ltz v1, :cond_5

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6, v4}, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->updateBufferTime(JZ)V

    .line 50
    iget-wide v4, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->hlsBitrate:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    iget-wide v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->hlsBitrate:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    .line 51
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v4, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->bft:J

    long-to-int v5, v5

    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    const/high16 v6, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    :goto_1
    long-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v6, v0

    iget-boolean v8, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isMuted:Z

    invoke-interface/range {v2 .. v8}, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;->onVideo3SecDetected(ILjava/lang/String;IILjava/lang/Double;Z)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->isSent:Z

    :cond_5
    return-void
.end method

.method updateBufferTime(JZ)V
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    .line 64
    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->startBufferTime:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    .line 65
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->startBufferTime:J

    goto :goto_0

    .line 68
    :cond_0
    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->startBufferTime:J

    cmp-long p3, v2, v0

    if-eqz p3, :cond_1

    .line 69
    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->bft:J

    sub-long/2addr p1, v2

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->bft:J

    .line 70
    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;->startBufferTime:J

    :cond_1
    :goto_0
    return-void
.end method
