.class public final Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;
.super Ljava/lang/Object;
.source "YelpSingleBusinessPresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;",
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
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->locationHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;
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
            "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;
    .locals 4

    .line 33
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->locationHandlerProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory_Factory;->get()Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenterFactory;

    move-result-object v0

    return-object v0
.end method
