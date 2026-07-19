.class public Lorg/schema/evie/NewsChannel;
.super Lorg/schema/Thing;
.source "NewsChannel.java"


# instance fields
.field private publisher:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation
.end field

.field private stories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/evie/NewsStory;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    instance-of p1, p1, Lorg/schema/evie/NewsChannel;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 27
    :cond_0
    instance-of v1, p1, Lorg/schema/evie/NewsChannel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/schema/evie/NewsChannel;

    invoke-virtual {v1, p0}, Lorg/schema/evie/NewsChannel;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lorg/schema/Thing;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/schema/evie/NewsChannel;->getPublisher()Lorg/schema/Thing;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/NewsChannel;->getPublisher()Lorg/schema/Thing;

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
    invoke-virtual {p0}, Lorg/schema/evie/NewsChannel;->getStories()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/evie/NewsChannel;->getStories()Ljava/util/List;

    move-result-object v1

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getPublisher()Lorg/schema/Thing;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/schema/evie/NewsChannel;->publisher:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/evie/NewsChannel;->publisher:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/Thing;

    :goto_0
    return-object v0
.end method

.method public getStories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/evie/NewsStory;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/schema/evie/NewsChannel;->stories:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 27
    invoke-super {p0}, Lorg/schema/Thing;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/schema/evie/NewsChannel;->getPublisher()Lorg/schema/Thing;

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

    invoke-virtual {p0}, Lorg/schema/evie/NewsChannel;->getStories()Ljava/util/List;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsChannel(super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/schema/Thing;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/NewsChannel;->getPublisher()Lorg/schema/Thing;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/NewsChannel;->getStories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
