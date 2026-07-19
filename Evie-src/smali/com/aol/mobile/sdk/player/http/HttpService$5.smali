.class Lcom/aol/mobile/sdk/player/http/HttpService$5;
.super Ljava/lang/Object;
.source "HttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/http/HttpService;->asyncProcessRequest(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

.field final synthetic val$e:Lcom/aol/mobile/sdk/player/http/HttpServiceException;

.field final synthetic val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$5;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$5;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$5;->val$e:Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/HttpService$5;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$5;->val$e:Lcom/aol/mobile/sdk/player/http/HttpServiceException;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/http/ResponseHandler;->onFailure(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V

    return-void
.end method
