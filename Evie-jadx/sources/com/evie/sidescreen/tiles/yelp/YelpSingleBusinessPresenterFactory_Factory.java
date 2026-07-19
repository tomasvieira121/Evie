package com.evie.sidescreen.tiles.yelp;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class YelpSingleBusinessPresenterFactory_Factory implements Factory<YelpSingleBusinessPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<LocationHandler> locationHandlerProvider;

    public YelpSingleBusinessPresenterFactory_Factory(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<LocationHandler> provider3) {
        this.activityStarterProvider = provider;
        this.analyticsModelProvider = provider2;
        this.locationHandlerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public YelpSingleBusinessPresenterFactory get() {
        return new YelpSingleBusinessPresenterFactory(this.activityStarterProvider, this.analyticsModelProvider, this.locationHandlerProvider);
    }

    public static YelpSingleBusinessPresenterFactory_Factory create(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<LocationHandler> provider3) {
        return new YelpSingleBusinessPresenterFactory_Factory(provider, provider2, provider3);
    }
}
