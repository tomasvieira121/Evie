package com.voxel.simplesearchlauncher.dagger.module;

import android.content.Context;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.models.frequentlyused.submodels.FrequentlyUsedLocalModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
public final class FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory implements Factory<FrequentlyUsedModel> {
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<OkHttpClient> clientProvider;
    private final Provider<Context> contextProvider;
    private final Provider<FrequentlyUsedLocalModel> frequentlyUsedLocalModelProvider;
    private final FrequentlyUsedModule module;
    private final Provider<Retrofit> retrofitProvider;

    public FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory(FrequentlyUsedModule frequentlyUsedModule, Provider<Context> provider, Provider<OkHttpClient> provider2, Provider<AnalyticsHandler> provider3, Provider<Retrofit> provider4, Provider<FrequentlyUsedLocalModel> provider5) {
        this.module = frequentlyUsedModule;
        this.contextProvider = provider;
        this.clientProvider = provider2;
        this.analyticsHandlerProvider = provider3;
        this.retrofitProvider = provider4;
        this.frequentlyUsedLocalModelProvider = provider5;
    }

    @Override // javax.inject.Provider
    public FrequentlyUsedModel get() {
        return proxyProvidesFrequentlyUsedModel(this.module, this.contextProvider.get(), this.clientProvider.get(), this.analyticsHandlerProvider.get(), this.retrofitProvider.get(), this.frequentlyUsedLocalModelProvider.get());
    }

    public static FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory create(FrequentlyUsedModule frequentlyUsedModule, Provider<Context> provider, Provider<OkHttpClient> provider2, Provider<AnalyticsHandler> provider3, Provider<Retrofit> provider4, Provider<FrequentlyUsedLocalModel> provider5) {
        return new FrequentlyUsedModule_ProvidesFrequentlyUsedModelFactory(frequentlyUsedModule, provider, provider2, provider3, provider4, provider5);
    }

    public static FrequentlyUsedModel proxyProvidesFrequentlyUsedModel(FrequentlyUsedModule frequentlyUsedModule, Context context, OkHttpClient okHttpClient, AnalyticsHandler analyticsHandler, Retrofit retrofit, FrequentlyUsedLocalModel frequentlyUsedLocalModel) {
        return (FrequentlyUsedModel) Preconditions.checkNotNull(frequentlyUsedModule.providesFrequentlyUsedModel(context, okHttpClient, analyticsHandler, retrofit, frequentlyUsedLocalModel), "Cannot return null from a non-@Nullable @Provides method");
    }
}
