.class public Lcom/aol/mobile/sdk/player/js/telemetry/JsIssueSerializer;
.super Ljava/lang/Object;
.source "JsIssueSerializer.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/DataSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
        "Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "context"

    .line 20
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->context:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    .line 23
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->type:Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;

    invoke-virtual {v3}, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "description"

    .line 26
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "text"

    .line 27
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "metadata"

    .line 29
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "issue"

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

    .line 15
    check-cast p1, Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsIssueSerializer;->toJson(Lcom/aol/mobile/sdk/player/js/telemetry/data/JsIssue;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
