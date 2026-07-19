.class public Lcom/evie/models/breakingnews/data/BreakingNews;
.super Ljava/lang/Object;
.source "BreakingNews.java"


# instance fields
.field private final articleId:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final image:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final webViewPubFavicon:Ljava/lang/String;

.field private final webViewPubName:Ljava/lang/String;

.field private final webViewTitle:Ljava/lang/String;

.field private final webViewTopics:Ljava/lang/String;

.field private final webViewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->articleId:Ljava/lang/String;

    iput-object p2, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->image:Ljava/lang/String;

    iput-object p5, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewPubName:Ljava/lang/String;

    iput-object p8, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewPubFavicon:Ljava/lang/String;

    iput-object p9, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewTopics:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    instance-of p1, p1, Lcom/evie/models/breakingnews/data/BreakingNews;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lcom/evie/models/breakingnews/data/BreakingNews;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/evie/models/breakingnews/data/BreakingNews;

    invoke-virtual {p1, p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getArticleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getArticleId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getImage()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubFavicon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubFavicon()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTopics()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTopics()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_13

    if-eqz p1, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    :goto_8
    return v2

    :cond_14
    return v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewPubFavicon()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewPubFavicon:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewPubName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewPubName:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewTopics()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewTopics:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/evie/models/breakingnews/data/BreakingNews;->webViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 7
    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getArticleId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getTitle()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getDescription()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getImage()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    const/16 v3, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewUrl()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    const/16 v3, 0x2b

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTitle()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_5

    const/16 v3, 0x2b

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_6

    const/16 v3, 0x2b

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubFavicon()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_7

    const/16 v3, 0x2b

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTopics()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BreakingNews(articleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getArticleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webViewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webViewTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webViewPubName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webViewPubFavicon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewPubFavicon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webViewTopics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/breakingnews/data/BreakingNews;->getWebViewTopics()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
