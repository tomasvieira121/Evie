.class public Lcom/aol/mobile/sdk/player/VideoProvider;
.super Ljava/lang/Object;
.source "VideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/VideoProvider$Context;,
        Lcom/aol/mobile/sdk/player/VideoProvider$Callback;
    }
.end annotation


# instance fields
.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final msContext:Ljava/lang/String;

.field private final serverUrl:Ljava/lang/String;

.field private final telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProvider;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    .line 44
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProvider;->serverUrl:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/VideoProvider;->msContext:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/VideoProvider;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/VideoProvider;)Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/VideoProvider;->telemetrySender:Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    return-object p0
.end method


# virtual methods
.method public requestPlaylistModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 12

    move-object v0, p0

    .line 90
    new-instance v1, Lcom/aol/mobile/sdk/player/VideoProvider$Context;

    iget-object v2, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->serverUrl:Ljava/lang/String;

    move-object v9, p1

    move-object/from16 v3, p5

    invoke-direct {v1, v2, v3, p1}, Lcom/aol/mobile/sdk/player/VideoProvider$Context;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;Ljava/lang/String;)V

    .line 92
    iget-object v2, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v10, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->serverUrl:Ljava/lang/String;

    new-instance v11, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;

    iget-object v4, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->msContext:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, v11

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;

    invoke-direct {v6}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;-><init>()V

    new-instance v7, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;

    invoke-direct {v7}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;-><init>()V

    new-instance v8, Lcom/aol/mobile/sdk/player/VideoProvider$2;

    invoke-direct {v8, p0, v1}, Lcom/aol/mobile/sdk/player/VideoProvider$2;-><init>(Lcom/aol/mobile/sdk/player/VideoProvider;Lcom/aol/mobile/sdk/player/VideoProvider$Context;)V

    move-object v3, v2

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/aol/mobile/sdk/player/http/HttpService;->makePost(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method

.method public requestPlaylistModel(Ljava/lang/String;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestPlaylistModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public requestPlaylistModel([Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestPlaylistModel([Ljava/lang/String;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public requestPlaylistModel([Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 13

    move-object v0, p0

    .line 122
    new-instance v1, Lcom/aol/mobile/sdk/player/VideoProvider$Context;

    iget-object v2, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->serverUrl:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v4, p5

    invoke-direct {v1, v2, v4, v3}, Lcom/aol/mobile/sdk/player/VideoProvider$Context;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;Ljava/lang/String;)V

    .line 124
    iget-object v4, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v5, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->serverUrl:Ljava/lang/String;

    new-instance v2, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;

    iget-object v7, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->msContext:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v6, v2

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, p1

    invoke-direct/range {v6 .. v12}, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;

    invoke-direct {v7}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;-><init>()V

    new-instance v8, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;

    invoke-direct {v8}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;-><init>()V

    new-instance v9, Lcom/aol/mobile/sdk/player/VideoProvider$3;

    invoke-direct {v9, p0, v1}, Lcom/aol/mobile/sdk/player/VideoProvider$3;-><init>(Lcom/aol/mobile/sdk/player/VideoProvider;Lcom/aol/mobile/sdk/player/VideoProvider$Context;)V

    invoke-virtual/range {v4 .. v9}, Lcom/aol/mobile/sdk/player/http/HttpService;->makePost(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method

.method public requestPlaylistModel([Ljava/lang/String;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestPlaylistModel([Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public requestVideoModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 13

    move-object v0, p0

    .line 58
    new-instance v1, Lcom/aol/mobile/sdk/player/VideoProvider$Context;

    iget-object v2, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->serverUrl:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v4, p5

    invoke-direct {v1, v2, v4, v3}, Lcom/aol/mobile/sdk/player/VideoProvider$Context;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;Ljava/lang/String;)V

    .line 60
    iget-object v4, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v5, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->serverUrl:Ljava/lang/String;

    new-instance v2, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;

    iget-object v7, v0, Lcom/aol/mobile/sdk/player/VideoProvider;->msContext:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v11, v3

    const/4 v12, 0x0

    move-object v6, v2

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v6 .. v12}, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;

    invoke-direct {v7}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderRequestSerializer;-><init>()V

    new-instance v8, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;

    invoke-direct {v8}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;-><init>()V

    new-instance v9, Lcom/aol/mobile/sdk/player/VideoProvider$1;

    invoke-direct {v9, p0, v1}, Lcom/aol/mobile/sdk/player/VideoProvider$1;-><init>(Lcom/aol/mobile/sdk/player/VideoProvider;Lcom/aol/mobile/sdk/player/VideoProvider$Context;)V

    invoke-virtual/range {v4 .. v9}, Lcom/aol/mobile/sdk/player/http/HttpService;->makePost(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method

.method public requestVideoModel(Ljava/lang/String;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestVideoModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method
