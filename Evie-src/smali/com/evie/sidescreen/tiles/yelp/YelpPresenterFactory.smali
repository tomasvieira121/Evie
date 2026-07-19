.class public Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;
.super Ljava/lang/Object;
.source "YelpPresenterFactory.java"


# instance fields
.field private final mYelpMultipleBusinessPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

.field private final mYelpSingleBusinessHeroPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;->mYelpMultipleBusinessPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

    .line 27
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;->mYelpSingleBusinessHeroPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;

    return-void
.end method


# virtual methods
.method public create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/evie/yelp/YelpAd;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            "Lorg/schema/evie/yelp/YelpAd;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/tiles/TilePresenter<",
            "*>;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p2}, Lorg/schema/evie/yelp/YelpAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/schema/evie/yelp/YelpAd;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;->mYelpSingleBusinessHeroPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;

    invoke-virtual {v1, p2, p1, p3}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;->create(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;->mYelpMultipleBusinessPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

    invoke-virtual {v1, p2, p1, p3}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;->create(Lorg/schema/evie/yelp/YelpAd;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method
