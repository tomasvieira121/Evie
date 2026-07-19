.class public final Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
.super Ljava/lang/Object;
.source "TrackingPixelsGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoImpressionPixel"
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

    .line 3632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3643
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3655
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3691
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3775
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "cb"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 3855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trk/video-impression.gif?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3799
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "h"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3847
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "m.fwsitesection"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public mpid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3823
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "mpid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3667
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3703
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pt"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3715
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pv"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3727
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "r"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3835
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "seq"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3739
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "sid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public ts(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3763
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "ts"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3811
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3679
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3751
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vpt"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;
    .locals 2

    .line 3787
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoImpressionPixel;->params:Ljava/util/ArrayList;

    const-string v1, "w"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
