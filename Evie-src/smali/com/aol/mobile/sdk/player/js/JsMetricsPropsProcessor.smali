.class Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;
.super Ljava/lang/Object;
.source "JsMetricsPropsProcessor.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# instance fields
.field private isSessionCompleted:Z

.field private final jsProcessorThread:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;->jsProcessorThread:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;->isSessionCompleted:Z

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;->jsProcessorThread:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->process(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 30
    iget-boolean p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isSessionCompleted:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;->isSessionCompleted:Z

    .line 32
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;->jsProcessorThread:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->quit()V

    :cond_0
    return-void
.end method
