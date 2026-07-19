.class public final Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "RowAdMediationItemPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final adTilePresenterFactoriesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final adUnitPoolsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;>;"
        }
    .end annotation
.end field

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->adUnitPoolsProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->adTilePresenterFactoriesProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;
    .locals 4

    .line 32
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->adUnitPoolsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->adTilePresenterFactoriesProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;

    move-result-object v0

    return-object v0
.end method
