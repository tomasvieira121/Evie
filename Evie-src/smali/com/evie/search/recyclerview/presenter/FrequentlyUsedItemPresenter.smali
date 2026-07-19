.class public Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;
.super Ljava/lang/Object;
.source "FrequentlyUsedItemPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/model/FrequentlyUsedItem;",
            ">;"
        }
    .end annotation
.end field

.field mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field shortcutHandler:Lcom/evie/search/SearchShortcutHandler;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/search/SearchPresenter;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/evie/search/model/FrequentlyUsedItem;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1, p0}, Lcom/evie/search/SearchPresenter;->inject(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;)V

    .line 41
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 43
    iput-object p3, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mItems:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/evie/search/R$dimen;->frequently_used_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mHeight:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 3

    .line 61
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    .line 62
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 64
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/search/model/FrequentlyUsedItem;

    .line 67
    invoke-virtual {v1}, Lcom/evie/search/model/FrequentlyUsedItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/evie/search/local/LocalSearchManager;->getAppImageUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evie/search/model/FrequentlyUsedItem;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->bindItems(Ljava/util/List;)V

    return-void
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 51
    sget v0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->ID:I

    return v0
.end method

.method public onItemClick()V
    .locals 0

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    if-ltz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/model/FrequentlyUsedItem;

    invoke-virtual {v0}, Lcom/evie/search/model/FrequentlyUsedItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mContext:Landroid/content/Context;

    const-string v2, "frequently-used"

    invoke-static {v1, v0, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    const-string v3, "item_type"

    const-string v4, "FREQUENTLY_USED_APP"

    .line 98
    invoke-virtual {v1, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v3, "item_position"

    .line 99
    invoke-virtual {v1, v3, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    .line 97
    invoke-virtual {v2, p1}, Lcom/evie/search/SearchPresenter;->logFrequentlyUsedItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 101
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mContext:Landroid/content/Context;

    const-string v2, "frequently-used"

    invoke-virtual {p1, v1, v0, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 4

    if-ltz p2, :cond_1

    .line 105
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_1

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    const-string v3, "FREQUENTLY_USED_APP"

    .line 111
    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_position"

    .line 112
    invoke-virtual {v1, v2, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->logSearchItemDragged(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 114
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/search/model/FrequentlyUsedItem;

    invoke-virtual {v0, p1, p2}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/FrequentlyUsedItem;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 76
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 77
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    :cond_0
    return-void
.end method
