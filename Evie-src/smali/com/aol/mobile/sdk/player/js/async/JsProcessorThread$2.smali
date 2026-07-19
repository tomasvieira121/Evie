.class Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;
.super Ljava/lang/Object;
.source "JsProcessorThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final propsLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

.field final synthetic val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

.field final synthetic val$jsWorkThread:Landroid/os/HandlerThread;

.field final synthetic val$mtHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;Landroid/os/Handler;Landroid/os/HandlerThread;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$mtHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$jsWorkThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->propsLog:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 76
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    return v3

    .line 94
    :pswitch_0
    const-class v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;

    if-eq v0, v1, :cond_1

    return v3

    .line 95
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;

    .line 99
    :try_start_0
    invoke-static {p1}, Lcom/aol/mobile/sdk/player/js/PropertiesSerializer;->toJson(Lcom/aol/mobile/sdk/player/model/properties/Properties;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->propsLog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->propsLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->processProps(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->propsLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {v2}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->processProps(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->propsLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->processProps(Ljava/lang/String;)V

    :goto_2
    return v4

    :catch_0
    move-exception p1

    .line 101
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$mtHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v4

    .line 78
    :pswitch_1
    const-class v1, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;

    if-eq v0, v1, :cond_5

    return v3

    .line 79
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;

    .line 81
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->dispose()V

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    new-instance v1, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;->access$100(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;->js:Ljava/lang/String;

    new-instance v5, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2$1;

    invoke-direct {v5, p0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2$1;-><init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;)V

    invoke-direct {v1, v2, v3, p1, v5}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor$Callback;)V

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$002(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    return v4

    .line 121
    :pswitch_2
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 122
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;->dispose()V

    .line 123
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-static {p1, v1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->access$002(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    .line 125
    :cond_7
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;->val$jsWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
