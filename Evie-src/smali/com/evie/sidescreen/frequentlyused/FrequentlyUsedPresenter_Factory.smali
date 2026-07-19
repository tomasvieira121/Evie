.class public final Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;
.super Ljava/lang/Object;
.source "FrequentlyUsedPresenter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final abTestConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final activityOverridesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
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

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final frequentlyUsedModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/FrequentlyUsedModel;",
            ">;"
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/FrequentlyUsedModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p2, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->frequentlyUsedModelProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p6, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->analyticsProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p7, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p8, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->activityOverridesProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p9, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/FrequentlyUsedModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;)",
            "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;"
        }
    .end annotation

    .line 84
    new-instance v10, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;

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

    invoke-direct/range {v0 .. v9}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;
    .locals 11

    .line 62
    new-instance v10, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/ActivityStarter;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/ActivationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->frequentlyUsedModelProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->analyticsProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->activityOverridesProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/evie/common/AbTestConfiguration;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;-><init>(Landroid/content/Context;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/sidescreen/analytics/AnalyticsModel;Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;Lcom/evie/common/AbTestConfiguration;)V

    return-object v10
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter_Factory;->get()Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    move-result-object v0

    return-object v0
.end method
