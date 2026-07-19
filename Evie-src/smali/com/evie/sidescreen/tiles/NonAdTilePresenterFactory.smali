.class public Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;
.super Ljava/lang/Object;
.source "NonAdTilePresenterFactory.java"


# instance fields
.field private final mArticleSeedPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;

.field private final mArticleTilePresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

.field private final mPlaylistItemPresenterFactory:Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

.field private final mRecommendedPresenterFactory:Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;

.field private final mRelatedArticlePresenterFactory:Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

.field private final mVideoSeedPresenterFactory:Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;

.field private final mYelpPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mArticleTilePresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

    .line 59
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mRecommendedPresenterFactory:Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;

    .line 60
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mPlaylistItemPresenterFactory:Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

    .line 61
    iput-object p6, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mVideoSeedPresenterFactory:Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;

    .line 62
    iput-object p5, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mArticleSeedPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;

    .line 63
    iput-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mRelatedArticlePresenterFactory:Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

    .line 64
    iput-object p7, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mYelpPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            "Lorg/schema/Thing;",
            "Lorg/schema/Thing;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/tiles/TilePresenter<",
            "*>;>;"
        }
    .end annotation

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    const/4 p4, 0x2

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object p4

    if-nez p4, :cond_0

    return-object p1

    .line 84
    :cond_0
    sget-object p4, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory$1;->$SwitchMap$com$evie$models$sidescreen$data$TileType:[I

    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/TileType;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    if-eqz p3, :cond_8

    .line 94
    invoke-virtual {p3}, Lorg/schema/Thing;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_1

    .line 89
    :pswitch_0
    iget-object p3, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mRecommendedPresenterFactory:Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;

    invoke-virtual {p3, p2, p5}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :pswitch_1
    return-object p1

    .line 98
    :cond_1
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object p4

    sget-object v0, Lcom/evie/models/sidescreen/data/TileType;->PLAYLIST_ITEM:Lcom/evie/models/sidescreen/data/TileType;

    if-ne p4, v0, :cond_2

    .line 99
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mPlaylistItemPresenterFactory:Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;

    check-cast p3, Lorg/schema/NewsArticle;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/videos/PlaylistItemPresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 101
    :cond_2
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object p4

    sget-object v0, Lcom/evie/models/sidescreen/data/TileType;->RELATED_ARTICLE:Lcom/evie/models/sidescreen/data/TileType;

    if-ne p4, v0, :cond_3

    .line 102
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mRelatedArticlePresenterFactory:Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;

    check-cast p3, Lorg/schema/NewsArticle;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/RelatedArticlePresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 104
    :cond_3
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object p4

    sget-object v0, Lcom/evie/models/sidescreen/data/TileType;->ARTICLE_SEED:Lcom/evie/models/sidescreen/data/TileType;

    if-ne p4, v0, :cond_4

    .line 105
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mArticleSeedPresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;

    check-cast p3, Lorg/schema/NewsArticle;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/articles/ArticleSeedPresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 107
    :cond_4
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object p4

    sget-object v0, Lcom/evie/models/sidescreen/data/TileType;->VIDEO_SEED:Lcom/evie/models/sidescreen/data/TileType;

    if-ne p4, v0, :cond_5

    .line 108
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mVideoSeedPresenterFactory:Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;

    check-cast p3, Lorg/schema/NewsArticle;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/videos/VideoSeedPresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 113
    :cond_5
    instance-of p4, p3, Lorg/schema/NewsArticle;

    if-eqz p4, :cond_6

    .line 114
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mArticleTilePresenterFactory:Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;

    check-cast p3, Lorg/schema/NewsArticle;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/articles/ArticleTilePresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/NewsArticle;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 116
    :cond_6
    instance-of p4, p3, Lorg/schema/evie/yelp/YelpAd;

    if-eqz p4, :cond_7

    .line 117
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->mYelpPresenterFactory:Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;

    check-cast p3, Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/evie/yelp/YelpAd;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_0
    return-object p1

    :cond_8
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
