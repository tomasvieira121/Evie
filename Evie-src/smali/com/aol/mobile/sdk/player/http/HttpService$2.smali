.class Lcom/aol/mobile/sdk/player/http/HttpService$2;
.super Ljava/lang/Object;
.source "HttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/http/HttpService;->makeGet(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

.field final synthetic val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

.field final synthetic val$parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->val$parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

    iput-object p4, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->val$parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$2;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    invoke-static {v0, v1, v2, v3}, Lcom/aol/mobile/sdk/player/http/HttpService;->access$100(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method
