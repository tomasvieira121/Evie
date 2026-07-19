package com.evie.sidescreen.tiles.yelp;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class YelpMultipleBusinessPresenterFactory_Factory implements Factory<YelpMultipleBusinessPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<YelpSingleBusinessPresenterFactory> presenterFactoryProvider;

    public YelpMultipleBusinessPresenterFactory_Factory(Provider<YelpSingleBusinessPresenterFactory> provider, Provider<AnalyticsModel> provider2, Provider<ActivityStarter> provider3) {
        this.presenterFactoryProvider = provider;
        this.analyticsModelProvider = provider2;
        this.activityStarterProvider = provider3;
    }

    @Override // javax.inject.Provider
    public YelpMultipleBusinessPresenterFactory get() {
        return new YelpMultipleBusinessPresenterFactory(this.presenterFactoryProvider, this.analyticsModelProvider, this.activityStarterProvider);
    }

    public static YelpMultipleBusinessPresenterFactory_Factory create(Provider<YelpSingleBusinessPresenterFactory> provider, Provider<AnalyticsModel> provider2, Provider<ActivityStarter> provider3) {
        return new YelpMultipleBusinessPresenterFactory_Factory(provider, provider2, provider3);
    }
}
