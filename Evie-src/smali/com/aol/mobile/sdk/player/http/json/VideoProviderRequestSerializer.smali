.class public Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;
.super Ljava/lang/Object;
.source "VideoProviderRequestSerializer.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/DataSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/DataSerializer<",
        "Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;",
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
.method public toJson(Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "context"

    .line 23
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->context:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "autoplay"

    .line 24
    iget-boolean v3, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->isAutoplay:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "sitesection"

    .line 25
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->siteSection:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->siteSection:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->extra:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v2, "extra"

    .line 28
    iget-object v3, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->extra:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_1
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->videoIds:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 32
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 33
    :goto_1
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->videoIds:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 34
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->videoIds:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "videoIds"

    .line 36
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_3
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->playlistId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "playlistId"

    .line 40
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->playlistId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "player"

    .line 43
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
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
    check-cast p1, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;->toJson(Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
