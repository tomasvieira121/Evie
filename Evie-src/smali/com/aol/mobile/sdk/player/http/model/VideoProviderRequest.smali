.class public Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;
.super Ljava/lang/Object;
.source "VideoProviderRequest.java"


# instance fields
.field public final context:Ljava/lang/String;

.field public final extra:Lorg/json/JSONObject;

.field public final isAutoplay:Z

.field public final playlistId:Ljava/lang/String;

.field public final siteSection:Ljava/lang/String;

.field public final videoIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->context:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->extra:Lorg/json/JSONObject;

    .line 31
    iput-boolean p3, p0, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->isAutoplay:Z

    .line 32
    iput-object p5, p0, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->videoIds:[Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->playlistId:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/http/model/VideoProviderRequest;->siteSection:Ljava/lang/String;

    return-void
.end method
