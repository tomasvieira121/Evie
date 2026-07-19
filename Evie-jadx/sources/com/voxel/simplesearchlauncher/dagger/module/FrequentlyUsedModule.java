package com.voxel.simplesearchlauncher.dagger.module;

import android.content.Context;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.models.frequentlyused.FrequentlyUsedModelImpl;
import com.evie.models.frequentlyused.room.AppLaunchDatabase;
import com.evie.models.frequentlyused.submodels.FrequentlyUsedLocalModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
public class FrequentlyUsedModule {
    public FrequentlyUsedLocalModel providesFrequentlyUsedLocalModel(AppLaunchDatabase appLaunchDatabase) {
        return new FrequentlyUsedLocalModel(appLaunchDatabase.appLaunchDAO());
    }

    public FrequentlyUsedModel providesFrequentlyUsedModel(Context context, OkHttpClient okHttpClient, AnalyticsHandler analyticsHandler, Retrofit retrofit, FrequentlyUsedLocalModel frequentlyUsedLocalModel) {
        return new FrequentlyUsedModelImpl(context, okHttpClient, analyticsHandler.getDistinctUserId(), retrofit, frequentlyUsedLocalModel);
    }
}
