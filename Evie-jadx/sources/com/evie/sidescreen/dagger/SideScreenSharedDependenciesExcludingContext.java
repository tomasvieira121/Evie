package com.evie.sidescreen.dagger;

import com.evie.common.utils.MemoryWatcher;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.sidescreen.TileSettings;
import com.evie.sidescreen.dagger.external.PlayerBuilderRequestor;
import com.evie.sidescreen.tiles.ads.AdTilePresenterFactory;
import com.evie.sidescreen.tiles.ads.AdUnitPool;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.gson.Gson;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import java.util.Map;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public interface SideScreenSharedDependenciesExcludingContext {
    Map<String, AdTilePresenterFactory> adTilePresenterFactories();

    Map<String, AdUnitPool> adUnitPools();

    AnalyticsHandler analyticsHandler();

    Integer appVersionCode();

    Cache exoplayerCache();

    FrequentlyUsedModel frequentlyUsedModel();

    Gson gson();

    MemoryWatcher memoryWatcher();

    OkHttpClient okHttpClient();

    PlayerBuilderRequestor playerBuilderRequestor();

    Retrofit retrofit();

    TileSettings tileSettings();
}
