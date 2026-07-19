.class public final Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;
.super Ljava/lang/Object;
.source "TelemetryPlugin.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/Plugin;


# instance fields
.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    .line 27
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    return-void
.end method


# virtual methods
.method public provideObservers(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/PlayerStateObserver;
    .locals 3

    .line 33
    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->context:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->url:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    new-instance v1, Lcom/aol/mobile/sdk/player/telemetry/detector/PlaybackErrorDetector;

    invoke-direct {v1, p1}, Lcom/aol/mobile/sdk/player/telemetry/detector/PlaybackErrorDetector;-><init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/aol/mobile/sdk/player/telemetry/detector/ExternalPlaybackTriggeredDetector;

    invoke-direct {v1, p1}, Lcom/aol/mobile/sdk/player/telemetry/detector/ExternalPlaybackTriggeredDetector;-><init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;

    invoke-direct {v1, p1}, Lcom/aol/mobile/sdk/player/telemetry/detector/SubtitlesEnabledDetector;-><init>(Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    return-object v0
.end method
