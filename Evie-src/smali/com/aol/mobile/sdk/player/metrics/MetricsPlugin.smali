.class public final Lcom/aol/mobile/sdk/player/metrics/MetricsPlugin;
.super Ljava/lang/Object;
.source "MetricsPlugin.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/Plugin;


# instance fields
.field private final httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/utils/VolumeGetter;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/MetricsPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    .line 39
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/MetricsPlugin;->volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;

    return-void
.end method


# virtual methods
.method public provideObservers(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/PlayerStateObserver;
    .locals 7

    .line 45
    new-instance v1, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/MetricsPlugin;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    invoke-direct {v1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;)V

    .line 47
    new-instance v6, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    new-instance v3, Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    invoke-direct {v3}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;-><init>()V

    new-instance v4, Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    invoke-direct {v4}, Lcom/aol/mobile/sdk/player/utils/TimeProvider;-><init>()V

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/metrics/MetricsPlugin;->volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;-><init>(Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;Lcom/aol/mobile/sdk/player/utils/CacheBuster;Lcom/aol/mobile/sdk/player/utils/TimeProvider;Lcom/aol/mobile/sdk/player/utils/VolumeGetter;)V

    const/16 p1, 0xa

    .line 50
    new-array p1, p1, [Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;)V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;)V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;)V

    const/4 v1, 0x4

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;)V

    const/4 v1, 0x5

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;)V

    const/4 v1, 0x6

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;)V

    const/4 v1, 0x7

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector;-><init>(Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;)V

    const/16 v1, 0x8

    aput-object v0, p1, v1

    new-instance v0, Lcom/aol/mobile/sdk/player/detector/reporter/VideoImpressionReporter;

    invoke-direct {v0, v6}, Lcom/aol/mobile/sdk/player/detector/reporter/VideoImpressionReporter;-><init>(Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;)V

    const/16 v1, 0x9

    aput-object v0, p1, v1

    return-object p1
.end method
