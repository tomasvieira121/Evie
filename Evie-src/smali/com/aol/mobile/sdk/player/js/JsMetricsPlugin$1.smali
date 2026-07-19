.class Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;
.super Ljava/lang/Object;
.source "JsMetricsPlugin.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->provideObservers(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/PlayerStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/ResponseHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;

.field final synthetic val$jsProcessorThread:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

.field final synthetic val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

.field final synthetic val$response:Lcom/aol/mobile/sdk/player/VideoProviderResponse;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/VideoProviderResponse;Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->this$0:Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->val$jsProcessorThread:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    iput-object p3, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->val$response:Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    iput-object p4, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->val$jsTelemetry:Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;->sendJsLoadIssue(Lcom/aol/mobile/sdk/player/http/HttpServiceException;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->val$jsProcessorThread:Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;->val$response:Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->asJson:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;->loadJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
