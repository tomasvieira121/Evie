.class public final Lcom/aol/mobile/sdk/player/OneSDK;
.super Ljava/lang/Object;
.source "OneSDK.java"


# instance fields
.field private adPlugin:Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;

.field private httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

.field private final plugins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/aol/mobile/sdk/player/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field final renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

.field private videoProvider:Lcom/aol/mobile/sdk/player/VideoProvider;

.field private vrmTelemetry:Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aol/mobile/sdk/player/http/model/SdkConfig;)V
    .locals 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->plugins:Ljava/util/HashSet;

    .line 42
    new-instance v0, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    invoke-direct {v0, p1}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    .line 44
    new-instance v0, Lcom/aol/mobile/sdk/player/http/HttpService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/http/HttpService;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    .line 46
    iget-object v0, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->services:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;->video:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;->url:Ljava/lang/String;

    .line 47
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->services:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;->video:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services$Video;->context:Ljava/lang/String;

    .line 48
    new-instance v2, Lcom/aol/mobile/sdk/player/VideoProvider;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    new-instance v4, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;

    iget-object v5, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->context:Ljava/lang/String;

    iget-object v6, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->url:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v6}, Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/aol/mobile/sdk/player/VideoProvider;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/telemetry/TelemetrySender;)V

    iput-object v2, p0, Lcom/aol/mobile/sdk/player/OneSDK;->videoProvider:Lcom/aol/mobile/sdk/player/VideoProvider;

    .line 51
    new-instance v0, Lcom/aol/mobile/sdk/player/utils/VolumeGetter;

    invoke-direct {v0, p1}, Lcom/aol/mobile/sdk/player/utils/VolumeGetter;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;

    instance-of p1, p1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$Native;

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/aol/mobile/sdk/player/metrics/MetricsPlugin;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    invoke-direct {p1, v1, v0}, Lcom/aol/mobile/sdk/player/metrics/MetricsPlugin;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/utils/VolumeGetter;)V

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/OneSDK;->addPlugin(Lcom/aol/mobile/sdk/player/Plugin;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;

    instance-of p1, p1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;

    check-cast p1, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;

    .line 58
    new-instance v1, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    invoke-direct {v1, p1, v2}, Lcom/aol/mobile/sdk/player/js/JsMetricsPlugin;-><init>(Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;Lcom/aol/mobile/sdk/player/http/HttpService;)V

    invoke-virtual {p0, v1}, Lcom/aol/mobile/sdk/player/OneSDK;->addPlugin(Lcom/aol/mobile/sdk/player/Plugin;)V

    .line 61
    :cond_1
    :goto_0
    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v2, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    invoke-direct {p1, v1, v2}, Lcom/aol/mobile/sdk/player/telemetry/TelemetryPlugin;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/OneSDK;->addPlugin(Lcom/aol/mobile/sdk/player/Plugin;)V

    .line 62
    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    invoke-direct {p1, v1, p2}, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDK;->vrmTelemetry:Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;

    .line 63
    new-instance p1, Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    invoke-direct {p1, p2, v0}, Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;-><init>(Lcom/aol/mobile/sdk/player/http/HttpService;Lcom/aol/mobile/sdk/player/utils/VolumeGetter;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDK;->adPlugin:Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;

    return-void
.end method


# virtual methods
.method public addPlugin(Lcom/aol/mobile/sdk/player/Plugin;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructPlayer(Lcom/aol/mobile/sdk/player/VideoProviderResponse;Lcom/aol/mobile/sdk/player/Player;)Lcom/aol/mobile/sdk/player/Player;
    .locals 9

    .line 111
    new-instance v8, Lcom/aol/mobile/sdk/player/AdManager;

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->httpService:Lcom/aol/mobile/sdk/player/http/HttpService;

    iget-object v1, v0, Lcom/aol/mobile/sdk/player/http/HttpService;->userAgent:Ljava/lang/String;

    invoke-static {p1}, Lcom/aol/mobile/sdk/player/utils/VideoProviderUtils;->getAdsTimelines(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x7d0

    move-object v0, v8

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/aol/mobile/sdk/player/AdManager;-><init>(Ljava/lang/String;[Lcom/aol/mobile/sdk/player/model/AdsTimeline;Lcom/aol/mobile/sdk/player/Player;JJ)V

    invoke-virtual {p2, v8}, Lcom/aol/mobile/sdk/player/Player;->setAdManager(Lcom/aol/mobile/sdk/player/AdManager;)V

    .line 112
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/Plugin;

    .line 113
    invoke-interface {v1, p1}, Lcom/aol/mobile/sdk/player/Plugin;->provideObservers(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 114
    invoke-virtual {p2, v4}, Lcom/aol/mobile/sdk/player/Player;->addPlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->adPlugin:Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/telemetry/AdPlugin;->provideObservers(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/StateObserver;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 118
    invoke-virtual {p2, v1}, Lcom/aol/mobile/sdk/player/Player;->addStateObserver(Lcom/aol/mobile/sdk/player/StateObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/OneSDK;->vrmTelemetry:Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/telemetry/VrmTelemetry;->getStateObserver()Lcom/aol/mobile/sdk/player/StateObserver;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/aol/mobile/sdk/player/Player;->addStateObserver(Lcom/aol/mobile/sdk/player/StateObserver;)V

    return-object p2
.end method

.method public createBuilder()Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 1

    .line 104
    new-instance v0, Lcom/aol/mobile/sdk/player/PlayerBuilder;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/player/PlayerBuilder;-><init>(Lcom/aol/mobile/sdk/player/OneSDK;)V

    return-object v0
.end method

.method public getVideoProvider()Lcom/aol/mobile/sdk/player/VideoProvider;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->videoProvider:Lcom/aol/mobile/sdk/player/VideoProvider;

    return-object v0
.end method

.method public removePlugin(Lcom/aol/mobile/sdk/player/Plugin;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/OneSDK;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
