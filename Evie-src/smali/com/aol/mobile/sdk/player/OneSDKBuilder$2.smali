.class Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;
.super Ljava/lang/Object;
.source "OneSDKBuilder.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/OneSDKBuilder;->create(Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
        "Lcom/aol/mobile/sdk/player/http/model/SdkConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

.field final synthetic val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/OneSDKBuilder;Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;->this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;->val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;->val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/aol/mobile/sdk/player/http/model/SdkConfig;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;->val$callback:Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;

    new-instance v1, Lcom/aol/mobile/sdk/player/OneSDK;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;->this$0:Lcom/aol/mobile/sdk/player/OneSDKBuilder;

    invoke-static {v2}, Lcom/aol/mobile/sdk/player/OneSDKBuilder;->access$000(Lcom/aol/mobile/sdk/player/OneSDKBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/aol/mobile/sdk/player/OneSDK;-><init>(Landroid/content/Context;Lcom/aol/mobile/sdk/player/http/model/SdkConfig;)V

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$Callback;->onSuccess(Lcom/aol/mobile/sdk/player/OneSDK;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 220
    check-cast p1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/OneSDKBuilder$2;->onSuccess(Lcom/aol/mobile/sdk/player/http/model/SdkConfig;)V

    return-void
.end method
