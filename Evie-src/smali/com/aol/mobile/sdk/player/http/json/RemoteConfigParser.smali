.class public final Lcom/aol/mobile/sdk/player/http/json/RemoteConfigParser;
.super Ljava/lang/Object;
.source "RemoteConfigParser.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/ResponseParser<",
        "Lcom/aol/mobile/sdk/player/http/model/SdkConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTracking(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "native"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance p1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$Native;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$Native;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "javascript"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "javascript"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "telemetry"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    const-string v2, "context"

    .line 51
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 52
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;

    invoke-direct {v0, p1, v1}, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported tracking found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/http/model/SdkConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "config"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "video"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tracking"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "context"

    .line 25
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "telemetry"

    .line 26
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 28
    new-instance v4, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    const-string v5, "context"

    .line 29
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    .line 30
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "userAgent"

    .line 32
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v3, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;

    new-instance v5, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;-><init>(Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;)V

    .line 36
    invoke-direct {p0, v1}, Lcom/aol/mobile/sdk/player/http/json/RemoteConfigParser;->getTracking(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;

    invoke-direct {v1, p1, v3, v0, v4}, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V

    return-object v1
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/http/json/RemoteConfigParser;->parse(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/http/model/SdkConfig;

    move-result-object p1

    return-object p1
.end method
