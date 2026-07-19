.class Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;
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
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

.field final synthetic val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

.field final synthetic val$pixelsSender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;->this$0:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;->val$pixelsSender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;->val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;->val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONException;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->sendPropsSerializationIssue(Lorg/json/JSONException;)V

    return v1

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;->val$pixelsSender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixelDirect(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
