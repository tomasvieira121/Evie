.class public Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;
.super Ljava/lang/Object;
.source "VrmStatisticsData.java"


# instance fields
.field public final adBufferingTime:J

.field public final context:Ljava/lang/String;

.field public final vrmProcessingTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;->context:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;->vrmProcessingTime:J

    .line 16
    iput-wide p4, p0, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;->adBufferingTime:J

    return-void
.end method
