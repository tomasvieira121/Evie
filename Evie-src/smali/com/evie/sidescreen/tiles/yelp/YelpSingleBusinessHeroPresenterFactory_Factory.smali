.class public final Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "YelpSingleBusinessHeroPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
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

.field private final locationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
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
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->locationHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;
    .locals 4

    .line 33
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->locationHandlerProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessHeroPresenterFactory;

    move-result-object v0

    return-object v0
.end method
