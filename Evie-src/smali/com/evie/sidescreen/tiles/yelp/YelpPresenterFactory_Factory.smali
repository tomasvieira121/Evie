.class public final Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "YelpPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;",
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
            "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;
    .locals 3

    .line 30
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->yelpMultipleBusinessPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->yelpSingleBusinessHeroPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;-><init>(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/yelp/YelpPresenterFactory;

    move-result-object v0

    return-object v0
.end method
