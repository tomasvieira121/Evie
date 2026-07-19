.class public Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenter;
.super Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;
.source "YelpSingleBusinessHeroPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation


# direct methods
.method public constructor <init>(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V
    .locals 0
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

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;-><init>(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    move-result-object p1

    return-object p1
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

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_type"

    const-string v2, "ad"

    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_thing"

    .line 54
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute_screen_info"

    .line 55
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenter;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_network"

    const-string v2, "yelp"

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 35
    sget v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->HERO_ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->onBindViewHolder(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;)V

    .line 46
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenter;->mYelpAd:Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {v0}, Lorg/schema/evie/yelp/YelpAd;->getAction()Lorg/schema/evie/yelp/YelpAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->setAction(Lorg/schema/evie/yelp/YelpAction;)V

    return-void
.end method
