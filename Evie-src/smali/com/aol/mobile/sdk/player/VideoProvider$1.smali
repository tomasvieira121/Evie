.class Lcom/aol/mobile/sdk/player/VideoProvider$1;
.super Ljava/lang/Object;
.source "VideoProvider.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/VideoProvider;->requestVideoModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
        "Lcom/aol/mobile/sdk/player/VideoProviderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/VideoProvider;

.field final synthetic val$context:Lcom/aol/mobile/sdk/player/VideoProvider$Context;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/VideoProvider;Lcom/aol/mobile/sdk/player/VideoProvider$Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProvider$1;->this$0:Lcom/aol/mobile/sdk/player/VideoProvider;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProvider$1;->val$context:Lcom/aol/mobile/sdk/player/VideoProvider$Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V
    .locals 3

    .line 72
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->cause:Ljava/lang/Exception;

    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProvider$1;->this$0:Lcom/aol/mobile/sdk/player/VideoProvider;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/VideoProvider;->access$000(Lcom/aol/mobile/sdk/player/VideoProvider;)Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    move-result-object v0

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->responseJson:Ljava/lang/String;

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;->cause:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;->sendVideoServiceJsonParsingErrorData(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProvider$1;->val$context:Lcom/aol/mobile/sdk/player/VideoProvider$Context;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/VideoProvider$Context;->callback:Lcom/aol/mobile/sdk/player/VideoProvider$Callback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/VideoProvider$Callback;->error(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProvider$1;->val$context:Lcom/aol/mobile/sdk/player/VideoProvider$Context;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/VideoProvider$Context;->callback:Lcom/aol/mobile/sdk/player/VideoProvider$Callback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/VideoProvider$Callback;->success(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/VideoProvider$1;->onSuccess(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)V

    return-void
.end method
