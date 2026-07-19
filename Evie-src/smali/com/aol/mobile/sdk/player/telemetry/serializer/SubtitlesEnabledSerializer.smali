.class public Lcom/aol/mobile/sdk/player/telemetry/serializer/SubtitlesEnabledSerializer;
.super Ljava/lang/Object;
.source "SubtitlesEnabledSerializer.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/DataSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
        "Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;",
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
.method public toJson(Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;)Ljava/lang/String;
    .locals 4
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

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;->context:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "SUBTITLES_ENABLED"

    .line 24
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "subtitlesType"

    .line 27
    iget-boolean p1, p1, Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;->isExternal:Z

    if-eqz p1, :cond_0

    const-string p1, "EXTERNAL"

    goto :goto_0

    :cond_0
    const-string p1, "INTERNAL"

    :goto_0
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 28
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 30
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
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
    check-cast p1, Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/telemetry/serializer/SubtitlesEnabledSerializer;->toJson(Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
