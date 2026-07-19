.class Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2$1;
.super Ljava/lang/Object;
.source "JsProcessorThread.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2$1;->this$1:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlFired(Ljava/lang/String;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2$1;->this$1:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$mtHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2$1;->this$1:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$mtHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
