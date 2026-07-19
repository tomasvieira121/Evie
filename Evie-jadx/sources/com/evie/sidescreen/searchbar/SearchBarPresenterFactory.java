package com.evie.sidescreen.searchbar;

import android.content.Context;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LauncherInfo;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.analytics.AnalyticsModel;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SearchBarPresenterFactory {
    private final Provider<SideScreenDependencies.ActivityOverrides> activityOverridesProvider;
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;
    private final Provider<LauncherInfo> launcherInfoProvider;

    public SearchBarPresenterFactory(Provider<Context> provider, Provider<ActivityStarter> provider2, Provider<LauncherInfo> provider3, Provider<SideScreenDependencies.ActivityOverrides> provider4, Provider<AnalyticsModel> provider5) {
        this.contextProvider = (Provider) checkNotNull(provider, 1);
        this.activityStarterProvider = (Provider) checkNotNull(provider2, 2);
        this.launcherInfoProvider = (Provider) checkNotNull(provider3, 3);
        this.activityOverridesProvider = (Provider) checkNotNull(provider4, 4);
        this.analyticsModelProvider = (Provider) checkNotNull(provider5, 5);
    }

    public SearchBarPresenter create(SearchBarBackgroundModel searchBarBackgroundModel) {
        return new SearchBarPresenter((Context) checkNotNull(this.contextProvider.get(), 1), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 2), (LauncherInfo) checkNotNull(this.launcherInfoProvider.get(), 3), (SideScreenDependencies.ActivityOverrides) checkNotNull(this.activityOverridesProvider.get(), 4), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 5), (SearchBarBackgroundModel) checkNotNull(searchBarBackgroundModel, 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
