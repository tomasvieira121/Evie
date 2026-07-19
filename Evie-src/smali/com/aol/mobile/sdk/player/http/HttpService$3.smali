.class Lcom/aol/mobile/sdk/player/http/HttpService$3;
.super Ljava/lang/Object;
.source "HttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/http/HttpService;->asyncProcessRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/Exception;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$3;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$3;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/HttpService$3;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    new-instance v1, Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$3;->val$e:Ljava/lang/Exception;

    const/16 v3, 0xc8

    invoke-direct {v1, v3, v2}, Lcom/aol/mobile/sdk/player/http/HttpServiceException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/http/ResponseHandler;->onFailure(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V

    return-void
.end method
