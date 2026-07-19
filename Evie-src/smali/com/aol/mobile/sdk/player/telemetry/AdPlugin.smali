.class public final Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;
.super Ljava/lang/Object;
.source "AdPlugin.java"


# instance fields
.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/utils/VolumeGetter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    .line 29
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;->volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;

    return-void
.end method


# virtual methods
.method public provideObservers(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/StateObserver;
    .locals 7

    .line 34
    new-instance v6, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    new-instance v1, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    invoke-direct {v1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;)V

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    new-instance v3, Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    invoke-direct {v3}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;-><init>()V

    new-instance v4, Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    invoke-direct {v4}, Lcom/aol/mobile/sdk/player/utils/TimeProvider;-><init>()V

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;->volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;-><init>(Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;Lcom/aol/mobile/sdk/player/utils/CacheBuster;Lcom/aol/mobile/sdk/player/utils/TimeProvider;Lcom/aol/mobile/sdk/player/utils/VolumeGetter;)V

    const/4 p1, 0x2

    .line 36
    new-array p1, p1, [Lcom/aol/mobile/sdk/player/StateObserver;

    new-instance v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;-><init>(Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    return-object p1
.end method
