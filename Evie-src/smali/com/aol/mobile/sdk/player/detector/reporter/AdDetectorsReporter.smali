.class public Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;
.super Ljava/lang/Object;
.source "AdDetectorsReporter.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/StateObserver;


# instance fields
.field private adClickDetector:Lcom/aol/mobile/sdk/player/detector/AdClickDetector;

.field private adEngineRequestDetector:Lcom/aol/mobile/sdk/player/detector/AdEngineRequestDetector;

.field private adEngineResponseDetector:Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;

.field private adFinishDetector:Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;

.field private adIssueDetector:Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;

.field private adLoadWinDetector:Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;

.field private adPauseDetector:Lcom/aol/mobile/sdk/player/detector/AdPauseDetector;

.field private adQuartileDetector:Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;

.field private adRequestDetector:Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;

.field private adResumeDetector:Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;

.field private adStartDetector:Lcom/aol/mobile/sdk/player/detector/AdStartDetector;

.field private adViewTimeDetector:Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;

.field private adViewabilityDetector:Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;

.field private final reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adQuartileDetector:Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;

    .line 41
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdClickDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdClickDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adClickDetector:Lcom/aol/mobile/sdk/player/detector/AdClickDetector;

    .line 42
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adLoadWinDetector:Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;

    .line 43
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdStartDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdStartDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adStartDetector:Lcom/aol/mobile/sdk/player/detector/AdStartDetector;

    .line 44
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adFinishDetector:Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;

    .line 45
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adIssueDetector:Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;

    .line 46
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adResumeDetector:Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;

    .line 47
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdPauseDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdPauseDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adPauseDetector:Lcom/aol/mobile/sdk/player/detector/AdPauseDetector;

    .line 48
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adViewTimeDetector:Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;

    .line 49
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adRequestDetector:Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;

    .line 50
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adViewabilityDetector:Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;

    .line 51
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdEngineRequestDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdEngineRequestDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adEngineRequestDetector:Lcom/aol/mobile/sdk/player/detector/AdEngineRequestDetector;

    .line 52
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adEngineResponseDetector:Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;

    .line 55
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    return-void
.end method

