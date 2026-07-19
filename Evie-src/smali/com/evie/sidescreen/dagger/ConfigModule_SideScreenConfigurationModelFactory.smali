.class public final Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;
.super Ljava/lang/Object;
.source "ConfigModule_SideScreenConfigurationModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/SideScreenConfigurationModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final abTestConfigurationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
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

.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final compositeDisposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;"
        }
    .end annotation
.end field

.field private final configModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/config/ConfigModel;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
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

.field private final lifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final preferencesModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;"
        }
    .end annotation
.end field

.field private final versionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/config/ConfigModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->activationModelProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->abTestConfigurationModelProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->configurationProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->configModelProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->versionProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p8, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p9, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->compositeDisposableProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p10, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->preferencesModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/config/ConfigModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;"
        }
    .end annotation

    .line 93
    new-instance v11, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static proxySideScreenConfigurationModel(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/Integer;Landroid/content/Context;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)Lcom/evie/sidescreen/SideScreenConfigurationModel;
    .locals 0

    .line 118
    invoke-static/range {p0 .. p9}, Lcom/evie/sidescreen/dagger/ConfigModule;->sideScreenConfigurationModel(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/Integer;Landroid/content/Context;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)Lcom/evie/sidescreen/SideScreenConfigurationModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 117
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/SideScreenConfigurationModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenConfigurationModel;
    .locals 11

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->activationModelProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/sidescreen/ActivationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->abTestConfigurationModelProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->configurationProvider:Ljavax/inject/Provider;

    .line 73
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/SideScreenConfiguration;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->configModelProvider:Ljavax/inject/Provider;

    .line 74
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/evie/models/config/ConfigModel;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 75
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->versionProvider:Ljavax/inject/Provider;

    .line 76
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->compositeDisposableProvider:Ljavax/inject/Provider;

    .line 78
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lio/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->preferencesModelProvider:Ljavax/inject/Provider;

    .line 79
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 69
    invoke-static/range {v1 .. v10}, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->proxySideScreenConfigurationModel(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/sidescreen/SideScreenConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/Integer;Landroid/content/Context;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)Lcom/evie/sidescreen/SideScreenConfigurationModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ConfigModule_SideScreenConfigurationModelFactory;->get()Lcom/evie/sidescreen/SideScreenConfigurationModel;

    move-result-object v0

    return-object v0
.end method
