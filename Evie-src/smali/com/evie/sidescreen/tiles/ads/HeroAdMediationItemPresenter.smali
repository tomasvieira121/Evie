.class public Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenter;
.super Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;
.source "HeroAdMediationItemPresenter.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter<",
        "Lcom/evie/sidescreen/tiles/ads/HeroAdMediationViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/evie/ads/Ad;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Ljava/util/Map;Ljava/util/Map;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0
    .param p4    # Ljava/util/Map;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/models/sidescreen/data/SideScreenContentTile;",
            "Lorg/schema/evie/ads/Ad;",
            "Lcom/evie/sidescreen/analytics/data/ScreenInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/evie/sidescreen/tiles/ads/AbstractAdMediationItemPresenter;-><init>(Lcom/evie/models/sidescreen/data/SideScreenContentTile;Lorg/schema/evie/ads/Ad;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Ljava/util/Map;Ljava/util/Map;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/ads/HeroAdMediationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/tiles/ads/HeroAdMediationViewHolder;
    .locals 1

    .line 35
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 30
    sget v0, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationViewHolder;->ID:I

    return v0
.end method
