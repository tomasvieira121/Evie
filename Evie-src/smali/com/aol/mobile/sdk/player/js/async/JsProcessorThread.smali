.class public Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;
.super Ljava/lang/Object;
.source "JsProcessorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;
    }
.end annotation


# static fields
.field private static final MSG_LOAD_JS:I = 0x1

.field private static final MSG_PROCESS_PROPS:I = 0x2

.field private static final MSG_PROPS_SERIALIZE_ERROR:I = 0x1

.field private static final MSG_QUIT:I

.field private static final MSG_URL_FIRED:I


# instance fields
.field private jstProcessor:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

.field private final jswHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JS working thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;-><init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 66
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$2;-><init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;Landroid/os/Handler;Landroid/os/HandlerThread;)V

    invoke-direct {p2, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->jswHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->jstProcessor:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    return-object p0
.end method

.method static synthetic access$002(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;)Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->jstProcessor:Lcom/aol/mobile/sdk/player/js/processor/DuktapeProcessor;

    return-object p1
.end method


# virtual methods
.method public loadJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->jswHandler:Landroid/os/Handler;

    new-instance v1, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$JsLoadParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread$1;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public process(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->jswHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public quit()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->jswHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
