.class public Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;
.super Ljava/lang/Object;
.source "LocalItemPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mItem:Lcom/evie/search/model/LocalSearchItem;

.field mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field shortcutHandler:Lcom/evie/search/SearchShortcutHandler;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/LocalSearchItem;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1, p0}, Lcom/evie/search/SearchPresenter;->inject(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)V

    .line 45
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 47
    iput-object p3, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 48
    iput-object p2, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/evie/search/R$dimen;->search_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)Lcom/evie/search/model/LocalSearchItem;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    return-object p0
.end method

.method public static synthetic lambda$bind$0(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0, v1}, Lcom/evie/search/local/LocalSearchManager;->getImageUrl(Lcom/evie/search/model/LocalSearchItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onItemClick$1(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;Landroid/content/Intent;)Z
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCAL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-static {v0, p1, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v1, v2, p1, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    const-string v1, "item_type"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 131
    invoke-virtual {v2}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v1, "item_label"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 132
    invoke-virtual {v2}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v1, "match_score"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 133
    invoke-virtual {v2}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;D)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v1, "item_position"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 134
    invoke-virtual {v2}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Lcom/evie/search/SearchPresenter;->logSearchItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 80
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    .line 81
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 82
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindItem(Lcom/evie/search/model/LocalSearchItem;)V

    .line 84
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Lcom/evie/search/recyclerview/presenter/-$$Lambda$LocalItemPresenter$zwwGc_K4VeR2d71LBi-Xnqp9yrQ;

    invoke-direct {p1, p0}, Lcom/evie/search/recyclerview/presenter/-$$Lambda$LocalItemPresenter$zwwGc_K4VeR2d71LBi-Xnqp9yrQ;-><init>(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)V

    invoke-static {p1}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    .line 86
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 87
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter$1;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter$1;-><init>(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)V

    .line 88
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 161
    instance-of v0, p1, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    iget-object p1, p1, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 162
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCAL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 70
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->ID:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onItemClick()V
    .locals 5

    .line 119
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/model/LocalSearchItem;Z)V

    .line 121
    new-instance v0, Lcom/evie/search/recyclerview/presenter/-$$Lambda$LocalItemPresenter$Q3fz_64kAQBkO2eI8mtS8T7k1dM;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/presenter/-$$Lambda$LocalItemPresenter$Q3fz_64kAQBkO2eI8mtS8T7k1dM;-><init>(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)V

    .line 139
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/evie/common/services/links/LinkRequest;

    iget-object v4, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v4}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/evie/common/services/links/LinkRequest;->callback(Lcom/evie/common/services/links/LinkCallback;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 146
    invoke-virtual {v3}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_label"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 147
    invoke-virtual {v3}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "match_score"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    .line 148
    invoke-virtual {v3}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;D)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_position"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 149
    invoke-virtual {v3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->logSearchItemDragged(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 151
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mItem:Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0, p1, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/LocalSearchItem;)Z

    move-result p1

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 112
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 113
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    :cond_0
    return-void
.end method
