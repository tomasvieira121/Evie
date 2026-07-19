package com.evie.sidescreen.dagger;

import com.evie.common.AbTestConfiguration;
import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.models.topics.TopicsModel;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes.dex */
public final class TopicsModule_ProvidesTopicsModelFactory implements Factory<TopicsModel> {
    private final Provider<AbTestConfiguration> abTestConfigurationProvider;
    private final Provider<AnalyticsHandler> analyticsHandlerProvider;
    private final Provider<LocationHandler> locationHandlerProvider;
    private final TopicsModule module;
    private final Provider<Retrofit> retrofitProvider;
    private final Provider<TopicPersonalizationStore> topicPersonalizationStoreProvider;

    public TopicsModule_ProvidesTopicsModelFactory(TopicsModule topicsModule, Provider<Retrofit> provider, Provider<AnalyticsHandler> provider2, Provider<AbTestConfiguration> provider3, Provider<TopicPersonalizationStore> provider4, Provider<LocationHandler> provider5) {
        this.module = topicsModule;
        this.retrofitProvider = provider;
        this.analyticsHandlerProvider = provider2;
        this.abTestConfigurationProvider = provider3;
        this.topicPersonalizationStoreProvider = provider4;
        this.locationHandlerProvider = provider5;
    }

    @Override // javax.inject.Provider
    public TopicsModel get() {
        return proxyProvidesTopicsModel(this.module, this.retrofitProvider.get(), this.analyticsHandlerProvider.get(), this.abTestConfigurationProvider.get(), this.topicPersonalizationStoreProvider.get(), this.locationHandlerProvider.get());
    }

    public static TopicsModule_ProvidesTopicsModelFactory create(TopicsModule topicsModule, Provider<Retrofit> provider, Provider<AnalyticsHandler> provider2, Provider<AbTestConfiguration> provider3, Provider<TopicPersonalizationStore> provider4, Provider<LocationHandler> provider5) {
        return new TopicsModule_ProvidesTopicsModelFactory(topicsModule, provider, provider2, provider3, provider4, provider5);
    }

    public static TopicsModel proxyProvidesTopicsModel(TopicsModule topicsModule, Retrofit retrofit, AnalyticsHandler analyticsHandler, AbTestConfiguration abTestConfiguration, TopicPersonalizationStore topicPersonalizationStore, LocationHandler locationHandler) {
        return (TopicsModel) Preconditions.checkNotNull(topicsModule.providesTopicsModel(retrofit, analyticsHandler, abTestConfiguration, topicPersonalizationStore, locationHandler), "Cannot return null from a non-@Nullable @Provides method");
    }
}
