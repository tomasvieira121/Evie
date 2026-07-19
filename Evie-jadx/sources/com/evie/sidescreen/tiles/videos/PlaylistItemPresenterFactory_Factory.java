package com.evie.sidescreen.tiles.videos;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PlaylistItemPresenterFactory_Factory implements Factory<PlaylistItemPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;

    public PlaylistItemPresenterFactory_Factory(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2) {
        this.activityStarterProvider = provider;
        this.analyticsModelProvider = provider2;
    }

    @Override // javax.inject.Provider
    public PlaylistItemPresenterFactory get() {
        return new PlaylistItemPresenterFactory(this.activityStarterProvider, this.analyticsModelProvider);
    }

    public static PlaylistItemPresenterFactory_Factory create(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2) {
        return new PlaylistItemPresenterFactory_Factory(provider, provider2);
    }
}
