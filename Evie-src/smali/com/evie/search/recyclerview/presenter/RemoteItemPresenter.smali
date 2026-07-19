.class public Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;
.super Ljava/lang/Object;
.source "RemoteItemPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mItem:Lcom/evie/search/model/RemoteSearchItem;

.field mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field shortcutHandler:Lcom/evie/search/SearchShortcutHandler;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/RemoteSearchItem;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1, p0}, Lcom/evie/search/SearchPresenter;->inject(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;)V

    .line 37
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 39
    iput-object p3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 40
    iput-object p2, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 43
    sget p2, Lcom/evie/search/R$dimen;->search_double_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget p3, Lcom/evie/search/R$dimen;->search_item_image_dimension:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mHeight:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 62
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    .line 63
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 64
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindItem(Lcom/evie/search/model/RemoteSearchItem;)V

    return-void
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    invoke-virtual {v0}, Lcom/evie/search/model/RemoteSearchItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 52
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->ID:I

    return v0
.end method

.method public onItemClick()V
    .locals 5

    .line 77
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    invoke-virtual {v0, v1}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/model/RemoteSearchItem;)V

    .line 79
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 81
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_label"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 82
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "entity_id"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 83
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "entity_type"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 84
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getEntityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "query"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 85
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getExplanation()Lcom/evie/search/model/RemoteSearchExplanation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchExplanation;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "suggestion_probability"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 86
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getExplanation()Lcom/evie/search/model/RemoteSearchExplanation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchExplanation;->getProbability()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;D)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_position"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 87
    invoke-virtual {v3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->logSearchItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 89
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/evie/common/services/links/LinkRequest;

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 96
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_label"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 97
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "entity_id"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 98
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "entity_type"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 99
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getEntityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "query"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 100
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getExplanation()Lcom/evie/search/model/RemoteSearchExplanation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchExplanation;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "suggestion_probability"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    .line 101
    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchItem;->getExplanation()Lcom/evie/search/model/RemoteSearchExplanation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/search/model/RemoteSearchExplanation;->getProbability()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;D)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_position"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 102
    invoke-virtual {v3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->logSearchItemDragged(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 104
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mItem:Lcom/evie/search/model/RemoteSearchItem;

    invoke-virtual {v0, p1, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/RemoteSearchItem;)Z

    move-result p1

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 70
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 71
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    :cond_0
    return-void
.end method
