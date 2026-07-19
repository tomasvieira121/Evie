.class public final Lcom/voxel/launcher3/FlavorInitializer_MembersInjector;
.super Ljava/lang/Object;
.source "FlavorInitializer_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMAnalyticsModel(Lcom/voxel/launcher3/FlavorInitializer;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mAnalyticsModel:Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-void
.end method

.method public static injectMFrequentlyUsedModel(Lcom/voxel/launcher3/FlavorInitializer;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    return-void
.end method

.method public static injectMIconFilterProvider(Lcom/voxel/launcher3/FlavorInitializer;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/FlavorInitializer;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mIconFilterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectMIconPackManager(Lcom/voxel/launcher3/FlavorInitializer;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    return-void
.end method

.method public static injectMKiller(Lcom/voxel/launcher3/FlavorInitializer;Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mKiller:Lcom/voxel/simplesearchlauncher/utils/ConnectionPoolKiller;

    return-void
.end method

.method public static injectMLauncherAppComponent(Lcom/voxel/launcher3/FlavorInitializer;Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mLauncherAppComponent:Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    return-void
.end method

.method public static injectMOkHttpClient(Lcom/voxel/launcher3/FlavorInitializer;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static injectMSettingsStorage(Lcom/voxel/launcher3/FlavorInitializer;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/voxel/launcher3/FlavorInitializer;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method
