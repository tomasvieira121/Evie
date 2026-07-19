package com.evie.sidescreen.personalize;

import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class FollowButtonHandlerFactory_Factory implements Factory<FollowButtonHandlerFactory> {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public FollowButtonHandlerFactory_Factory(Provider<TopicsModel> provider, Provider<AnalyticsModel> provider2) {
        this.topicsModelProvider = provider;
        this.analyticsModelProvider = provider2;
    }

    @Override // javax.inject.Provider
    public FollowButtonHandlerFactory get() {
        return new FollowButtonHandlerFactory(this.topicsModelProvider, this.analyticsModelProvider);
    }

    public static FollowButtonHandlerFactory_Factory create(Provider<TopicsModel> provider, Provider<AnalyticsModel> provider2) {
        return new FollowButtonHandlerFactory_Factory(provider, provider2);
    }
}
