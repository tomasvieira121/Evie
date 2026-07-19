.class public Lcom/aol/mobile/sdk/player/listener/detector/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# instance fields
.field private duration:J

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->reset()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->duration:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->duration:J

    .line 18
    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->time:J

    return-void
.end method

.method public start(J)V
    .locals 5

    .line 22
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 23
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->time:J

    :cond_0
    return-void
.end method

.method public stop(J)V
    .locals 6

    .line 28
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 29
    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->duration:J

    sub-long/2addr p1, v0

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->duration:J

    .line 30
    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->time:J

    :cond_0
    return-void
.end method
