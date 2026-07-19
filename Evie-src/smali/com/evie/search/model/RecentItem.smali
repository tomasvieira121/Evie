.class public Lcom/evie/search/model/RecentItem;
.super Ljava/lang/Object;
.source "RecentItem.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/model/RecentItem;->link:Ljava/lang/String;

    iput-object p2, p0, Lcom/evie/search/model/RecentItem;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/evie/search/model/RecentItem;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/evie/search/model/RecentItem;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/search/model/RecentItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/evie/search/model/RecentItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/evie/search/model/RecentItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalComponentName()Landroid/content/ComponentName;
    .locals 4

    const-string v0, "LOCAL_APP"

    .line 27
    iget-object v1, p0, Lcom/evie/search/model/RecentItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/search/model/RecentItem;->link:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app"

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 36
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

.method public getType()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/search/model/RecentItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/evie/search/model/RecentItem;->imageUrl:Ljava/lang/String;

    return-void
.end method
