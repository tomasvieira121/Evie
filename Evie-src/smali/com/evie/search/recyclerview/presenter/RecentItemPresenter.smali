.class public Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;
.super Ljava/lang/Object;
.source "RecentItemPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mItem:Lcom/evie/search/model/RecentItem;

.field mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;

.field shortcutHandler:Lcom/evie/search/SearchShortcutHandler;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/RecentItem;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1, p0}, Lcom/evie/search/SearchPresenter;->inject(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V

    .line 53
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 54
    iput-object p2, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/evie/search/R$dimen;->search_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/model/RecentItem;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    return-object p0
.end method

.method public static synthetic lambda$bind$0(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    new-instance v1, Lcom/evie/search/model/LocalSearchItem;

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-direct {v1, v2}, Lcom/evie/search/model/LocalSearchItem;-><init>(Lcom/evie/search/model/RecentItem;)V

    invoke-virtual {v0, v1}, Lcom/evie/search/local/LocalSearchManager;->getImageUrl(Lcom/evie/search/model/LocalSearchItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onItemClick$1(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V
    .locals 2

    .line 111
    invoke-static {}, Lcom/evie/search/local/LocalSearchManager;->getInstance()Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {v0, v1}, Lcom/evie/search/local/LocalSearchManager;->itemAccessed(Lcom/evie/search/model/RecentItem;)V

    return-void
.end method

.method public static synthetic lambda$onItemClick$2(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;Landroid/content/Intent;)Z
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {v0}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCAL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mContext:Landroid/content/Context;

    const-string v1, "recents"

    invoke-static {v0, p1, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->generateAppLaunchProperties(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mContext:Landroid/content/Context;

    const-string v3, "recents"

    invoke-virtual {v1, v2, p1, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    const-string v1, "item_type"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    .line 124
    invoke-virtual {v2}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v1, "item_label"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    .line 125
    invoke-virtual {v2}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    const-string v1, "item_position"

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 126
    invoke-virtual {v2}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/evie/search/SearchPresenter;->logRecentItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 72
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    .line 73
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 74
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindItem(Lcom/evie/search/model/RecentItem;)V

    .line 75
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Lcom/evie/search/recyclerview/presenter/-$$Lambda$RecentItemPresenter$logVF5wrD3z8_hO63m1hAalTt4M;

    invoke-direct {p1, p0}, Lcom/evie/search/recyclerview/presenter/-$$Lambda$RecentItemPresenter$logVF5wrD3z8_hO63m1hAalTt4M;-><init>(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V

    invoke-static {p1}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    .line 77
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 78
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter$1;-><init>(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V

    .line 79
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    :cond_0
    return-void
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 62
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->ID:I

    return v0
.end method

.method public onItemClick()V
    .locals 4

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/evie/search/recyclerview/presenter/-$$Lambda$RecentItemPresenter$7CROaZu6JdSNvaNAZJG5Ud6jC3w;

    invoke-direct {v1, p0}, Lcom/evie/search/recyclerview/presenter/-$$Lambda$RecentItemPresenter$7CROaZu6JdSNvaNAZJG5Ud6jC3w;-><init>(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    new-instance v0, Lcom/evie/search/recyclerview/presenter/-$$Lambda$RecentItemPresenter$uGre9uaocelJndVIHyHMRSBzwKk;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/presenter/-$$Lambda$RecentItemPresenter$uGre9uaocelJndVIHyHMRSBzwKk;-><init>(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V

    .line 132
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {v1}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3f903c7e

    if-eq v2, v3, :cond_3

    const v3, -0x94fb8ed

    if-eq v2, v3, :cond_2

    const v3, 0x5e55770d

    if-eq v2, v3, :cond_1

    const v3, 0x6382b000

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "CONTACT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "LOCAL_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "WEB_AUTOCOMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "SETTINGS_DEEPLINK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 147
    new-instance v2, Lcom/evie/common/services/links/LinkRequest;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {v1}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\|\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 140
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {v2}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 141
    invoke-static {v2}, Lcom/evie/common/SearchSettings;->getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evie/common/SearchSettings;->getOpenWebResultsInBrowser()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "|browser"

    goto :goto_2

    :cond_5
    const-string v2, "|google"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Lcom/evie/common/services/links/LinkRequest;

    invoke-direct {v2, v1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 136
    :pswitch_1
    new-instance v2, Lcom/evie/common/services/links/LinkRequest;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {v1}, Lcom/evie/search/model/RecentItem;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/lang/String;)V

    .line 150
    :goto_3
    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/evie/common/services/links/LinkRequest;->callback(Lcom/evie/common/services/links/LinkCallback;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    invoke-direct {v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;-><init>()V

    const-string v2, "item_type"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    .line 157
    invoke-virtual {v3}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_label"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    .line 158
    invoke-virtual {v3}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    const-string v2, "item_position"

    iget-object v3, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 159
    invoke-virtual {v3}, Lcom/evie/search/SearchPresenter;->getAdapter()Lcom/evie/search/SearchAdapter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/evie/search/SearchAdapter;->getRank(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->logSearchItemDragged(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 161
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    iget-object v1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mItem:Lcom/evie/search/model/RecentItem;

    invoke-virtual {v0, p1, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/RecentItem;)Z

    move-result p1

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 103
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 104
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    :cond_0
    return-void
.end method
