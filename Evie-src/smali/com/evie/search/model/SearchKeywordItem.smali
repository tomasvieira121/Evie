.class public Lcom/evie/search/model/SearchKeywordItem;
.super Ljava/lang/Object;
.source "SearchKeywordItem.java"


# instance fields
.field keyword:Ljava/lang/String;

.field keywordType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/model/SearchKeywordItem;->keyword:Ljava/lang/String;

    iput-object p2, p0, Lcom/evie/search/model/SearchKeywordItem;->keywordType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 21
    instance-of v0, p1, Lcom/evie/search/model/SearchKeywordItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 22
    check-cast p1, Lcom/evie/search/model/SearchKeywordItem;

    .line 23
    iget-object v0, p0, Lcom/evie/search/model/SearchKeywordItem;->keyword:Ljava/lang/String;

    iget-object v2, p1, Lcom/evie/search/model/SearchKeywordItem;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/search/model/SearchKeywordItem;->keywordType:Ljava/lang/String;

    iget-object p1, p1, Lcom/evie/search/model/SearchKeywordItem;->keywordType:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/evie/search/model/SearchKeywordItem;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywordType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/evie/search/model/SearchKeywordItem;->keywordType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/evie/search/model/SearchKeywordItem;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, Lcom/evie/search/model/SearchKeywordItem;->keywordType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
