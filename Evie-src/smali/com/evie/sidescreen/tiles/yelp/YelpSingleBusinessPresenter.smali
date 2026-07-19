.class public Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;
.super Lcom/evie/sidescreen/tiles/TilePresenter;
.source "YelpSingleBusinessPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/TilePresenter<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

.field private final mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

.field private final mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

.field protected final mYelpAd:Lorg/schema/evie/yelp/YelpAd;


# direct methods
.method public constructor <init>(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V
    .locals 9
    .param p4    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/voxel/simplesearchlauncher/api/LocationHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 40
    invoke-virtual {p1}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/schema/evie/yelp/LocalBusiness;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;-><init>(Lorg/schema/evie/yelp/YelpAd;Lorg/schema/evie/yelp/LocalBusiness;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V

    return-void
.end method

.method public constructor <init>(Lorg/schema/evie/yelp/YelpAd;Lorg/schema/evie/yelp/LocalBusiness;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V
    .locals 0
    .param p5    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Lcom/voxel/simplesearchlauncher/api/LocationHandler;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p3, p4, p6}, Lcom/evie/sidescreen/tiles/TilePresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 52
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    .line 53
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    .line 54
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    .line 55
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;
    .locals 1

    .line 65
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;-><init>(Landroid/view/View;)V

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

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "ad"

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_thing"

    .line 116
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 117
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_network"

    const-string v2, "yelp"

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 60
    sget v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->ROW_ID:I

    return v0
.end method

.method public onActionClicked(Landroid/view/View;)V
    .locals 13

    .line 101
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->onTapped()V

    .line 102
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->getAnalyticsAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getAnalytics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "analytics_proto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

    move-result-object v0

    .line 108
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAction;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v1}, Lorg/schema/evie/yelp/YelpAd;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAction;->getAndroidUrl()Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;)V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->setTitle(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->setSubtitle(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getPriceRange()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->setPrice(I)V

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->setImageUrl(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getGeo()Lorg/schema/evie/yelp/LocalBusiness$Geo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getGeo()Lorg/schema/evie/yelp/LocalBusiness$Geo;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLatitude()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness$Geo;->getLongitude()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getDistanceFromHere(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->setDistance(D)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getRatingValue()F

    move-result v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness;->getRating()Lorg/schema/evie/yelp/LocalBusiness$Rating;

    move-result-object v1

    invoke-virtual {v1}, Lorg/schema/evie/yelp/LocalBusiness$Rating;->getReviewCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->setRating(FI)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->hideRating()V

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/view/View;)V
    .locals 13

    .line 91
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->onTapped()V

    .line 92
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    const-string v1, "ev_ss_tap"

    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->getAnalyticsAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/analytics/AnalyticsModel;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getAnalytics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "analytics_proto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    sget-object v1, Lcom/evie/sidescreen/webviewer/WebViewerActivity;->EXTRA_ANALYTICS_PROTO_KEY:Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getAndroidPackageId()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->mLocalBusiness:Lorg/schema/evie/yelp/LocalBusiness;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/LocalBusiness;->getAndroidUrl()Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/evie/sidescreen/ActivityStarter;->startUrl(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
