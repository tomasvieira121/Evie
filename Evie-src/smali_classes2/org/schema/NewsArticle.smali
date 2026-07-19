.class public Lorg/schema/NewsArticle;
.super Lorg/schema/Thing;
.source "NewsArticle.java"


# instance fields
.field private action:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:action"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation
.end field

.field private aggregator:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:aggregator"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ampUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:ampUrl"
    .end annotation
.end field

.field private androidUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:androidUrl"
    .end annotation
.end field

.field private body:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contentType"
    .end annotation
.end field

.field private datePublished:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datePublished"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayAge:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:displayAge"
    .end annotation
.end field

.field private displayTopicDescription:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headline:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private image:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/ImageObject;",
            ">;"
        }
    .end annotation
.end field

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

.field private showIntermediate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:show_intermediate"
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayTags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private topics:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ev:topic"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private video:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lorg/schema/serialization/AlwaysListTypeAdapterFactory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/VideoObject;",
            ">;"
        }
    .end annotation
.end field

.field private views:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "views"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lorg/schema/Thing;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/schema/NewsArticle;->contentType:Ljava/lang/String;

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/schema/NewsArticle;->url:Ljava/util/List;

    .line 48
    iput-object v0, p0, Lorg/schema/NewsArticle;->ampUrl:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/schema/NewsArticle;->androidUrl:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->body:Ljava/util/List;

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->headline:Ljava/util/List;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->description:Ljava/util/List;

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->datePublished:Ljava/util/List;

    const/4 v0, 0x1

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->displayAge:Ljava/lang/Boolean;

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->image:Ljava/util/List;

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->publisher:Ljava/util/List;

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->video:Ljava/util/List;

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->aggregator:Ljava/util/List;

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->action:Ljava/util/List;

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->topics:Ljava/util/List;

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->tags:Ljava/util/List;

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schema/NewsArticle;->displayTopicDescription:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    instance-of p1, p1, Lorg/schema/NewsArticle;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 24
    :cond_0
    instance-of v1, p1, Lorg/schema/NewsArticle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/schema/NewsArticle;

    invoke-virtual {v1, p0}, Lorg/schema/NewsArticle;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lorg/schema/Thing;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAmpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getAmpUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAndroidUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getAndroidUrl()Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getBody()Ljava/util/List;

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
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    :goto_5
    return v2

    :cond_f
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_10
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    :goto_6
    return v2

    :cond_11
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDatePublished()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getDatePublished()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_12

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_12
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    :goto_7
    return v2

    :cond_13
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDisplayAge()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getDisplayAge()Ljava/lang/Boolean;

    move-result-object v3

    if-nez p1, :cond_14

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_14
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    :goto_8
    return v2

    :cond_15
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v3

    if-nez p1, :cond_16

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_16
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    :goto_9
    return v2

    :cond_17
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getPublisher()Lorg/schema/Thing;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getPublisher()Lorg/schema/Thing;

    move-result-object v3

    if-nez p1, :cond_18

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_18
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    :goto_a
    return v2

    :cond_19
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v3

    if-nez p1, :cond_1a

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1a
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    :goto_b
    return v2

    :cond_1b
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAggregator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getAggregator()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_1c

    if-eqz v3, :cond_1d

    goto :goto_c

    :cond_1c
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    :goto_c
    return v2

    :cond_1d
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAction()Lorg/schema/Thing;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getAction()Lorg/schema/Thing;

    move-result-object v3

    if-nez p1, :cond_1e

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1e
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    :goto_d
    return v2

    :cond_1f
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getTopics()Ljava/util/List;

    move-result-object v3

    if-nez p1, :cond_20

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_20
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    :goto_e
    return v2

    :cond_21
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getTags()Ljava/util/List;

    move-result-object v3

    if-nez p1, :cond_22

    if-eqz v3, :cond_23

    goto :goto_f

    :cond_22
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    :goto_f
    return v2

    :cond_23
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getViews()I

    move-result p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getViews()I

    move-result v3

    if-eq p1, v3, :cond_24

    return v2

    :cond_24
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->isShowIntermediate()Z

    move-result p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->isShowIntermediate()Z

    move-result v3

    if-eq p1, v3, :cond_25

    return v2

    :cond_25
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDisplayTopicDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/schema/NewsArticle;->getDisplayTopicDescription()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_26

    if-eqz v1, :cond_27

    goto :goto_10

    :cond_26
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    :goto_10
    return v2

    :cond_27
    return v0
