.class public Lorg/schema/evie/yelp/YelpAd;
.super Lorg/schema/Thing;
.source "YelpAd.java"


# instance fields
.field private action:Lorg/schema/evie/yelp/YelpAction;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:action"
    .end annotation
.end field

.field private androidPackageId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:androidPackageId"
    .end annotation
.end field

.field private appRequired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:appRequired"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private headline:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headline"
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/evie/yelp/LocalBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/schema/Thing;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p1, p1, Lorg/schema/evie/yelp/YelpAd;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lorg/schema/evie/yelp/YelpAd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v1, p0}, Lorg/schema/evie/yelp/YelpAd;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lorg/schema/Thing;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getHeadline()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getHeadline()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

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
    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

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
    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getAndroidPackageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getAndroidPackageId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->isAppRequired()Z

    move-result p1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->isAppRequired()Z

    move-result v1

    if-eq p1, v1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public getAction()Lorg/schema/evie/yelp/YelpAction;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/schema/evie/yelp/YelpAd;->action:Lorg/schema/evie/yelp/YelpAction;

    return-object v0
.end method

.method public getAndroidPackageId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/schema/evie/yelp/YelpAd;->androidPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/schema/evie/yelp/YelpAd;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/schema/evie/yelp/YelpAd;->headline:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/evie/yelp/LocalBusiness;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/schema/evie/yelp/YelpAd;->items:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 17
    invoke-super {p0}, Lorg/schema/Thing;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getHeadline()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getDescription()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

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

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

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

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->isAppRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x4f

    goto :goto_5

    :cond_5
    const/16 v1, 0x61

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public isAppRequired()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/schema/evie/yelp/YelpAd;->appRequired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YelpAd(super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/schema/Thing;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidPackageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/yelp/YelpAd;->isAppRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
