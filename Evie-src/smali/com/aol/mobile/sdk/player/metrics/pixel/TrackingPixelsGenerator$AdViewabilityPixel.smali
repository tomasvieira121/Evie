.class public final Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
.super Ljava/lang/Object;
.source "TrackingPixelsGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdViewabilityPixel"
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

    .line 3300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public ap(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3359
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "ap"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3311
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3371
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "at"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3323
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3407
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3479
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "cb"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 3499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trk/mrc-ad-view.gif?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3491
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "m.fwsitesection"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3335
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3419
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pt"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3431
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pv"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3455
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "r"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3443
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "sid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3347
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "v"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3395
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vstd(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3383
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vstd"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;
    .locals 2

    .line 3467
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdViewabilityPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vvuid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
