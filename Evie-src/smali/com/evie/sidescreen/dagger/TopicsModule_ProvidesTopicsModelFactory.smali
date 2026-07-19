.class public final Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;
.super Ljava/lang/Object;
.source "TopicsModule_ProvidesTopicsModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/topics/TopicsModel;",
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

.field private final locationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/TopicsModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final topicPersonalizationStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TopicsModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->module:Lcom/evie/sidescreen/dagger/TopicsModule;

    .line 39
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/TopicsModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;"
        }
    .end annotation

    .line 64
    new-instance v7, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;-><init>(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static proxyProvidesTopicsModel(Lcom/evie/sidescreen/dagger/TopicsModule;Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/topics/TopicsModel;
    .locals 0

    .line 81
    invoke-virtual/range {p0 .. p5}, Lcom/evie/sidescreen/dagger/TopicsModule;->providesTopicsModel(Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/topics/TopicsModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 80
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/topics/TopicsModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/topics/TopicsModel;
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->module:Lcom/evie/sidescreen/dagger/TopicsModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Retrofit;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/common/AbTestConfiguration;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->topicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/models/topics/TopicPersonalizationStore;

    iget-object v5, p0, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->proxyProvidesTopicsModel(Lcom/evie/sidescreen/dagger/TopicsModule;Lretrofit2/Retrofit;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/common/AbTestConfiguration;Lcom/evie/models/topics/TopicPersonalizationStore;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)Lcom/evie/models/topics/TopicsModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->get()Lcom/evie/models/topics/TopicsModel;

    move-result-object v0

    return-object v0
.end method
