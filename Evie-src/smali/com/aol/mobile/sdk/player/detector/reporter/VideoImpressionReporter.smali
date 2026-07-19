.class public final Lcom/aol/mobile/sdk/player/detector/reporter/VideoImpressionReporter;
.super Ljava/lang/Object;
.source "VideoImpressionReporter.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# instance fields
.field private final reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

.field private final videoImpressionDetector:Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/VideoImpressionReporter;->videoImpressionDetector:Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;

    .line 24
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/reporter/VideoImpressionReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 5

    .line 29
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/VideoImpressionReporter;->videoImpressionDetector:Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v2, v2, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object v3, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v3, v3, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-object v4, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/VideoModel;->brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aol/mobile/sdk/player/detector/VideoImpressionDetector;->detect(Ljava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/reporter/VideoImpressionReporter;->reporter:Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v2, v2, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsReporter;->sendVideoImpression(III)V

    :cond_2
    return-void
.end method
