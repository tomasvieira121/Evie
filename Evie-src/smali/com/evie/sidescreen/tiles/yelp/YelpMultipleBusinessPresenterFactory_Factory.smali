.class public final Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "YelpMultipleBusinessPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;",
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

.field private final presenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;",
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
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->presenterFactoryProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;
    .locals 4

    .line 32
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->presenterFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessPresenterFactory;

    move-result-object v0

    return-object v0
.end method
