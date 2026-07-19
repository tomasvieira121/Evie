.class public final Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;
.super Ljava/lang/Object;
.source "TrackingPixelsGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferEndPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$BufferStartPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$RayLoadPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ErrorPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$StartPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$IntentPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$HeartbeatPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$Video3SecPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdStartPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$DisplaysPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ImpressionsPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineResponsePixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineRequestPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewTimePixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdIssuePixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdServerRequestPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdRequestPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$SlotOppPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoQuartilesPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoDecilesPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoPlayPixel;,
        Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$ContextStartedPixel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5959
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "UTF-8"

    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5953
    invoke-static {p0, p1, p2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    .line 5966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5968
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 5972
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5974
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5976
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
