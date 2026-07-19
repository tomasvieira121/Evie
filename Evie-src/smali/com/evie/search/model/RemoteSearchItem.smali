.class public Lcom/evie/search/model/RemoteSearchItem;
.super Ljava/lang/Object;
.source "RemoteSearchItem.java"


# instance fields
.field private entityId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entity_id"
    .end annotation
.end field

.field private entityType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entity_type"
    .end annotation
.end field

.field private explanation:Lcom/evie/search/model/RemoteSearchExplanation;

.field private image:Lcom/evie/search/remote/RemoteImage;

.field private itemType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_type"
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private note:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label_note"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package"
    .end annotation
.end field

.field private transient parent:Lcom/evie/search/model/RemoteSearchItem;

.field private ratingImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating_image"
    .end annotation
.end field

.field private ratingText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating_text"
    .end annotation
.end field

.field private subitems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/model/RemoteSearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/search/model/RecentItem;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->subitems:Ljava/util/List;

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->links:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/evie/search/remote/RemoteImage;

    invoke-direct {v0}, Lcom/evie/search/remote/RemoteImage;-><init>()V

    iput-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->image:Lcom/evie/search/remote/RemoteImage;

    .line 53
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->image:Lcom/evie/search/remote/RemoteImage;

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/search/remote/RemoteImage;->setBaseUrl(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->label:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\|\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/model/RemoteSearchItem;->links:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->entityType:Ljava/lang/String;

    return-object v0
.end method

.method public getExplanation()Lcom/evie/search/model/RemoteSearchExplanation;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->explanation:Lcom/evie/search/model/RemoteSearchExplanation;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->image:Lcom/evie/search/remote/RemoteImage;

    invoke-virtual {v0, p1}, Lcom/evie/search/remote/RemoteImage;->getImageUrl(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->links:Ljava/util/List;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/evie/search/model/RemoteSearchItem;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->parent:Lcom/evie/search/model/RemoteSearchItem;

    return-object v0
.end method

.method public getRatingImageUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->ratingImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingText()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->ratingText:Ljava/lang/String;

    return-object v0
.end method

.method public getSubitems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/search/model/RemoteSearchItem;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/evie/search/model/RemoteSearchItem;->subitems:Ljava/util/List;

    return-object v0
.end method

.method public setParent(Lcom/evie/search/model/RemoteSearchItem;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/evie/search/model/RemoteSearchItem;->parent:Lcom/evie/search/model/RemoteSearchItem;

    return-void
.end method
