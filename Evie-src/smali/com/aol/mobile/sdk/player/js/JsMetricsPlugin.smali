.class public final Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;
.super Ljava/lang/Object;
.source "JsMetricsPlugin.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/Plugin;


# instance fields
.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;Lcom/aol/mobile/sdk/player/http/HttpService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;

    .line 32
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    return-void
.end method


# virtual methods
.method public provideObservers(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/PlayerStateObserver;
    .locals 6

    .line 38
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;)V

    .line 39
    new-instance v1, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;

    new-instance v2, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->context:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->url:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;-><init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V

    .line 42
    new-instance v2, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;

    invoke-direct {v2, v1, v0}, Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;-><init>(Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;)V

    .line 44
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;->source:Ljava/lang/String;

    new-instance v4, Lcom/aol/mobile/sdk/player/http/StringResponseParser;

    invoke-direct {v4}, Lcom/aol/mobile/sdk/player/http/StringResponseParser;-><init>()V

    new-instance v5, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;

    invoke-direct {v5, p0, v2, p1, v1}, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin$1;-><init>(Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;Lcom/aol/mobile/sdk/player/VideoProviderResponse;Lcom/aol/mobile/sdk/player/js/telemetry/JsTelemetryService;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/aol/mobile/sdk/player/http/HttpService;->makeGet(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/ResponseParser;Lcom/aol/mobile/sdk/player/http/ResponseHandler;)V

    const/4 p1, 0x1

    .line 56
    new-array p1, p1, [Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    new-instance v0, Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;

    invoke-direct {v0, v2}, Lcom/aol/mobile/sdk/player/js/JsMetricsPropsProcessor;-><init>(Lcom/aol/mobile/sdk/player/js/async/JsProcessorThread;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    return-object p1
.end method
