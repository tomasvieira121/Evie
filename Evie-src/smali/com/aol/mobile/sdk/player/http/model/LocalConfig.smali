.class public final Lcom/aol/mobile/sdk/player/http/model/LocalConfig;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# instance fields
.field public final client:Lcom/aol/mobile/sdk/player/http/model/Client;

.field public final device:Lcom/aol/mobile/sdk/player/http/model/Device;

.field public final extra:Lorg/json/JSONObject;

.field public final sdk:Lcom/aol/mobile/sdk/player/http/model/Sdk;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/model/Client;Lcom/aol/mobile/sdk/player/http/model/Device;Lcom/aol/mobile/sdk/player/http/model/Sdk;Lorg/json/JSONObject;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->client:Lcom/aol/mobile/sdk/player/http/model/Client;

    .line 25
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->device:Lcom/aol/mobile/sdk/player/http/model/Device;

    .line 26
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->sdk:Lcom/aol/mobile/sdk/player/http/model/Sdk;

    .line 27
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/http/model/LocalConfig;->extra:Lorg/json/JSONObject;

    return-void
.end method
