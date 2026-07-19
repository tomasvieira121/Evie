.class public final Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
.super Ljava/lang/Object;
.source "TrackingPixelsGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoStatsPixel"
.end annotation


# instance fields
.field private final params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public ac(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1259
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "ac"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1223
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "cb"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trk/video-stats.gif?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "m.fwsitesection"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public nv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "nv"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1211
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pt"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pv"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1307
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "r"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "sid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "t"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;
    .locals 2

    .line 1319
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoStatsPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vvuid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
