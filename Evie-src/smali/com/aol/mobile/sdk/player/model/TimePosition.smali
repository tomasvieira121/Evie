.class public final Lcom/aol/mobile/sdk/player/model/TimePosition;
.super Ljava/lang/Object;
.source "TimePosition.java"


# instance fields
.field private duration:J

.field private position:J

.field private progress:D

.field private timeLeft:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 37
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/aol/mobile/sdk/player/model/TimePosition;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/model/TimePosition;->update(JJ)V

    return-void
.end method

.method private update(JJ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Duration can not be negative"

    .line 41
    invoke-static {v4, v5}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Position can not be negative"

    .line 42
    invoke-static {v4, v5}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    cmp-long v4, p1, p3

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "Position must be in range of duration"

    .line 43
    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 45
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->position:J

    .line 46
    iput-wide p3, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->duration:J

    sub-long v0, p3, p1

    .line 47
    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->timeLeft:J

    cmp-long v0, p3, v2

    if-nez v0, :cond_3

    const-wide/16 p1, 0x0

    goto :goto_3

    :cond_3
    long-to-double p1, p1

    long-to-double p3, p3

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    :goto_3
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->progress:D

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->duration:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->position:J

    return-wide v0
.end method

.method public getProgress()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->progress:D

    return-wide v0
.end method

.method public getTimeLeft()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->timeLeft:J

    return-wide v0
.end method

.method public setDuration(J)V
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->position:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/aol/mobile/sdk/player/model/TimePosition;->update(JJ)V

    return-void
.end method

.method public setPosition(J)V
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->duration:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->update(JJ)V

    return-void
.end method

.method public setProgress(D)V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Position must be in [0.0 .. 1.0] range"

    .line 80
    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->duration:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->duration:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->update(JJ)V

    return-void
.end method

.method public setToEndPosition()V
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/model/TimePosition;->duration:J

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/aol/mobile/sdk/player/model/TimePosition;->update(JJ)V

    return-void
.end method
