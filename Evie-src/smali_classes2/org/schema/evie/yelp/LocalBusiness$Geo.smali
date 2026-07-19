.class public Lorg/schema/evie/yelp/LocalBusiness$Geo;
.super Ljava/lang/Object;
.source "LocalBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schema/evie/yelp/LocalBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Geo"
.end annotation


# instance fields
.field private latitude:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private longitude:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    instance-of p1, p1, Lorg/schema/evie/yelp/LocalBusiness$Geo;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lorg/schema/evie/yelp/LocalBusiness$Geo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schema/evie/yelp/LocalBusiness$Geo;

    invoke-virtual {p1, p0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLatitude()F

    move-result v1

    invoke-virtual {p1}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLatitude()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLongitude()F

    move-result v1

    invoke-virtual {p1}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLongitude()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getLatitude()F
    .locals 1

    .line 50
    iget v0, p0, Lorg/schema/evie/yelp/LocalBusiness$Geo;->latitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    .line 53
    iget v0, p0, Lorg/schema/evie/yelp/LocalBusiness$Geo;->longitude:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 47
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLatitude()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLongitude()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalBusiness.Geo(latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLatitude()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLongitude()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
