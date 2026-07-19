.class public Lcom/evie/search/model/LocalSearchItem;
.super Ljava/lang/Object;
.source "LocalSearchItem.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/model/SearchKeywordItem;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private rank:F

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/evie/search/model/RecentItem;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->imageUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->link:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->label:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/model/LocalSearchItem;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/evie/search/model/SearchKeywordItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/evie/search/model/LocalSearchItem;->link:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/evie/search/model/LocalSearchItem;->label:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/evie/search/model/LocalSearchItem;->note:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/evie/search/model/LocalSearchItem;->keywords:Ljava/util/List;

    .line 42
    iput-object p5, p0, Lcom/evie/search/model/LocalSearchItem;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/evie/search/model/SearchKeywordItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/evie/search/model/LocalSearchItem;->link:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/evie/search/model/LocalSearchItem;->label:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/evie/search/model/LocalSearchItem;->keywords:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/evie/search/model/LocalSearchItem;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    instance-of v0, p1, Lcom/evie/search/model/LocalSearchItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->link:Ljava/lang/String;

    check-cast p1, Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 4

    const-string v0, "LOCAL_APP"

    .line 76
    iget-object v1, p0, Lcom/evie/search/model/LocalSearchItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->link:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app"

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 84
    new-instance v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/search/model/SearchKeywordItem;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/evie/search/model/LocalSearchItem;->rank:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/evie/search/model/LocalSearchItem;->link:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/evie/search/model/LocalSearchItem;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setRank(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/evie/search/model/LocalSearchItem;->rank:F

    return-void
.end method
