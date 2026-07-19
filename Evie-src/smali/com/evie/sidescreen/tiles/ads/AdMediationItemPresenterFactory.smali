.class public Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;
.super Ljava/lang/Object;
.source "AdMediationItemPresenterFactory.java"


# instance fields
.field private final mHeroAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;

.field private final mRowAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;->mHeroAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;

    .line 33
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;->mRowAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;

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

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    const/4 p4, 0x2

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object p4

    if-nez p4, :cond_0

    return-object p1

    .line 52
    :cond_0
    instance-of p4, p3, Lorg/schema/evie/ads/Ad;

    if-eqz p4, :cond_1

    .line 53
    sget-object p4, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory$1;->$SwitchMap$com$evie$models$sidescreen$data$TileType:[I

    invoke-virtual {p2}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/models/sidescreen/data/TileType;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;->mRowAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;

    check-cast p3, Lorg/schema/evie/ads/Ad;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/evie/ads/Ad;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object p4, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;->mHeroAdMediationItemPresenterFactory:Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;

    check-cast p3, Lorg/schema/evie/ads/Ad;

    invoke-virtual {p4, p2, p3, p5}, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;->create(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/evie/ads/Ad;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenter;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
