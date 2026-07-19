.class public Lcom/evie/jigsaw/services/images/models/EvieImage;
.super Ljava/lang/Object;
.source "EvieImage.java"

# interfaces
.implements Lcom/evie/jigsaw/services/images/models/Image;


# instance fields
.field private app:Ljava/lang/String;

.field private aspectRatio:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aspect_ratio"
    .end annotation
.end field

.field private attribution:Lcom/evie/jigsaw/services/attribution/models/Attribution;

.field private baseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "base_url"
    .end annotation
.end field

.field private rounding:Lcom/evie/jigsaw/services/images/models/Rounding;

.field private versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->versions:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->aspectRatio:F

    .line 35
    sget-object v0, Lcom/evie/jigsaw/services/attribution/models/Attribution;->NO_ATTRIBUTION:Lcom/evie/jigsaw/services/attribution/models/Attribution;

    iput-object v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->attribution:Lcom/evie/jigsaw/services/attribution/models/Attribution;

    return-void
.end method


# virtual methods
.method public getApp()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->aspectRatio:F

    return v0
.end method

.method public getAttribution()Lcom/evie/jigsaw/services/attribution/models/Attribution;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->attribution:Lcom/evie/jigsaw/services/attribution/models/Attribution;

    return-object v0
.end method

.method public getRounding()Lcom/evie/jigsaw/services/images/models/Rounding;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->rounding:Lcom/evie/jigsaw/services/images/models/Rounding;

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->versions:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->versions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->versions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "w"

    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, p1, :cond_1

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public setAspectRatio(F)Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 0

    .line 19
    iput p1, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->aspectRatio:F

    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setRounding(Lcom/evie/jigsaw/services/images/models/Rounding;)Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/evie/jigsaw/services/images/models/EvieImage;->rounding:Lcom/evie/jigsaw/services/images/models/Rounding;

    return-object p0
.end method
