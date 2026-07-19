.class Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;
.super Ljava/lang/Object;
.source "VrmTelemetry.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/StateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;->getStateObserver()Lcom/aol/mobile/sdk/player/StateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field detector:Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;

.field final synthetic this$0:Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;

.field final synthetic val$sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;->this$0:Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;->val$sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;-><init>()V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;->detector:Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;->detector:Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->detect(JLcom/aol/mobile/sdk/player/model/VrmState;Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;->val$sender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;->detector:Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->getVrmProcessingTime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry$1;->detector:Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;

    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/detector/VrmStatisticsDetector;->getAdBufferingTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendVrmStatisticsData(JJ)V

    :cond_0
    return-void
.end method
