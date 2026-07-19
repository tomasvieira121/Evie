package com.evie.sidescreen.tiles.recommended;

import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.personalize.TopicItemPresenterFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class RecommendedPresenterFactory_Factory implements Factory<RecommendedPresenterFactory> {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public RecommendedPresenterFactory_Factory(Provider<TopicsModel> provider, Provider<TopicItemPresenterFactory> provider2, Provider<AnalyticsModel> provider3) {
        this.topicsModelProvider = provider;
        this.topicItemPresenterFactoryProvider = provider2;
        this.analyticsModelProvider = provider3;
    }

    @Override // javax.inject.Provider
    public RecommendedPresenterFactory get() {
        return new RecommendedPresenterFactory(this.topicsModelProvider, this.topicItemPresenterFactoryProvider, this.analyticsModelProvider);
    }

    public static RecommendedPresenterFactory_Factory create(Provider<TopicsModel> provider, Provider<TopicItemPresenterFactory> provider2, Provider<AnalyticsModel> provider3) {
        return new RecommendedPresenterFactory_Factory(provider, provider2, provider3);
    }
}
