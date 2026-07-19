.class public final Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;
.super Ljava/lang/Object;
.source "FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/frequentlyused/FrequentlyUsedModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final clientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
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

.field private final frequentlyUsedLocalModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    .line 40
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->clientProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->frequentlyUsedLocalModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;"
        }
    .end annotation

    .line 65
    new-instance v7, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static proxyProvidesFrequentlyUsedModel(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lretrofit2/Retrofit;Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)Lcom/evie/models/frequentlyused/FrequentlyUsedModel;
    .locals 0

    .line 82
    invoke-virtual/range {p0 .. p5}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;->providesFrequentlyUsedModel(Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lretrofit2/Retrofit;Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 81
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/frequentlyused/FrequentlyUsedModel;
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->clientProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lretrofit2/Retrofit;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->frequentlyUsedLocalModelProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    .line 49
    invoke-static/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->proxyProvidesFrequentlyUsedModel(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lretrofit2/Retrofit;Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory;->get()Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    move-result-object v0

    return-object v0
.end method
