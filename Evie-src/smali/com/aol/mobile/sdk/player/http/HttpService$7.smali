.class Lcom/aol/mobile/sdk/player/http/HttpService$7;
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

.field final synthetic val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/ResponseHandler;Ljava/lang/Object;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$7;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$7;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$7;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/HttpService$7;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$7;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/http/ResponseHandler;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
