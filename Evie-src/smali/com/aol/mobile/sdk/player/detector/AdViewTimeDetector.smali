.class public final Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;
.super Ljava/lang/Object;
.source "AdViewTimeDetector.java"


# instance fields
.field private isDetectedOnCurrentAd:Z

.field private timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->isDetectedOnCurrentAd:Z

    return-void
.end method


# virtual methods
.method public detect(JLcom/aol/mobile/sdk/player/model/properties/TimeProperties;ZZ)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 20
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->isDetectedOnCurrentAd:Z

    if-eqz p1, :cond_0

    .line 21
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->isDetectedOnCurrentAd:Z

    .line 22
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->reset()V

    :cond_0
    return v0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {v1, p1, p2}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->stop(J)V

    .line 31
    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->isDetectedOnCurrentAd:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    if-nez p5, :cond_2

    .line 32
    iget-wide v3, p3, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v3, v5

    if-nez p3, :cond_3

    .line 34
    :cond_2
    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->isDetectedOnCurrentAd:Z

    const/4 v0, 0x1

    :cond_3
    if-eqz p4, :cond_4

    .line 39
    iget-object p3, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {p3, p1, p2}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->start(J)V

    :cond_4
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method
