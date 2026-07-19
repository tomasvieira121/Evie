.class public final Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;
.super Ljava/lang/Object;
.source "SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;",
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

.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final apiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;"
        }
    .end annotation
.end field

.field private final appVersionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
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

.field private final locationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenContentModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    .line 43
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->apiProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->appVersionProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenContentModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenContentAPI;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;"
        }
    .end annotation

    .line 71
    new-instance v8, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static proxyProvidesSideScreenRelatedContentModel(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Landroid/content/Context;Lcom/evie/models/sidescreen/SideScreenContentAPI;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;
    .locals 0

    .line 90
    invoke-virtual/range {p0 .. p6}, Lcom/evie/sidescreen/dagger/SideScreenContentModule;->providesSideScreenRelatedContentModel(Landroid/content/Context;Lcom/evie/models/sidescreen/SideScreenContentAPI;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 89
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->apiProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/models/sidescreen/SideScreenContentAPI;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->appVersionProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/common/AbTestConfiguration;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v6, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->proxyProvidesSideScreenRelatedContentModel(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Landroid/content/Context;Lcom/evie/models/sidescreen/SideScreenContentAPI;Ljava/lang/Integer;Lcom/evie/common/AbTestConfiguration;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->get()Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    move-result-object v0

    return-object v0
.end method
