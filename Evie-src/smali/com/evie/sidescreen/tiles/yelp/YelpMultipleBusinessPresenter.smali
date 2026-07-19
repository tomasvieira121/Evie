.class public Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;
.super Lcom/evie/sidescreen/tiles/TilePresenter;
.source "YelpMultipleBusinessPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/TilePresenter<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;

.field private final mYelpAd:Lorg/schema/evie/yelp/YelpAd;


# direct methods
.method public constructor <init>(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/ActivityStarter;)V
    .locals 0
    .param p4    # Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p2, p3, p5}, Lcom/evie/sidescreen/tiles/TilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 43
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;

    .line 44
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 45
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;
    .locals 1

    .line 55
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getAnalyticsAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "ad"

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_thing"

    .line 90
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 91
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_network"

    const-string v2, "yelp"

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 50
    sget v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->ID:I

    return v0
.end method

.method public onActionClicked(Landroid/view/View;)V
    .locals 11

    .line 73
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->onTapped()V

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->getAnalyticsAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

    move-result-object v0

    .line 78
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getAnalytics()Ljava/util/Map;

    move-result-object v1

    const-string v2, "analytics_proto"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    sget-object v2, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAction;->getAndroidUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v2}, Lorg/schema/evie/yelp/YelpAd;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAction;->getAndroidUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;)V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->setHeadline(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->setDescription(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schema/evie/yelp/LocalBusiness;

    .line 66
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;

    iget-object v4, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    iget-object v5, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mTile:Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    iget-object v6, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;->create(Lorg/schema/evie/yelp/YelpAd;Lorg/schema/evie/yelp/LocalBusiness;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->setItemPresenters(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->setAction(Lorg/schema/evie/yelp/YelpAction;)V

    return-void
.end method
