package com.evie.sidescreen.tiles.header;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.SideScreenConfiguration;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PersonalizeTileHeaderPresenterFactory_Factory implements Factory<PersonalizeTileHeaderPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<SideScreenSharedPreferencesModel> sharedPreferencesModelProvider;
    private final Provider<SideScreenConfiguration> sideScreenConfigurationProvider;

    public PersonalizeTileHeaderPresenterFactory_Factory(Provider<AnalyticsModel> provider, Provider<ActivityStarter> provider2, Provider<SideScreenSharedPreferencesModel> provider3, Provider<SideScreenConfiguration> provider4) {
        this.analyticsModelProvider = provider;
        this.activityStarterProvider = provider2;
        this.sharedPreferencesModelProvider = provider3;
        this.sideScreenConfigurationProvider = provider4;
    }

    @Override // javax.inject.Provider
    public PersonalizeTileHeaderPresenterFactory get() {
        return new PersonalizeTileHeaderPresenterFactory(this.analyticsModelProvider, this.activityStarterProvider, this.sharedPreferencesModelProvider, this.sideScreenConfigurationProvider);
    }

    public static PersonalizeTileHeaderPresenterFactory_Factory create(Provider<AnalyticsModel> provider, Provider<ActivityStarter> provider2, Provider<SideScreenSharedPreferencesModel> provider3, Provider<SideScreenConfiguration> provider4) {
        return new PersonalizeTileHeaderPresenterFactory_Factory(provider, provider2, provider3, provider4);
    }
}
