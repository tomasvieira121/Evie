.class public Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;
.super Ljava/lang/Object;
.source "FrequentlyUsedModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesFrequentlyUsedLocalModel(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;)Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;
    .locals 1

    .line 23
    new-instance v0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    invoke-virtual {p1}, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;->appLaunchDAO()Lcom/evie/models/frequentlyused/room/AppLaunchDAO;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;-><init>(Lcom/evie/models/frequentlyused/room/AppLaunchDAO;)V

    return-object v0
.end method

.method public providesFrequentlyUsedModel(Landroid/content/Context;Lokhttp3/OkHttpClient;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lretrofit2/Retrofit;Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)Lcom/evie/models/frequentlyused/FrequentlyUsedModel;
    .locals 7

    .line 29
    new-instance v6, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;

    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getDistinctUserId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/evie/models/frequentlyused/FrequentlyUsedModelImpl;-><init>(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Lretrofit2/Retrofit;Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;)V

    return-object v6
.end method
