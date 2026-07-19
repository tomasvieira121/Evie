.class public Lorg/schema/evie/topics/TopicPublisher;
.super Lorg/schema/evie/topics/Topic;
.source "TopicPublisher.java"


# instance fields
.field isArticlePublisher:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_article_publisher"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/schema/evie/topics/Topic;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/schema/evie/topics/TopicPublisher;->isArticlePublisher:Z

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    instance-of p1, p1, Lorg/schema/evie/topics/TopicPublisher;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lorg/schema/evie/topics/TopicPublisher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/schema/evie/topics/TopicPublisher;

    invoke-virtual {v1, p0}, Lorg/schema/evie/topics/TopicPublisher;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lorg/schema/evie/topics/Topic;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/schema/evie/topics/TopicPublisher;->isArticlePublisher()Z

    move-result p1

    invoke-virtual {v1}, Lorg/schema/evie/topics/TopicPublisher;->isArticlePublisher()Z

    move-result v1

    if-eq p1, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 9
    invoke-super {p0}, Lorg/schema/evie/topics/Topic;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/schema/evie/topics/TopicPublisher;->isArticlePublisher()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4f

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isArticlePublisher()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lorg/schema/evie/topics/TopicPublisher;->isArticlePublisher:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopicPublisher(isArticlePublisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/evie/topics/TopicPublisher;->isArticlePublisher()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
