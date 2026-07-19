.class public Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;
.super Ljava/lang/Object;
.source "TrackingPixelsReporter.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/listener/detector/BufferEndDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/BufferStartDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/ContextStartedDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/DecileDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/HeartbeatDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/PlaylistStatisticDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/QuartileDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/StartDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/Video3SecDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/VideoPlayDetector$Callback;
.implements Lcom/aol/mobile/sdk/player/listener/detector/VideoTimeDetector$Callback;


# instance fields
.field private final adUrl:Ljava/lang/String;

.field private final apid:Ljava/lang/String;

.field private final applicationId:Ljava/lang/String;

.field private final buyingCompanyId:Ljava/lang/String;

.field private final cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

.field private final mediaFileHosts:[Ljava/lang/String;

.field private mpids:[Ljava/lang/String;

.field private final platformSupport:Ljava/lang/String;

.field private final playerId:Ljava/lang/String;

.field private final playerType:Ljava/lang/String;

.field private final playerVersion:Ljava/lang/String;

.field private final playlistId:Ljava/lang/String;

.field private final referringUrl:Ljava/lang/String;

.field private final sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

.field private final sessionId:Ljava/lang/String;

.field private final siteSection:Ljava/lang/String;

.field private final timeProvider:Lcom/aol/mobile/sdk/player/utils/TimeProvider;

.field private final trkUrl:Ljava/lang/String;

.field private final uuid:Ljava/lang/String;

.field private vcids:[Ljava/lang/String;

.field private videoIds:[Ljava/lang/String;

.field private final videoPlayType:Ljava/lang/String;

.field private final volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/metrics/pixel/PixelsSender;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;Lcom/aol/mobile/sdk/player/utils/CacheBuster;Lcom/aol/mobile/sdk/player/utils/TimeProvider;Lcom/aol/mobile/sdk/player/utils/VolumeGetter;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    .line 115
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->trkUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    .line 116
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->adUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->adUrl:Ljava/lang/String;

    .line 117
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->appId:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 118
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->pid:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 119
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->bcid:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 120
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->uuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->uuid:Ljava/lang/String;

    .line 121
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->playerType:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 122
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->platformSupport:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 123
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->videoIds:[Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    .line 124
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->mediaFileHosts:[Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->mediaFileHosts:[Ljava/lang/String;

    .line 125
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->playlistId:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 126
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->siteSection:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 127
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->referringUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 128
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->videoPlayType:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 129
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->playerVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 130
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->sessionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 131
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->apid:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->apid:Ljava/lang/String;

    .line 132
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->vcids:[Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->vcids:[Ljava/lang/String;

    .line 133
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->mpids:[Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->mpids:[Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 135
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->timeProvider:Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    .line 136
    iput-object p5, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private formatAdEngineFlowUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 433
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 434
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 437
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 438
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->v(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 439
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 440
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 441
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 442
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 443
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 444
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 445
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 446
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 447
    invoke-virtual {p1, p6}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->rcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 448
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p7, :cond_0

    move-object p3, p2

    goto :goto_0

    .line 449
    :cond_0
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    if-nez p8, :cond_1

    goto :goto_1

    .line 450
    :cond_1
    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->h(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 451
    invoke-static {p9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->ap(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 452
    invoke-virtual {p1, p10}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->stg(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 453
    invoke-virtual {p1, p11}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->aen(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 454
    invoke-virtual {p1, p13}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->aid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 455
    invoke-virtual {p1, p12}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 456
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 457
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;

    move-result-object p1

    .line 458
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAdEngineRequestUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 299
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 300
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 302
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object v0

    .line 303
    invoke-virtual {v0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->v(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p2

    .line 304
    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 305
    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, p3, p1

    .line 306
    invoke-virtual {p2, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 307
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 308
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 309
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 310
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    .line 311
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 312
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    .line 313
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    .line 314
    invoke-virtual {p1, p6}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->rcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    .line 315
    invoke-virtual {p1, p7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->aen(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    .line 316
    invoke-virtual {p1, p8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 317
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 318
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAdEngineResponseUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p7

    .line 392
    new-instance v2, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;-><init>()V

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 393
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 394
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 395
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    move-object v3, p2

    .line 396
    invoke-virtual {v2, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->v(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    move-object v3, p3

    .line 397
    invoke-virtual {v2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    .line 398
    invoke-virtual {v2, p7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->ar(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 399
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    .line 400
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->aert(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 401
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    .line 402
    invoke-static/range {p12 .. p12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->ft(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 403
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 404
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 405
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 406
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    move-object v3, p4

    .line 407
    invoke-virtual {v2, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    iget-object v3, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 408
    invoke-virtual {v2, v3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    move-object v3, p5

    .line 409
    invoke-virtual {v2, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    move-object v3, p6

    .line 410
    invoke-virtual {v2, p6}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->rcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v2

    const-string v3, "timeout"

    .line 411
    invoke-virtual {p7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p10, p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->to(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v1

    move-object/from16 v2, p13

    .line 412
    invoke-virtual {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->aen(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v1

    move-object/from16 v2, p14

    .line 413
    invoke-virtual {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v1

    iget-object v2, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 414
    invoke-virtual {v2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v1

    iget-object v2, v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 415
    invoke-virtual {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;->get()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private formatAdIssueUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 353
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 354
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 355
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 356
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 357
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 358
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->v(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 359
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 360
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 361
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 362
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 363
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 364
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 365
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 366
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 367
    invoke-virtual {p1, p6}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->rcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 368
    invoke-virtual {p1, p7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->dt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 369
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 370
    invoke-virtual {p1, p8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->stg(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 371
    invoke-virtual {p1, p9}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->aen(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 372
    invoke-virtual {p1, p11}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->aid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 373
    invoke-virtual {p1, p10}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 374
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 375
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;

    move-result-object p1

    .line 376
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAdRequestUrl(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 271
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 273
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p2

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 275
    invoke-virtual {p2, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p2

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 276
    invoke-virtual {p2, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    .line 277
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->asn(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    .line 278
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 279
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 280
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 281
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 282
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 283
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    .line 284
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 285
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 286
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAdServerRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 326
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 328
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 329
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 330
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object p1

    .line 333
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->uuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object p1

    .line 334
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 335
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 336
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 337
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAdStartUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 574
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 575
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 576
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 577
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 578
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 579
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object v0

    .line 580
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object p1

    .line 581
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->uuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object p1

    .line 582
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 583
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 584
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 585
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;

    move-result-object p1

    .line 586
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAdViewTimeUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2

    .line 623
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 624
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 625
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 626
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 627
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 628
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 629
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    const/4 v0, 0x1

    .line 630
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->s(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 631
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 632
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    .line 633
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    .line 634
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    .line 635
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    .line 636
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->adid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    .line 637
    invoke-static {p6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->t(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 638
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 639
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    .line 640
    invoke-static {p7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->al(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 641
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;

    move-result-object p1

    .line 642
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAdViewabilityUrl(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 468
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 469
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 470
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 471
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 472
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    .line 473
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->v(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    .line 474
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 475
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 476
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 477
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 478
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 479
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    .line 480
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->ap(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    .line 481
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->vstd(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    .line 482
    invoke-virtual {p1, p6}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 483
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 484
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatBufferEndUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    .line 704
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 705
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 706
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 707
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 708
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 709
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 710
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 711
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    .line 712
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->it(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    iget-object p4, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 713
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    .line 714
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->url(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 715
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 716
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    .line 717
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 718
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;

    move-result-object p1

    .line 719
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatBufferStartUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    .line 684
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 685
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 686
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 687
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 688
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 689
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 690
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 691
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    .line 692
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->it(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    iget-object p4, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 693
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    .line 694
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->url(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 695
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 696
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    .line 697
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 698
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatContextStartedUrl(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 491
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 492
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 493
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 494
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object v0

    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 496
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 497
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 498
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 499
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 500
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    .line 501
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 502
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 503
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatDisplayUrl(IIJLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 554
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 555
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 556
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 557
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 558
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 559
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object v0

    .line 560
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    .line 561
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->h(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    .line 562
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->dt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 563
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 564
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 565
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    .line 566
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 567
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 568
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;

    move-result-object p1

    .line 569
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatHeartbeatUrl(ILjava/lang/String;IIIIILjava/lang/Double;Z)Ljava/lang/String;
    .locals 2

    .line 655
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 656
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 657
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 658
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 659
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 660
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 661
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 662
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 663
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object v0

    .line 664
    invoke-virtual {v0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 665
    invoke-virtual {p2, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    .line 666
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->cvt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    .line 667
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->t(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    .line 668
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    .line 669
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    .line 670
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->h(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 671
    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    .line 672
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->bft(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    if-nez p8, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p4, "%.5f"

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p8, p5, p6

    .line 673
    invoke-static {p3, p4, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->bit(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p2

    .line 674
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->getVcdn(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->vcdn(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p1

    .line 675
    invoke-direct {p0, p9}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->getVolume(Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->pvwsound(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->apid:Ljava/lang/String;

    .line 676
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->apid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 677
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 678
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatImpressionUrl()Ljava/lang/String;
    .locals 2

    .line 539
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 540
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 541
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 542
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 543
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 544
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 545
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 546
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 547
    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatIntentUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    .line 744
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 745
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 746
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 747
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 748
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 749
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 750
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 751
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    .line 752
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->it(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    iget-object p4, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 753
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    .line 754
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->url(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 755
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 756
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    .line 757
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 758
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;

    move-result-object p1

    .line 759
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatSlotOppUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 514
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 515
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 516
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 517
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 518
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 519
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 520
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 521
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->platformSupport:Ljava/lang/String;

    .line 522
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 523
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 524
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    .line 525
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 526
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 527
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    .line 528
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 529
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    const/4 p2, 0x1

    .line 530
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->s(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    if-nez p6, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 531
    :cond_0
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    .line 532
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->slot(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    .line 533
    invoke-virtual {p1, p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatStartUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    .line 724
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 725
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 726
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 727
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 728
    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 729
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 730
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 731
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    .line 732
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->it(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    iget-object p4, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 733
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    .line 734
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->url(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 735
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 736
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    .line 737
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 738
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;

    move-result-object p1

    .line 739
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatVideo3SecUrl(ILjava/lang/String;IILjava/lang/Double;Z)Ljava/lang/String;
    .locals 3

    .line 591
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 592
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 593
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 594
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 595
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 596
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 597
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    .line 598
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 599
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 600
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 601
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 602
    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 603
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object v0

    .line 604
    invoke-virtual {v0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p2

    .line 605
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->getVcdn(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->vcdn(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p1

    if-nez p5, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "%.5f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    .line 606
    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->bit(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p1

    .line 607
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->bft(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p1

    .line 608
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->cvt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p1

    .line 609
    invoke-direct {p0, p6}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->getVolume(Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->pvwsound(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->apid:Ljava/lang/String;

    .line 610
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->apid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 611
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;

    move-result-object p1

    .line 612
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatVideoDecileUrl(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 154
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object v0

    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    .line 156
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->d(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 157
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 158
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 159
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 160
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 161
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 162
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->timeProvider:Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    .line 163
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/TimeProvider;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->ts(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 165
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 166
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatVideoImpressionUrl(III)Ljava/lang/String;
    .locals 2

    .line 764
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 765
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 766
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 767
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 768
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 769
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 770
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 771
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 772
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 773
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object v0

    .line 774
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p2

    .line 775
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->h(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->vcids:[Ljava/lang/String;

    aget-object p3, p3, p1

    .line 776
    invoke-direct {p0, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->vcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->mpids:[Ljava/lang/String;

    aget-object p3, p3, p1

    .line 777
    invoke-direct {p0, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->vcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->timeProvider:Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    .line 778
    invoke-virtual {p3}, Lcom/aol/mobile/sdk/player/utils/TimeProvider;->get()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->ts(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 779
    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 780
    invoke-virtual {p3}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p2

    .line 781
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 782
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;

    move-result-object p1

    .line 783
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatVideoPlayUrl(IIILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 197
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object v0

    .line 198
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 199
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 200
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 201
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    .line 202
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    .line 203
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->h(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 204
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 205
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 206
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 207
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->timeProvider:Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    .line 208
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/TimeProvider;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->ts(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 210
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 211
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatVideoQuartileUrl(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 176
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object v0

    .line 177
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 178
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    .line 179
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->q(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 180
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 181
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 182
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 183
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 184
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->timeProvider:Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    .line 185
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/TimeProvider;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->ts(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 187
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatVideoStatisticUrl(IFILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 220
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 222
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object v0

    .line 225
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->nv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.4f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 226
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->t(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    .line 227
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->ac(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 228
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 229
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 230
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 231
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    .line 232
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 233
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 234
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatVideoTimeUrl(IFLjava/lang/Double;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 243
    new-instance v0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;-><init>()V

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->applicationId:Ljava/lang/String;

    .line 244
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerId:Ljava/lang/String;

    .line 245
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->buyingCompanyId:Ljava/lang/String;

    .line 246
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoIds:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 247
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object v0

    .line 248
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playlistId:Ljava/lang/String;

    .line 249
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->videoPlayType:Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.4f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 251
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->t(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "%.4f"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p3, v1, v4

    .line 252
    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->pct(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerType:Ljava/lang/String;

    .line 253
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->playerVersion:Ljava/lang/String;

    .line 254
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sessionId:Ljava/lang/String;

    .line 255
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->referringUrl:Ljava/lang/String;

    .line 256
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->timeProvider:Lcom/aol/mobile/sdk/player/utils/TimeProvider;

    .line 257
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/TimeProvider;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->ts(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->cacheBuster:Lcom/aol/mobile/sdk/player/utils/CacheBuster;

    .line 259
    invoke-virtual {p2}, Lcom/aol/mobile/sdk/player/utils/CacheBuster;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->siteSection:Ljava/lang/String;

    .line 260
    invoke-virtual {p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVcdn(I)Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->mediaFileHosts:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method private getVolume(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->volumeGetter:Lcom/aol/mobile/sdk/player/utils/VolumeGetter;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/utils/VolumeGetter;->getAudioVolume()I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public onBufferEndDetected(ILjava/lang/String;Ljava/lang/String;F)V
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatBufferEndUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBufferStartDetected(ILjava/lang/String;Ljava/lang/String;F)V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatBufferStartUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onContextStartedDetected(ILjava/lang/String;)V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatContextStartedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDecileDetected(IILjava/lang/String;)V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatVideoDecileUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayDetected(IIJLjava/lang/String;)V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct/range {p0 .. p5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatDisplayUrl(IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHeartbeatDetected(ILjava/lang/String;IIIIILjava/lang/Double;Z)V
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct/range {p0 .. p9}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatHeartbeatUrl(ILjava/lang/String;IIIIILjava/lang/Double;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onImpressionDetected()V
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatImpressionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIntentDetected(ILjava/lang/String;Ljava/lang/String;F)V
    .locals 2

    .line 1090
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatIntentUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayDetected(IIILjava/lang/String;)V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatVideoPlayUrl(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQuartileDetected(IILjava/lang/String;)V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatVideoQuartileUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSlotOppDetected(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1051
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatSlotOppUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartDetected(ILjava/lang/String;Ljava/lang/String;F)V
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatStartUrl(ILjava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatisticDetected(IFILjava/lang/String;)V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatVideoStatisticUrl(IFILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeDetected(IFLjava/lang/Double;Ljava/lang/String;)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatVideoTimeUrl(IFLjava/lang/Double;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideo3SecDetected(ILjava/lang/String;IILjava/lang/Double;Z)V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct/range {p0 .. p6}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatVideo3SecUrl(ILjava/lang/String;IILjava/lang/Double;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdEngineRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v9, p0

    .line 831
    iget-object v10, v9, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v11, v9, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object v0, p2

    .line 834
    invoke-direct {p0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 835
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p8

    .line 836
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p3

    .line 837
    invoke-direct {p0, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 838
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    .line 839
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object/from16 v8, p7

    .line 832
    invoke-direct/range {v0 .. v8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdEngineRequestUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-interface {v10, v11, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdEngineResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p0

    .line 856
    iget-object v14, v15, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v13, v15, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 859
    invoke-direct {v15, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 860
    invoke-direct {v15, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p14

    .line 861
    invoke-direct {v15, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    .line 862
    invoke-direct {v15, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 863
    invoke-direct {v15, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    .line 868
    invoke-direct {v15, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object v15, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v14, p13

    .line 857
    invoke-direct/range {v0 .. v14}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdEngineResponseUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    .line 856
    invoke-interface {v15, v1, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdEngineStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v14, p0

    .line 906
    iget-object v15, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v13, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 909
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 910
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p11

    .line 911
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    .line 912
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 913
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "started"

    move-object/from16 v0, p5

    .line 918
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p12

    .line 920
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v12, p10

    move-object v14, v13

    move-object/from16 v13, v16

    .line 907
    invoke-direct/range {v0 .. v13}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdEngineFlowUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-interface {v15, v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdFinished(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v14, p0

    .line 956
    iget-object v15, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v13, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 959
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 960
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p11

    .line 961
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    .line 962
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 963
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "finished"

    move-object/from16 v0, p5

    .line 968
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p12

    .line 970
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v12, p10

    move-object v14, v13

    move-object/from16 v13, v16

    .line 957
    invoke-direct/range {v0 .. v13}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdEngineFlowUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    invoke-interface {v15, v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdIssue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v12, p0

    .line 883
    iget-object v13, v12, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v14, v12, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 886
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 887
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p10

    .line 888
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    .line 889
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 890
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    .line 893
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p11

    .line 895
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 884
    invoke-direct/range {v0 .. v11}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdIssueUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-interface {v13, v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdLoaded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v14, p0

    .line 998
    iget-object v15, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v13, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 1001
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 1002
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p11

    .line 1003
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    .line 1004
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 1005
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "loaded"

    move-object/from16 v0, p5

    .line 1010
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p12

    .line 1012
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v12, p10

    move-object v14, v13

    move-object/from16 v13, v16

    .line 999
    invoke-direct/range {v0 .. v13}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdEngineFlowUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-interface {v15, v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdQuartile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v14, p0

    .line 935
    iget-object v15, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v13, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 938
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 939
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p12

    .line 940
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    .line 941
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 942
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    .line 947
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p13

    .line 949
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, v16

    .line 936
    invoke-direct/range {v0 .. v13}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdEngineFlowUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-interface {v15, v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdRequest(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 819
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    .line 822
    invoke-direct {p0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 823
    invoke-direct {p0, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move v3, p1

    move v6, p4

    move-object v7, p5

    .line 820
    invoke-direct/range {v2 .. v7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdRequestUrl(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdServerRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->adUrl:Ljava/lang/String;

    .line 846
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->uuid:Ljava/lang/String;

    .line 845
    invoke-direct {p0, p1, v2, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdServerRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->adUrl:Ljava/lang/String;

    .line 926
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->uuid:Ljava/lang/String;

    .line 925
    invoke-direct {p0, p1, v2, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdStartUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 924
    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdViewTime(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 11

    move-object v8, p0

    .line 1056
    iget-object v9, v8, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v10, v8, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object v0, p3

    .line 1060
    invoke-direct {p0, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p4

    .line 1061
    invoke-direct {p0, p4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    .line 1062
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v6, p6

    move/from16 v7, p7

    .line 1057
    invoke-direct/range {v0 .. v7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdViewTimeUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-interface {v9, v10, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdViewability(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1017
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    .line 1020
    invoke-direct {p0, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-direct {p0, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move v3, p1

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1018
    invoke-direct/range {v2 .. v8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdViewabilityUrl(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1017
    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendAdWin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v14, p0

    .line 977
    iget-object v15, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v13, v14, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 980
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    .line 981
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p11

    .line 982
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    .line 983
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    .line 984
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "win"

    move-object/from16 v0, p5

    .line 989
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p12

    .line 991
    invoke-direct {v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v12, p10

    move-object v14, v13

    move-object/from16 v13, v16

    .line 978
    invoke-direct/range {v0 .. v13}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatAdEngineFlowUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-interface {v15, v14, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPixel(Ljava/lang/String;)V
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixelDirect(Ljava/lang/String;)V

    return-void
.end method

.method public sendVideoImpression(III)V
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sender:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->trkUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->formatVideoImpressionUrl(III)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsSender;->sendPixel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
