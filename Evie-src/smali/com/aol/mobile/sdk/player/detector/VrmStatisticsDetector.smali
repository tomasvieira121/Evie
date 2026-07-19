.class public final Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;
.super Ljava/lang/Object;
.source "VrmStatisticsDetector.java"


# instance fields
.field private adBufferingTime:J

.field private timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

.field private vrmProcessingTime:J

.field private vrmUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    return-void
.end method


# virtual methods
.method public detect(JLcom/aol/mobile/sdk/player/model/VrmState;Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;)Z
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->stop(J)V

    .line 20
    iget-object v0, p3, Lcom/aol/mobile/sdk/player/model/VrmState;->vrmUrl:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 21
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->vrmUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 22
    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->vrmProcessingTime:J

    .line 23
    iput-wide v2, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->adBufferingTime:J

    .line 24
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->reset()V

    :cond_0
    return v1

    .line 29
    :cond_1
    iget-object v0, p3, Lcom/aol/mobile/sdk/player/model/VrmState;->adUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->vrmProcessingTime:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->vrmProcessingTime:J

    .line 31
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->reset()V

    :cond_2
    if-eqz p4, :cond_3

    .line 34
    iget-wide v4, p4, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    cmp-long p4, v4, v2

    if-lez p4, :cond_3

    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->adBufferingTime:J

    cmp-long p4, v4, v2

    if-nez p4, :cond_3

    .line 35
    iget-object p4, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {p4}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->adBufferingTime:J

    const/4 v1, 0x1

    .line 40
    :cond_3
    iget-object p4, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->timer:Lcom/aol/mobile/sdk/player/listener/detector/Timer;

    invoke-virtual {p4, p1, p2}, Lcom/aol/mobile/sdk/player/listener/detector/Timer;->start(J)V

    .line 41
    iget-object p1, p3, Lcom/aol/mobile/sdk/player/model/VrmState;->vrmUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->vrmUrl:Ljava/lang/String;

    return v1
.end method

.method public getAdBufferingTime()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->adBufferingTime:J

    return-wide v0
.end method

.method public getVrmProcessingTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->vrmProcessingTime:J

    return-wide v0
.end method
