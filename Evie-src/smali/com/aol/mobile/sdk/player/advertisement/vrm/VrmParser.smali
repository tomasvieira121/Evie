.class public final Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser;
.super Ljava/lang/Object;
.source "VrmParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;,
        Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse([B)Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "txid"

    .line 38
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "slot"

    .line 39
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "aeg"

    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_6

    .line 47
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 49
    new-instance v11, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;

    invoke-direct {v11}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;-><init>()V

    const-string v12, "url"

    .line 50
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    const-string v12, "url"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_0
    move-object v12, v13

    :goto_2
    invoke-virtual {v11, v12}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->setUrl(Ljava/lang/String;)V

    const-string v12, "vastXml"

    .line 51
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "vastXml"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_1
    move-object v12, v13

    :goto_3
    invoke-virtual {v11, v12}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->setXml(Ljava/lang/String;)V

    const-string v12, "adEngineType"

    .line 52
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "adEngineType"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_2
    move-object v12, v13

    :goto_4
    invoke-virtual {v11, v12}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->setAdEngineType(Ljava/lang/String;)V

    const-string v12, "rid"

    .line 53
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "rid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_3
    move-object v12, v13

    :goto_5
    invoke-virtual {v11, v12}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->setRuleId(Ljava/lang/String;)V

    const-string v12, "rcid"

    .line 54
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "rcid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_4
    move-object v12, v13

    :goto_6
    invoke-virtual {v11, v12}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->setRuleCompanyId(Ljava/lang/String;)V

    const-string v12, "vendor"

    .line 55
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->setVendor(Ljava/lang/String;)V

    const-string v12, "name"

    .line 56
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_5
    invoke-virtual {v11, v13}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->setName(Ljava/lang/String;)V

    .line 58
    new-instance v10, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;

    invoke-direct {v10, v11}, Lcom/aol/mobile/sdk/player/advertisement/utils/Task;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 61
    :cond_6
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 64
    :cond_7
    new-instance v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;

    invoke-direct {v1, v0, p0, v2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static parse([BLcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$Listener;)V
    .locals 2

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser;->parse([B)Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;

    move-result-object p0

    .line 26
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;->tasks:Ljava/util/List;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;->txid:Ljava/lang/String;

    iget-object p0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;->slot:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$Listener;->success(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-interface {p1, p0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$Listener;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
