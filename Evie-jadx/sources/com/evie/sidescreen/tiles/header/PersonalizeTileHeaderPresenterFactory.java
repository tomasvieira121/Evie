package com.evie.sidescreen.tiles.header;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.SideScreenConfiguration;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import io.reactivex.Observable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PersonalizeTileHeaderPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<SideScreenSharedPreferencesModel> sharedPreferencesModelProvider;
    private final Provider<SideScreenConfiguration> sideScreenConfigurationProvider;

    public PersonalizeTileHeaderPresenterFactory(Provider<AnalyticsModel> provider, Provider<ActivityStarter> provider2, Provider<SideScreenSharedPreferencesModel> provider3, Provider<SideScreenConfiguration> provider4) {
        this.analyticsModelProvider = (Provider) checkNotNull(provider, 1);
        this.activityStarterProvider = (Provider) checkNotNull(provider2, 2);
        this.sharedPreferencesModelProvider = (Provider) checkNotNull(provider3, 3);
        this.sideScreenConfigurationProvider = (Provider) checkNotNull(provider4, 4);
    }

    public PersonalizeTileHeaderPresenter create(Observable<Boolean> observable) {
        return new PersonalizeTileHeaderPresenter((Observable) checkNotNull(observable, 1), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 2), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 3), (SideScreenSharedPreferencesModel) checkNotNull(this.sharedPreferencesModelProvider.get(), 4), (SideScreenConfiguration) checkNotNull(this.sideScreenConfigurationProvider.get(), 5));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
