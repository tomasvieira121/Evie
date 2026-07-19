.class public Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;
.super Ljava/lang/Object;
.source "ArticleTilePresenterFactory.java"


# instance fields
.field private final mArticleTileHeroCaptionPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;

.field private final mArticleTileHeroImagePresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;

.field private final mArticleTileHeroOathPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

.field private final mArticleTileHeroVideoPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

.field private final mArticleTileHeroYouTubePreviewPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;

.field private final mArticleTileRowPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroCaptionPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;

    .line 43
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroVideoPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

    .line 44
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroYouTubePreviewPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;

    .line 45
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroOathPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

    .line 46
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileRowPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;

    .line 47
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroImagePresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;

    return-void
.end method


# virtual methods
.method public create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            "Lorg/schema/NewsArticle;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/tiles/TilePresenter<",
            "*>;>;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory$1;->$SwitchMap$com$evie$models$sidescreen$data$TileType:[I

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/models/sidescreen/data/TileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileRowPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleTileRowPresenter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-virtual {p2}, Lorg/schema/NewsArticle;->getVideo()Ljava/util/List;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroCaptionPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;

    invoke-virtual {v2, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 65
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/schema/VideoObject;

    :cond_0
    const/4 v1, 0x1

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {v2}, Lorg/schema/VideoObject;->isYouTube()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroYouTubePreviewPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;

    invoke-virtual {v2, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroYouTubePreviewPresenter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v2}, Lorg/schema/VideoObject;->isOath()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroOathPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;

    invoke-virtual {v2, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroOathPresenter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroVideoPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;

    invoke-virtual {v2, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroVideoPresenter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/tiles/TilePresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->setContentPresenter(Lcom/evie/sidescreen/tiles/TilePresenter;)V

    goto :goto_1

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->mArticleTileHeroImagePresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;

    invoke-virtual {v2, p1, p2, p3}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroImagePresenter;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/tiles/TilePresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/articles/ArticleTileHeroCaptionPresenter;->setContentPresenter(Lcom/evie/sidescreen/tiles/TilePresenter;)V

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
