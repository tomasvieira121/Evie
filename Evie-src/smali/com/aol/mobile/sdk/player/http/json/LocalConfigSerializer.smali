.class public final Lcom/aol/mobile/sdk/player/http/json/LocalConfigSerializer;
.super Ljava/lang/Object;
.source "LocalConfigSerializer.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/DataSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
        "Lcom/aol/mobile/sdk/player/http/model/LocalConfig;",
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


# virtual methods
.method public toJson(Lcom/aol/mobile/sdk/player/http/model/LocalConfig;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 27
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->client:Lcom/aol/mobile/sdk/player/http/model/Client;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Client;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->client:Lcom/aol/mobile/sdk/player/http/model/Client;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/http/model/Client;->advertisementId:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "advertisementId"

    .line 29
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->client:Lcom/aol/mobile/sdk/player/http/model/Client;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Client;->advertisementId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "name"

    .line 31
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->client:Lcom/aol/mobile/sdk/player/http/model/Client;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Client;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    .line 32
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->client:Lcom/aol/mobile/sdk/player/http/model/Client;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Client;->version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "client"

    .line 33
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "platform"

    .line 36
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->device:Lcom/aol/mobile/sdk/player/http/model/Device;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Device;->platform:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    .line 37
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->device:Lcom/aol/mobile/sdk/player/http/model/Device;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Device;->model:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    .line 38
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->device:Lcom/aol/mobile/sdk/player/http/model/Device;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Device;->os:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device"

    .line 39
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "version"

    .line 42
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->sdk:Lcom/aol/mobile/sdk/player/http/model/Sdk;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Sdk;->version:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 44
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->sdk:Lcom/aol/mobile/sdk/player/http/model/Sdk;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/Sdk;->renderers:Ljava/util/List;

    const/4 v5, 0x0

    .line 45
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 46
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "id"

    .line 47
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;

    iget-object v8, v8, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;->id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "version"

    .line 48
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;

    iget-object v8, v8, Lcom/aol/mobile/sdk/player/http/model/Sdk$Renderer;->version:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "renderers"

    .line 51
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk"

    .line 52
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->extra:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    const-string v2, "extra"

    .line 55
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->extra:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "context"

    .line 58
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
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

    .line 19
    check-cast p1, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/http/json/LocalConfigSerializer;->toJson(Lcom/aol/mobile/sdk/player/http/model/LocalConfig;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
