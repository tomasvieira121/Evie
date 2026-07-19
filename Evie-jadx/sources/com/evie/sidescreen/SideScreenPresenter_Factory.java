package com.evie.sidescreen;

import com.evie.models.announcement.AnnouncementModel;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.AbTestConfigurationModel;
import com.evie.sidescreen.background.BackgroundModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenPresenter_Factory implements Factory<SideScreenPresenter> {
    private final Provider<AbTestConfigurationModel> abTestConfigurationModelProvider;
    private final Provider<ActivationModel> activationModelProvider;
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnnouncementModel> announcementModelProvider;
    private final Provider<BackgroundModel> backgroundModelProvider;
    private final Provider<LayerStack> layerStackProvider;
    private final Provider<SideScreenConfiguration> sideScreenConfigurationProvider;
    private final Provider<SideScreenSharedPreferencesModel> sideScreenSharedPreferencesModelProvider;
    private final Provider<TabsModelFactory> tabsModelFactoryProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public SideScreenPresenter_Factory(Provider<BackgroundModel> provider, Provider<AbTestConfigurationModel> provider2, Provider<LayerStack> provider3, Provider<AnnouncementModel> provider4, Provider<SideScreenSharedPreferencesModel> provider5, Provider<TopicsModel> provider6, Provider<ActivationModel> provider7, Provider<ActivityStarter> provider8, Provider<SideScreenConfiguration> provider9, Provider<TabsModelFactory> provider10) {
        this.backgroundModelProvider = provider;
        this.abTestConfigurationModelProvider = provider2;
        this.layerStackProvider = provider3;
        this.announcementModelProvider = provider4;
        this.sideScreenSharedPreferencesModelProvider = provider5;
        this.topicsModelProvider = provider6;
        this.activationModelProvider = provider7;
        this.activityStarterProvider = provider8;
        this.sideScreenConfigurationProvider = provider9;
        this.tabsModelFactoryProvider = provider10;
    }

    @Override // javax.inject.Provider
    public SideScreenPresenter get() {
        return new SideScreenPresenter(this.backgroundModelProvider.get(), this.abTestConfigurationModelProvider.get(), this.layerStackProvider.get(), this.announcementModelProvider.get(), this.sideScreenSharedPreferencesModelProvider.get(), this.topicsModelProvider.get(), this.activationModelProvider.get(), this.activityStarterProvider.get(), this.sideScreenConfigurationProvider.get(), this.tabsModelFactoryProvider.get());
    }

    public static SideScreenPresenter_Factory create(Provider<BackgroundModel> provider, Provider<AbTestConfigurationModel> provider2, Provider<LayerStack> provider3, Provider<AnnouncementModel> provider4, Provider<SideScreenSharedPreferencesModel> provider5, Provider<TopicsModel> provider6, Provider<ActivationModel> provider7, Provider<ActivityStarter> provider8, Provider<SideScreenConfiguration> provider9, Provider<TabsModelFactory> provider10) {
        return new SideScreenPresenter_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }
}
