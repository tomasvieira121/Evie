.class public Lorg/schema/evie/yelp/LocalBusiness$Rating;
.super Ljava/lang/Object;
.source "LocalBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schema/evie/yelp/LocalBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rating"
.end annotation


# instance fields
.field private ratingValue:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratingValue"
    .end annotation
.end field

.field private reviewCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reviewCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    instance-of p1, p1, Lorg/schema/evie/yelp/LocalBusiness$Rating;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lorg/schema/evie/yelp/LocalBusiness$Rating;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schema/evie/yelp/LocalBusiness$Rating;

    invoke-virtual {p1, p0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getRatingValue()F

    move-result v1

    invoke-virtual {p1}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getRatingValue()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getReviewCount()I

    move-result v1

    invoke-virtual {p1}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getReviewCount()I

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getRatingValue()F
    .locals 1

    .line 41
    iget v0, p0, Lorg/schema/evie/yelp/LocalBusiness$Rating;->ratingValue:F

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/schema/evie/yelp/LocalBusiness$Rating;->reviewCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 38
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getRatingValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getReviewCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalBusiness.Rating(ratingValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getRatingValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", reviewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getReviewCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
