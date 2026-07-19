.class public Lcom/aol/mobile/sdk/player/model/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field public id:Ljava/lang/String;

.field public playbackDuration:J

.field public playbackStartTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/model/Session;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/Session;->id:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/Session;->playbackStartTime:J

    .line 34
    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/Session;->playbackDuration:J

    return-void
.end method

.method public updatePlaybackTime(ZJ)V
    .locals 6

    .line 21
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/Session;->playbackStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 22
    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/model/Session;->playbackDuration:J

    sub-long v0, p2, v0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/aol/mobile/sdk/player/model/Session;->playbackDuration:J

    :cond_0
    if-eqz p1, :cond_1

    .line 25
    iput-wide p2, p0, Lcom/aol/mobile/sdk/player/model/Session;->playbackStartTime:J

    goto :goto_0

    .line 27
    :cond_1
    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/model/Session;->playbackStartTime:J

    :goto_0
    return-void
.end method