.end method

.method public getAction()Lorg/schema/Thing;
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/schema/NewsArticle;->action:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->action:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/Thing;

    :goto_0
    return-object v0
.end method

.method public getAggregator()Ljava/lang/String;
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/schema/NewsArticle;->aggregator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->aggregator:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getAmpUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schema/NewsArticle;->ampUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/schema/NewsArticle;->androidUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/schema/NewsArticle;->body:Ljava/util/List;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/schema/NewsArticle;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDatePublished()Ljava/lang/String;
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/schema/NewsArticle;->datePublished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->datePublished:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/schema/NewsArticle;->description:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->description:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDisplayAge()Ljava/lang/Boolean;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/schema/NewsArticle;->displayAge:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDisplayTopicDescription()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/schema/NewsArticle;->displayTopicDescription:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->displayTopicDescription:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/schema/NewsArticle;->headline:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->headline:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getImage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/ImageObject;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/schema/NewsArticle;->image:Ljava/util/List;

    return-object v0
.end method

.method public getPublisher()Lorg/schema/Thing;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/schema/NewsArticle;->publisher:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->publisher:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schema/Thing;

    :goto_0
    return-object v0
.end method

.method public getPublisherOrganization()Lorg/schema/Organization;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getPublisher()Lorg/schema/Thing;

    move-result-object v0

    .line 181
    instance-of v1, v0, Lorg/schema/Organization;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lorg/schema/Organization;

    return-object v0

    .line 183
    :cond_0
    instance-of v1, v0, Lorg/schema/Person;

    if-eqz v1, :cond_1

    .line 184
    check-cast v0, Lorg/schema/Person;

    invoke-virtual {v0}, Lorg/schema/Person;->getAffiliation()Lorg/schema/Organization;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/Tag;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/schema/NewsArticle;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->tags:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/schema/NewsArticle;->topics:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/schema/NewsArticle;->url:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schema/NewsArticle;->url:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getVideo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/VideoObject;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/schema/NewsArticle;->video:Ljava/util/List;

    return-object v0
.end method

.method public getViews()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/schema/NewsArticle;->views:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 24
    invoke-super {p0}, Lorg/schema/Thing;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAmpUrl()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAndroidUrl()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getBody()Ljava/util/List;

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

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

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

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_6

    const/16 v1, 0x2b

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDatePublished()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_7

    const/16 v1, 0x2b

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDisplayAge()Ljava/lang/Boolean;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_8

    const/16 v1, 0x2b

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_9

    const/16 v1, 0x2b

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getPublisher()Lorg/schema/Thing;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_a

    const/16 v1, 0x2b

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_b

    const/16 v1, 0x2b

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAggregator()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_c

    const/16 v1, 0x2b

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAction()Lorg/schema/Thing;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_d

    const/16 v1, 0x2b

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getTopics()Ljava/util/List;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_e

    const/16 v1, 0x2b

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getTags()Ljava/util/List;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_f

    const/16 v1, 0x2b

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getViews()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->isShowIntermediate()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x4f

    goto :goto_10

    :cond_10
    const/16 v1, 0x61

    :goto_10
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDisplayTopicDescription()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    return v0
.end method

.method public isShowIntermediate()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/schema/NewsArticle;->showIntermediate:Z

    return v0
.end method

.method public shouldDisplayAge()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/schema/NewsArticle;->displayAge:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsArticle(super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/schema/Thing;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ampUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAmpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAndroidUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getBody()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", datePublished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDatePublished()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDisplayAge()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getImage()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getPublisher()Lorg/schema/Thing;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aggregator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAggregator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getAction()Lorg/schema/Thing;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", views="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getViews()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showIntermediate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->isShowIntermediate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayTopicDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schema/NewsArticle;->getDisplayTopicDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
