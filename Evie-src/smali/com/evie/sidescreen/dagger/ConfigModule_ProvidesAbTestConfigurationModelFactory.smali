.class public final Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;
.super Ljava/lang/Object;
.source "ConfigModule_ProvidesAbTestConfigurationModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;",
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

.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/config/ConfigModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->configModelProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->activationModelProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->versionProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/config/ConfigModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;"
        }
    .end annotation

    .line 72
    new-instance v8, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static proxyProvidesAbTestConfigurationModel(Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Landroid/content/Context;Ljava/lang/Integer;)Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;
    .locals 0

    .line 91
    invoke-static/range {p0 .. p6}, Lcom/evie/sidescreen/dagger/ConfigModule;->providesAbTestConfigurationModel(Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Landroid/content/Context;Ljava/lang/Integer;)Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 90
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/evie/common/AbTestConfiguration;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->configModelProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/evie/models/config/ConfigModel;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->activationModelProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/evie/sidescreen/ActivationModel;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->versionProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    .line 54
    invoke-static/range {v1 .. v7}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->proxyProvidesAbTestConfigurationModel(Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/config/ConfigModel;Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Landroid/content/Context;Ljava/lang/Integer;)Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ConfigModule_ProvidesAbTestConfigurationModelFactory;->get()Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;

    move-result-object v0

    return-object v0
.end method
