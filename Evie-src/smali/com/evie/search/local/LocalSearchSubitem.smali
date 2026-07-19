.class public Lcom/evie/search/local/LocalSearchSubitem;
.super Ljava/lang/Object;
.source "LocalSearchSubitem.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private parent:Lcom/evie/search/model/LocalSearchItem;

.field private recentsLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/evie/search/model/LocalSearchItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/local/LocalSearchSubitem;->parent:Lcom/evie/search/model/LocalSearchItem;

    iput-object p2, p0, Lcom/evie/search/local/LocalSearchSubitem;->link:Ljava/lang/String;

    iput-object p3, p0, Lcom/evie/search/local/LocalSearchSubitem;->imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/evie/search/local/LocalSearchSubitem;->label:Ljava/lang/String;

    iput-object p5, p0, Lcom/evie/search/local/LocalSearchSubitem;->recentsLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/evie/search/model/RecentItem;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchSubitem;->link:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/LocalSearchSubitem;->imageUrl:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/local/LocalSearchSubitem;->recentsLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchSubitem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchSubitem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchSubitem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/evie/search/model/LocalSearchItem;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchSubitem;->parent:Lcom/evie/search/model/LocalSearchItem;

    return-object v0
.end method

.method public getRecentsLabel()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/search/local/LocalSearchSubitem;->recentsLabel:Ljava/lang/String;

    return-object v0
.end method
