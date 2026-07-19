.class public final Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;
.super Ljava/lang/Object;
.source "TopLevelTilePresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final adTilePresenterFactoriesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->adTilePresenterFactoriesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;
    .locals 3

    .line 27
    new-instance v0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->nonAdTilePresenterFactoryProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->adTilePresenterFactoriesProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/NonAdTilePresenterFactory;Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;

    move-result-object v0

    return-object v0
.end method
