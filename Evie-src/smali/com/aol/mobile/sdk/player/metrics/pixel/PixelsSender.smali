.class public Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;
.super Ljava/lang/Object;
.source "PixelsSender.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;


# instance fields
.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

.field private final responseHandler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/aol/mobile/sdk/player/http/EmptyResponseParser;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/http/EmptyResponseParser;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

    .line 26
    new-instance v0, Lcom/aol/mobile/sdk/player/http/EmptyResponseHandler;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/http/EmptyResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->responseHandler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    .line 35
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    return-void
.end method


# virtual methods
.method public sendPixel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->responseHandler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    invoke-virtual {v0, p1, p2, v1}, Lcom/aol/mobile/sdk/player/http/HttpService;->makeGet(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public sendPixelDirect(Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;->responseHandler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/aol/mobile/sdk/player/http/HttpService;->makeGet(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method
