.class public Lcom/aol/mobile/sdk/player/telemetry/serializer/VideoServiceJsonParsingErrorSerializer;
.super Ljava/lang/Object;
.source "VideoServiceJsonParsingErrorSerializer.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/DataSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
        "Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson(Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "context"

    .line 21
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;->context:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "VIDEO_SERVICE_JSON_PARSING_ERROR"

    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "message"

    .line 27
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "responseJson"

    .line 28
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;->responseJson:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 29
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 31
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
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

    .line 16
    check-cast p1, Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/VideoServiceJsonParsingErrorSerializer;->toJson(Lcom/aol/mobile/sdk/player/telemetry/data/VideoServiceJsonParsingErrorData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