.method private checkAdClick(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adClickDetector:Lcom/aol/mobile/sdk/player/detector/AdClickDetector;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isAdClicked:Z

    invoke-virtual {v0, p2}, Lcom/aol/mobile/sdk/player/detector/AdClickDetector;->detect(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/Pixels;->clickTracking:[Ljava/lang/String;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 116
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAdEngineRequest(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 11

    .line 281
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    .line 282
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adEngineRequestDetector:Lcom/aol/mobile/sdk/player/detector/AdEngineRequestDetector;

    iget-object v2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->taskState:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    invoke-virtual {v1, v2}, Lcom/aol/mobile/sdk/player/detector/AdEngineRequestDetector;->detect(Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 284
    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, p2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 285
    iget-object p2, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    .line 286
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v4, p2, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v5, p2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v6, p2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v7, p2, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget-object v8, p1, Lcom/aol/mobile/sdk/player/model/AdState;->adType:Ljava/lang/String;

    iget-object v9, v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v10, v0, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    invoke-virtual/range {v2 .. v10}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdEngineRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v0, v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdServerRequest(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkAdEngineResponse(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 293
    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    .line 294
    iget-object v4, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adEngineResponseDetector:Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;

    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->taskState:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

    invoke-virtual {v4, v5}, Lcom/aol/mobile/sdk/player/detector/AdEngineResponseDetector;->detect(Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    iget-object v4, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 296
    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v6, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 297
    iget-object v2, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    .line 298
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->taskError:Ljava/lang/Exception;

    if-nez v5, :cond_0

    const-string v5, "yes"

    :goto_0
    move-object v12, v5

    goto :goto_1

    :cond_0
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->taskError:Ljava/lang/Exception;

    instance-of v5, v5, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_1

    const-string v5, "timeout"

    goto :goto_0

    :cond_1
    const-string v5, "no"

    goto :goto_0

    .line 301
    :goto_1
    sget-object v5, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter$1;->$SwitchMap$com$aol$mobile$sdk$player$model$VrmState$GroupProcessingState:[I

    iget-object v7, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->groupProcessingState:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    invoke-virtual {v7}, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x0

    const/16 v17, 0x0

    goto :goto_2

    :pswitch_0
    const/4 v5, 0x2

    const/16 v17, 0x2

    goto :goto_2

    :pswitch_1
    const/4 v5, 0x1

    const/16 v17, 0x1

    .line 311
    :goto_2
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v7, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v8, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v9, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v10, v2, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget-object v11, v1, Lcom/aol/mobile/sdk/player/model/AdState;->adType:Ljava/lang/String;

    iget-wide v13, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->taskTime:J

    const-string v1, "timeout"

    .line 313
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x1f4

    goto :goto_3

    :cond_2
    const-wide/16 v1, 0x0

    :goto_3
    move-wide v15, v1

    iget-object v1, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v2, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 311
    invoke-virtual/range {v5 .. v19}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdEngineResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkAdFlow(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 122
    iget-object v3, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v3, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v3, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 124
    iget-object v4, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 125
    iget-object v5, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v15, v5, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 127
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adLoadWinDetector:Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/aol/mobile/sdk/player/detector/AdLoadWinDetector;->detect(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v7, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v8, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v9, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v10, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object v11, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-object v6, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v12, v6, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object v6, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v13, v6, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-boolean v14, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    iget-object v6, v15, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    move-object/from16 v17, v6

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    move-object/from16 v18, v6

    move v6, v4

    move/from16 v19, v4

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    invoke-virtual/range {v5 .. v17}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdWin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v7, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v8, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v9, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v10, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object v11, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-object v6, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v12, v6, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object v6, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v13, v6, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-boolean v14, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    iget-object v15, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    move-object/from16 v17, v6

    move/from16 v6, v19

    invoke-virtual/range {v5 .. v17}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdLoaded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move/from16 v19, v4

    move-object v4, v15

    .line 155
    :goto_0
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adStartDetector:Lcom/aol/mobile/sdk/player/detector/AdStartDetector;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    iget-object v7, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    if-nez v7, :cond_2

    move-wide/from16 v7, v20

    goto :goto_1

    :cond_2
    iget-object v7, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v7, v7, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    :goto_1
    invoke-virtual {v5, v6, v7, v8}, Lcom/aol/mobile/sdk/player/detector/AdStartDetector;->detect(Ljava/lang/String;D)Z

    move-result v5

    const/16 v18, 0x0

    if-eqz v5, :cond_6

    .line 156
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v7, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v8, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v9, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v10, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object v11, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-object v6, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v12, v6, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object v6, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v13, v6, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-boolean v14, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    iget-object v15, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    move-object/from16 v17, v6

    move/from16 v6, v19

    invoke-virtual/range {v5 .. v17}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdEngineStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v5, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/Pixels;->impression:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 170
    iget-object v9, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v9, v8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 172
    :cond_3
    iget-object v5, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/Pixels;->creativeView:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 173
    iget-object v9, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v9, v8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 175
    :cond_4
    iget-object v5, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/model/Pixels;->start:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 176
    iget-object v9, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v9, v8}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 178
    :cond_5
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v7, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_6
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adFinishDetector:Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    iget-object v7, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez v7, :cond_7

    move-wide/from16 v7, v20

    goto :goto_5

    :cond_7
    iget-object v7, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v7, v7, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    :goto_5
    invoke-virtual {v5, v6, v7, v8}, Lcom/aol/mobile/sdk/player/detector/AdFinishDetector;->detect(Ljava/lang/String;D)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 184
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v7, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v8, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v9, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v10, v6, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object v11, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-object v3, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v12, v3, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object v3, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v13, v3, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-boolean v14, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    iget-object v15, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    move/from16 v6, v19

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v5 .. v17}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdFinished(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/Pixels;->complete:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 198
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v5, v4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method private checkAdIssue(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 204
    iget-object v3, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 205
    iget-object v4, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adIssueDetector:Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;

    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v4, v5}, Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;->detect(Lcom/aol/mobile/sdk/player/model/ErrorState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v4, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v6, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v4, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v7, v4, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v4, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v8, v4, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v4, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v9, v4, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v4, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v10, v4, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object v11, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-object v4, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 213
    invoke-virtual {v4}, Lcom/aol/mobile/sdk/player/model/ErrorState;->name()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    sget-object v4, Lcom/aol/mobile/sdk/player/model/ErrorState;->CONNECTION_ERROR:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-ne v3, v4, :cond_0

    const-string v3, "load"

    goto :goto_0

    :cond_0
    const-string v3, "start"

    :goto_0
    move-object v13, v3

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v14, v2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v15, v2, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    move-object/from16 v16, v2

    .line 206
    invoke-virtual/range {v5 .. v16}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdIssue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/Pixels;->error:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 219
    iget-object v5, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v5, v4}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private checkAdPause(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 234
    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 235
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adPauseDetector:Lcom/aol/mobile/sdk/player/detector/AdPauseDetector;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isVideoStreamPlaying:Z

    invoke-virtual {v0, v1, p2}, Lcom/aol/mobile/sdk/player/detector/AdPauseDetector;->detect(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 236
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/Pixels;->pause:[Ljava/lang/String;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 237
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAdQuartile(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 74
    iget-object v3, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    if-eqz v3, :cond_1

    .line 76
    iget-object v4, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adQuartileDetector:Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;

    iget-object v5, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget v5, v5, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    iget-object v6, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    iget-object v6, v6, Lcom/aol/mobile/sdk/player/model/AdState;->uniqueAdId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/aol/mobile/sdk/player/detector/AdQuartileDetector;->detect(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 78
    iget-object v6, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v7, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v7, v7, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v8, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v8, v8, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v8, v8, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object v9, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v9, v9, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v9, v9, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object v10, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v10, v10, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v10, v10, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleCompanyId:Ljava/lang/String;

    iget-object v11, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v11, v11, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v11, v11, Lcom/aol/mobile/sdk/player/model/VrmSource;->name:Ljava/lang/String;

    iget-object v12, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-object v13, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v13, v13, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object v14, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v14, v14, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-boolean v15, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    .line 88
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v20, v3

    iget-object v3, v2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    move-object/from16 v21, v4

    iget-object v4, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    .line 78
    invoke-virtual/range {v6 .. v19}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdQuartile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 104
    :pswitch_0
    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->thirdQuartile:[Ljava/lang/String;

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    .line 105
    iget-object v6, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v6, v5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :pswitch_1
    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->midpoint:[Ljava/lang/String;

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    .line 100
    iget-object v6, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v6, v5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 94
    :pswitch_2
    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/model/Pixels;->firstQuartile:[Ljava/lang/String;

    array-length v4, v2

    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    .line 95
    iget-object v6, v0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v6, v5}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    :goto_4
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkAdRequest(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 8

    .line 260
    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 261
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 262
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 263
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adRequestDetector:Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;

    iget-object v4, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget v4, v4, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->adNum:I

    invoke-virtual {v2, v4}, Lcom/aol/mobile/sdk/player/detector/AdRequestDetector;->detect(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v4, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v5, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget v6, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->adNum:I

    iget-object v7, v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdRequest(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkAdResume(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 225
    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 226
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adResumeDetector:Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-boolean p2, p2, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isVideoStreamPlaying:Z

    invoke-virtual {v0, v1, p2}, Lcom/aol/mobile/sdk/player/detector/AdResumeDetector;->detect(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 227
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/Pixels;->resume:[Ljava/lang/String;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 228
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendPixel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAdViewTime(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 10

    .line 243
    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 244
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adViewTimeDetector:Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-boolean v5, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isFinished:Z

    iget-boolean v6, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isSessionCompleted:Z

    invoke-virtual/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->detect(JLcom/aol/mobile/sdk/player/model/properties/TimeProperties;ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 246
    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 247
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v4, p2, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    iget-object p2, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v5, p2, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    iget-object p2, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v6, p2, Lcom/aol/mobile/sdk/player/model/VrmSource;->ruleId:Ljava/lang/String;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v7, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->adId:Ljava/lang/String;

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adViewTimeDetector:Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;

    .line 253
    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/detector/AdViewTimeDetector;->getDuration()J

    move-result-wide p1

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float v8, p1, p2

    iget-object p1, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v0, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    long-to-float p1, v0

    div-float v9, p1, p2

    .line 247
    invoke-virtual/range {v2 .. v9}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdViewTime(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    :cond_0
    return-void
.end method

.method private checkAdViewability(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 8

    .line 269
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->adViewabilityDetector:Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/detector/AdViewabilityDetector;->detect(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v2, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/VrmSource;->vendor:Ljava/lang/String;

    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v4, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iget-boolean v5, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isAutoplay:Z

    const-string v6, "groupm"

    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v7, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendAdViewability(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdQuartile(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdClick(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdFlow(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdIssue(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdResume(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdPause(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdViewTime(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdRequest(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdViewability(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdEngineRequest(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/detector/reporter/AdDetectorsReporter;->checkAdEngineResponse(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    return-void
.end method
