.class Lcom/aol/mobile/sdk/player/http/HttpService$1;
.super Ljava/lang/Object;
.source "HttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/http/HttpService;->makePost(Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

.field final synthetic val$parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

.field final synthetic val$serializer:Lcom/aol/mobile/sdk/player/http/DataSerializer;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$serializer:Lcom/aol/mobile/sdk/player/http/DataSerializer;

    iput-object p5, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

    iput-object p6, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->this$0:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$data:Ljava/lang/Object;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$serializer:Lcom/aol/mobile/sdk/player/http/DataSerializer;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$parser:Lcom/aol/mobile/sdk/player/http/ResponseParser;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/http/HttpService$1;->val$handler:Lcom/aol/mobile/sdk/player/http/ResponseHandler;

    invoke-static/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/http/HttpService;->access$000(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/Object;Lcom/aol/mobile/sdk/player/http/DataSerializer;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    return-void
.end method
