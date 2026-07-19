.class public Lcom/evie/search/recyclerview/presenter/WebItemPresenter;
.super Ljava/lang/Object;
.source "WebItemPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

.field private mContext:Landroid/content/Context;

.field private mExtraPadding:I

.field private mHeight:I

.field private final mItem:Lcom/evie/search/model/WebSearchItem;

.field mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private mNormalPadding:I

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field shortcutHandler:Lcom/evie/search/SearchShortcutHandler;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/WebSearchItem;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1, p0}, Lcom/evie/search/SearchPresenter;->inject(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)V

    .line 42
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 44
    iput-object p3, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    .line 45
    iput-object p2, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 48
    sget p2, Lcom/evie/search/R$dimen;->search_autocomplete_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mHeight:I

    .line 49
    sget p2, Lcom/evie/search/R$dimen;->search_autocomplete_top_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mExtraPadding:I

    return-void
.end method

.method public static synthetic lambda$onItemClick$0(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;Landroid/content/Intent;)Z
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v1, "item_type"

    const-string v2, "WEB_AUTOCOMPLETE"

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v1, "item_label"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    .line 85
    invoke-virtual {v2}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v1, "item_position"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 86
    invoke-virtual {v2}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/evie/search/SearchPresenter;->logSearchItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 64
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    .line 65
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 66
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->bindItem(Lcom/evie/search/model/WebSearchItem;)V

    return-void
.end method

.method public changeQuery(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/search/SearchPresenter;->changeSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method public getItemViewHeight()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mHeight:I

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {v1}, Lcom/evie/search/model/WebSearchItem;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mExtraPadding:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mNormalPadding:I

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .line 54
    sget v0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->ID:I

    return v0
.end method

.method public onItemClick()V
    .locals 5

    .line 79
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {v0, v1}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/model/WebSearchItem;)V

    .line 81
    new-instance v0, Lcom/evie/search/recyclerview/presenter/-$$Lambda$WebItemPresenter$LTGeks-mORI25z0cV5DSWQmTKYs;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/presenter/-$$Lambda$WebItemPresenter$LTGeks-mORI25z0cV5DSWQmTKYs;-><init>(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)V

    .line 91
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {v1}, Lcom/evie/search/model/WebSearchItem;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {v2}, Lcom/evie/search/model/WebSearchItem;->isSearchQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/evie/common/SearchSettings;->getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/common/SearchSettings;->getOpenWebResultsInBrowser()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "|browser"

    goto :goto_0

    :cond_0
    const-string v1, "|google"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/evie/common/services/links/LinkRequest;

    invoke-direct {v4, v1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/evie/common/services/links/LinkRequest;->callback(Lcom/evie/common/services/links/LinkCallback;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    const-string v3, "WEB_AUTOCOMPLETE"

    .line 102
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_label"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    .line 103
    invoke-virtual {v3}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_position"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 104
    invoke-virtual {v3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->logSearchItemDragged(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 106
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mItem:Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {v0, p1, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/WebSearchItem;)Z

    move-result p1

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 72
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 73
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    :cond_0
    return-void
.end method
