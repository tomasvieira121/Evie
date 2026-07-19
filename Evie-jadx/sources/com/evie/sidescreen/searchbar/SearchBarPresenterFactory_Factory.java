package com.evie.sidescreen.searchbar;

import android.content.Context;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LauncherInfo;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SearchBarPresenterFactory_Factory implements Factory<SearchBarPresenterFactory> {
    private final Provider<SideScreenDependencies.ActivityOverrides> activityOverridesProvider;
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LauncherInfo> launcherInfoProvider;

    public SearchBarPresenterFactory_Factory(Provider<Context> provider, Provider<ActivityStarter> provider2, Provider<LauncherInfo> provider3, Provider<SideScreenDependencies.ActivityOverrides> provider4, Provider<AnalyticsModel> provider5) {
        this.contextProvider = provider;
        this.activityStarterProvider = provider2;
        this.launcherInfoProvider = provider3;
        this.activityOverridesProvider = provider4;
        this.analyticsModelProvider = provider5;
    }

    @Override // javax.inject.Provider
    public SearchBarPresenterFactory get() {
        return new SearchBarPresenterFactory(this.contextProvider, this.activityStarterProvider, this.launcherInfoProvider, this.activityOverridesProvider, this.analyticsModelProvider);
    }

    public static SearchBarPresenterFactory_Factory create(Provider<Context> provider, Provider<ActivityStarter> provider2, Provider<LauncherInfo> provider3, Provider<SideScreenDependencies.ActivityOverrides> provider4, Provider<AnalyticsModel> provider5) {
        return new SearchBarPresenterFactory_Factory(provider, provider2, provider3, provider4, provider5);
    }
}
