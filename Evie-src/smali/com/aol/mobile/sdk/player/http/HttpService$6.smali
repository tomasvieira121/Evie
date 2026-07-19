.class Lcom/aol/mobile/sdk/player/http/HttpService$6;
.super Ljava/lang/Object;
.source "HttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/http/HttpService;->processResponse(Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$6;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$6;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$6;->val$e:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/aol/mobile/sdk/player/http/HttpService$6;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/HttpService$6;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    new-instance v1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$6;->val$e:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$6;->val$response:Ljava/lang/String;

    const/16 v4, 0xc8

    invoke-direct {v1, v4, v2, v3}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/http/ResponseHandler;->onFailure(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V

    return-void
.end method
