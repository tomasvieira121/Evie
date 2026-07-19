.class public Lcom/aol/mobile/sdk/player/telemetry/serializer/VrmStatisticsSerializer;
.super Ljava/lang/Object;
.source "VrmStatisticsSerializer.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/DataSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
        "Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson(Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "context"

    .line 16
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;->context:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "VRM_STATISTICS"

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "vrmProcessingTime"

    .line 22
    iget-wide v4, p1, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;->vrmProcessingTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "adBufferingTime"

    .line 23
    iget-wide v4, p1, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;->adBufferingTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 24
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 26
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    check-cast p1, Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/VrmStatisticsSerializer;->toJson(Lcom/aol/mobile/sdk/player/telemetry/data/VrmStatisticsData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
