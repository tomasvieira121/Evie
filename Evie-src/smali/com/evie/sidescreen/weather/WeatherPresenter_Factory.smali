.class public final Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;
.super Ljava/lang/Object;
.source "WeatherPresenter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/weather/WeatherPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
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

.field private final connectivityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            ">;"
        }
    .end annotation
.end field

.field private final convertToCelsiusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
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

.field private final weatherModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/weather/WeatherModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/weather/WeatherModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->weatherModelProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->convertToCelsiusProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->connectivityModelProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p8, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p9, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/weather/WeatherModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ConnectivityModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;"
        }
    .end annotation

    .line 84
    new-instance v10, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/weather/WeatherPresenter;
    .locals 11

    .line 62
    new-instance v10, Lcom/evie/sidescreen/weather/WeatherPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->weatherModelProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/models/weather/WeatherModel;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->convertToCelsiusProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/reactivex/Observable;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->connectivityModelProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/sidescreen/ConnectivityModel;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/evie/sidescreen/ActivationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v0, p0, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/evie/sidescreen/weather/WeatherPresenter;-><init>(Lcom/voxel/simplesearchlauncher/api/LocationHandler;Lcom/evie/models/weather/WeatherModel;Lio/reactivex/Observable;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/ConnectivityModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-object v10
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/evie/sidescreen/weather/WeatherPresenter_Factory;->get()Lcom/evie/sidescreen/weather/WeatherPresenter;

    move-result-object v0

    return-object v0
.end method
