package com.evie.sidescreen.personalize;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicItemPresenterFactory_Factory implements Factory<TopicItemPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<IFollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
    private final Provider<Boolean> onboardingModeProvider;

    public TopicItemPresenterFactory_Factory(Provider<Boolean> provider, Provider<ActivityStarter> provider2, Provider<IFollowButtonHandlerFactory> provider3, Provider<AnalyticsModel> provider4) {
        this.onboardingModeProvider = provider;
        this.activityStarterProvider = provider2;
        this.followButtonHandlerFactoryProvider = provider3;
        this.analyticsModelProvider = provider4;
    }

    @Override // javax.inject.Provider
    public TopicItemPresenterFactory get() {
        return new TopicItemPresenterFactory(this.onboardingModeProvider, this.activityStarterProvider, this.followButtonHandlerFactoryProvider, this.analyticsModelProvider);
    }

    public static TopicItemPresenterFactory_Factory create(Provider<Boolean> provider, Provider<ActivityStarter> provider2, Provider<IFollowButtonHandlerFactory> provider3, Provider<AnalyticsModel> provider4) {
        return new TopicItemPresenterFactory_Factory(provider, provider2, provider3, provider4);
    }
}
