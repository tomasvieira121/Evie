.class public final Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
.super Ljava/lang/Object;
.source "TrackingPixelsGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTimePixel"
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

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public app_id(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "bcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "bid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public cb(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "cb"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trk/video-time.gif?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mfwsitesection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "m.fwsitesection"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public mpid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1135
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "mpid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pct(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "pct"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "pid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "pt"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public pv(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1051
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "pv"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "r"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public seq(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "seq"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public sid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "sid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "t"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public ts(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "ts"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vcid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "vcid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "vid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vpt(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "vpt"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public vvuid(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator$VideoTimePixel;->params:Ljava/util/ArrayList;

    const-string v1, "vvuid"

    invoke-static {v0, v1, p1}, Lcom/aol/mobile/sdk/player/metrics/pixel/TrackingPixelsGenerator;->addIfNotNull(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
