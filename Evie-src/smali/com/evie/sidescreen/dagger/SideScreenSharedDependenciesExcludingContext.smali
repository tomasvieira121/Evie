.class public interface abstract Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;
.super Ljava/lang/Object;
.source "SideScreenSharedDependenciesExcludingContext.java"


# virtual methods
.method public abstract adTilePresenterFactories()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdTilePresenterFactory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract adUnitPools()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evie/sidescreen/tiles/ads/AdUnitPool;",
            ">;"
        }
    .end annotation
.end method

.method public abstract analyticsHandler()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
.end method

.method public abstract appVersionCode()Ljava/lang/Integer;
.end method

.method public abstract exoplayerCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
.end method

.method public abstract frequentlyUsedModel()Lcom/evie/models/frequentlyused/FrequentlyUsedModel;
.end method

.method public abstract gson()Lcom/google/gson/Gson;
.end method

.method public abstract memoryWatcher()Lcom/evie/common/utils/MemoryWatcher;
.end method

.method public abstract okHttpClient()Lokhttp3/OkHttpClient;
.end method

.method public abstract playerBuilderRequestor()Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
.end method

.method public abstract retrofit()Lretrofit2/Retrofit;
.end method

.method public abstract tileSettings()Lcom/evie/sidescreen/TileSettings;
.end method
