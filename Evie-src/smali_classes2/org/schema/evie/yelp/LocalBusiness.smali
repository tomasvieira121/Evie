.class public Lorg/schema/evie/yelp/LocalBusiness;
.super Lorg/schema/Thing;
.source "LocalBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schema/evie/yelp/LocalBusiness$Geo;,
        Lorg/schema/evie/yelp/LocalBusiness$Rating;
    }
.end annotation


# instance fields
.field private androidUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:androidUrl"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private geo:Lorg/schema/evie/yelp/LocalBusiness$Geo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geo"
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private priceRange:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priceRange"
    .end annotation
.end field

.field private rating:Lorg/schema/evie/yelp/LocalBusiness$Rating;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aggregateRating"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/schema/Thing;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    instance-of p1, p1, Lorg/schema/evie/yelp/LocalBusiness;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lorg/schema/evie/yelp/LocalBusiness;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v1, p0}, Lorg/schema/evie/yelp/LocalBusiness;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lorg/schema/Thing;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getImage()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getGeo()Lorg/schema/evie/yelp/LocalBusiness$Geo;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getGeo()Lorg/schema/evie/yelp/LocalBusiness$Geo;

    move-result-object v3

    if-nez p1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;

    move-result-object v3

    if-nez p1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_4
    return v2

    :cond_d
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getPriceRange()I

    move-result p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getPriceRange()I

    move-result v3

    if-eq p1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    :goto_5
    return v2

    :cond_10
    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getAndroidUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getAndroidUrl()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_11

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    :goto_6
    return v2

    :cond_12
    return v0
.end method

.method public getAndroidUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->androidUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Lorg/schema/evie/yelp/LocalBusiness$Geo;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->geo:Lorg/schema/evie/yelp/LocalBusiness$Geo;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceRange()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->priceRange:I

    return v0
.end method

.method public getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->rating:Lorg/schema/evie/yelp/LocalBusiness$Rating;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/schema/evie/yelp/LocalBusiness;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 11
    invoke-super {p0}, Lorg/schema/Thing;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getName()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    const/16 v2, 0x2b

    if-nez v1, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getDescription()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    const/16 v1, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getImage()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_2

    const/16 v1, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getGeo()Lorg/schema/evie/yelp/LocalBusiness$Geo;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_3

    const/16 v1, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_4

    const/16 v1, 0x2b

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getPriceRange()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getUrl()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_5

    const/16 v1, 0x2b

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getAndroidUrl()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalBusiness(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getGeo()Lorg/schema/evie/yelp/LocalBusiness$Geo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getPriceRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/LocalBusiness;->getAndroidUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
