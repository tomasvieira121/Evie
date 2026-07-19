.class public Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;
.super Ljava/lang/Object;
.source "TopLevelTilePresenterFactory.java"


# instance fields
.field private final mAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

.field private final mNonAdTilePresenterFactory:Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->mNonAdTilePresenterFactory:Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;

    .line 39
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->mAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;
    .locals 7
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

    .line 52
    instance-of v0, p3, Lorg/schema/evie/ads/Ad;

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->mAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;->create(Landroid/content/Context;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->mNonAdTilePresenterFactory:Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;->create(Landroid/content/Context;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public processTiles(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/evie/models/sidescreen/data/TileType;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;",
            "Ljava/util/List<",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            ">;I",
            "Lcom/evie/models/sidescreen/data/TileType;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/tiles/TilePresenter<",
            "*>;>;"
        }
    .end annotation

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schema/Thing;

    if-nez v2, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2}, Lorg/schema/Thing;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    invoke-virtual {v2}, Lorg/schema/Thing;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    if-eqz p4, :cond_5

    .line 92
    invoke-virtual {v4}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {v4, p3}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->setPositionY(I)V

    .line 96
    :cond_5
    invoke-virtual {v4}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_1

    .line 98
    :cond_6
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lorg/schema/Thing;

    if-eqz p5, :cond_7

    .line 99
    instance-of p3, v5, Lorg/schema/NewsArticle;

    if-eqz p3, :cond_7

    .line 100
    invoke-virtual {v4, p5}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->setType(Lcom/evie/models/sidescreen/data/TileType;)V

    .line 107
    :cond_7
    invoke-virtual {v4}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getFallbackId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 108
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/schema/Thing;

    goto :goto_2

    :cond_8
    const/4 p3, 0x0

    :goto_2
    move-object v6, p3

    move-object v2, p0

    move-object v3, p1

    move-object v7, p6

    .line 111
    invoke-virtual/range {v2 .. v7}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;->create(Landroid/content/Context;Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/Thing;Lorg/schema/Thing;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Ljava/util/List;

    move-result-object p3

    .line 113
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/tiles/TilePresenter;

    if-eqz v2, :cond_9

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    return-object v0

    .line 69
    :cond_b
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
