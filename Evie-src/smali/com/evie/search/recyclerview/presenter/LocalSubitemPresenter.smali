.class public Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;
.super Ljava/lang/Object;
.source "LocalSubitemPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mItem:Lcom/evie/search/local/LocalSearchSubitem;

.field mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field shortcutHandler:Lcom/evie/search/SearchShortcutHandler;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/local/LocalSearchSubitem;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1, p0}, Lcom/evie/search/SearchPresenter;->inject(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;)V

    .line 38
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 40
    iput-object p3, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    .line 41
    iput-object p2, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 44
    sget p2, Lcom/evie/search/R$dimen;->search_subitem_top_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget p3, Lcom/evie/search/R$dimen;->search_subitem_image_dimension:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    sget p3, Lcom/evie/search/R$dimen;->search_subitem_bottom_spacing:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mHeight:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 59
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    .line 60
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 61
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->bindItem(Lcom/evie/search/local/LocalSearchSubitem;)V

    return-void
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 49
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->ID:I

    return v0
.end method

.method public onItemClick()V
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    invoke-virtual {v0}, Lcom/evie/search/local/LocalSearchSubitem;->getParent()Lcom/evie/search/model/LocalSearchItem;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    invoke-virtual {v1, v2}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/local/LocalSearchSubitem;)V

    .line 78
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v3, "item_type"

    .line 79
    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v2

    const-string v3, "item_label"

    iget-object v4, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    .line 80
    invoke-virtual {v4}, Lcom/evie/search/local/LocalSearchSubitem;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v2

    const-string v3, "match_score"

    .line 81
    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;D)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v2, "item_position"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 82
    invoke-virtual {v3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Lcom/evie/search/SearchPresenter;->logSearchItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 85
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/evie/common/services/links/LinkRequest;

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    invoke-virtual {v3}, Lcom/evie/search/local/LocalSearchSubitem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    invoke-virtual {v0}, Lcom/evie/search/local/LocalSearchSubitem;->getParent()Lcom/evie/search/model/LocalSearchItem;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v3, "item_type"

    .line 94
    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v2

    const-string v3, "item_label"

    iget-object v4, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    .line 95
    invoke-virtual {v4}, Lcom/evie/search/local/LocalSearchSubitem;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v2

    const-string v3, "match_score"

    .line 96
    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;D)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v2, "item_position"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 97
    invoke-virtual {v3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Lcom/evie/search/SearchPresenter;->logSearchItemDragged(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 99
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mItem:Lcom/evie/search/local/LocalSearchSubitem;

    invoke-virtual {v0, p1, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/local/LocalSearchSubitem;)Z

    move-result p1

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 67
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 68
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    :cond_0
    return-void
.end method
