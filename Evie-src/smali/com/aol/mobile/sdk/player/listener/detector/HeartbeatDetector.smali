.class public final Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;
.super Ljava/lang/Object;
.source "HeartbeatDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;
    }
.end annotation


# instance fields
.field private bft:J

.field private final callback:Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;

.field private sessionId:Ljava/lang/String;

.field private startBufferTime:J

.field private timeToFire:J


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32
    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v2, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v4, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5}, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->updateBufferTime(JZ)V

    return-void

    .line 39
    :cond_1
    iget-boolean v3, v2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    if-eqz v3, :cond_2

    return-void

    .line 40
    :cond_2
    iget-object v3, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->sessionId:Ljava/lang/String;

    const-wide/16 v6, 0x14

    const-wide/16 v8, 0x0

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->sessionId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v4, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 41
    :cond_4
    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->sessionId:Ljava/lang/String;

    .line 42
    iput-wide v6, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->timeToFire:J

    .line 43
    iput-wide v8, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->bft:J

    .line 44
    iput-wide v8, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->startBufferTime:J

    .line 46
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-boolean v10, v2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    invoke-virtual {v0, v3, v4, v10}, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->updateBufferTime(JZ)V

    .line 47
    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v3, v3, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v3, v10

    iget-wide v12, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->timeToFire:J

    cmp-long v14, v3, v12

    if-ltz v14, :cond_7

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v5}, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->updateBufferTime(JZ)V

    .line 49
    iget-wide v3, v2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->hlsBitrate:J

    cmp-long v5, v3, v8

    if-lez v5, :cond_6

    iget-wide v3, v2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->hlsBitrate:J

    long-to-double v3, v3

    const-wide v12, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v20, v3

    .line 50
    iget-object v12, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;

    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v13, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v14, v2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v2, v2, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    div-long/2addr v2, v10

    long-to-int v15, v2

    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-wide v2, v2, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->playbackDuration:J

    div-long/2addr v2, v10

    long-to-int v2, v2

    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object v4, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v4, v4, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-wide v10, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->bft:J

    long-to-int v5, v10

    iget-boolean v1, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isMuted:Z

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v21, v1

    invoke-interface/range {v12 .. v21}, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;->onHeartbeatDetected(ILjava/lang/String;IIIIILjava/lang/Double;Z)V

    .line 60
    iput-wide v8, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->bft:J

    .line 61
    iget-wide v1, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->timeToFire:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->timeToFire:J

    :cond_7
    return-void
.end method

.method updateBufferTime(JZ)V
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    .line 67
    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->startBufferTime:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    .line 68
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->startBufferTime:J

    goto :goto_0

    .line 71
    :cond_0
    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->startBufferTime:J

    cmp-long p3, v2, v0

    if-eqz p3, :cond_1

    .line 72
    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->bft:J

    sub-long/2addr p1, v2

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->bft:J

    .line 73
    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;->startBufferTime:J

    :cond_1
    :goto_0
    return-void
.end method
