.class public Lcom/evie/search/model/WebSearchItem;
.super Ljava/lang/Object;
.source "WebSearchItem.java"


# instance fields
.field private first:Z

.field private label:Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/evie/search/model/WebSearchItem;->link:Ljava/lang/String;

    .line 21
    iput-boolean p1, p0, Lcom/evie/search/model/WebSearchItem;->first:Z

    .line 22
    iput-object p2, p0, Lcom/evie/search/model/WebSearchItem;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/evie/search/model/WebSearchItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/evie/search/model/WebSearchItem;->link:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetector;

    iget-object v1, p0, Lcom/evie/search/model/WebSearchItem;->label:Ljava/lang/String;

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetectorOptions;->Default:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-direct {v0, v1, v2}, Lcom/linkedin/urls/detection/UrlDetector;-><init>(Ljava/lang/String;Lcom/linkedin/urls/detection/UrlDetectorOptions;)V

    .line 28
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlDetector;->detect()Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/urls/Url;

    invoke-virtual {v2}, Lcom/linkedin/urls/Url;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/search/model/WebSearchItem;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkedin/urls/Url;

    invoke-virtual {v0}, Lcom/linkedin/urls/Url;->getFullUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/WebSearchItem;->link:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "websearch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/search/model/WebSearchItem;->label:Ljava/lang/String;

    const-string v2, "#"

    const-string v3, "%23"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/WebSearchItem;->link:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "websearch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/search/model/WebSearchItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/WebSearchItem;->link:Ljava/lang/String;

    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/evie/search/model/WebSearchItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public isFirst()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/evie/search/model/WebSearchItem;->first:Z

    return v0
.end method

.method public isSearchQuery()Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/evie/search/model/WebSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "websearch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
