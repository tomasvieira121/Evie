.class public final Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "AdMediationItemPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;",
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
            "Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;
    .locals 3

    .line 28
    new-instance v0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->heroAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->rowAdMediationItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/ads/HeroAdMediationItemPresenterFactory;Lcom/evie/sidescreen/tiles/ads/RowAdMediationItemPresenterFactory;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/ads/AdMediationItemPresenterFactory;

    move-result-object v0

    return-object v0
.end method
