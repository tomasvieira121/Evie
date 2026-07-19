.class public final Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
.super Ljava/lang/Object;
.source "TrackingPixelsGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdEngineFlowPixel"
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

    .line 2996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public aen(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3235
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "aen"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public aid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3271
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "aid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public ap(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3115
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "ap"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3007
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public at(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3055
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "at"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3019
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3067
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "bid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3259
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "cb"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 3291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trk/ad-engine-flow.gif?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3103
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "h"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3283
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "m.fwsitesection"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3031
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public ps(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3163
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "ps"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3139
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pt"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3151
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "pv"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3223
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "r"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public rcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3211
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "rcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public rid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3199
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "rid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3175
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "sid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public stg(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3127
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "stg"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public txid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3187
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "txid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3043
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "v"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3079
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3247
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "vvuid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;
    .locals 2

    .line 3091
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$AdEngineFlowPixel;->params:Ljava/util/ArrayList;

    const-string v1, "w"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
