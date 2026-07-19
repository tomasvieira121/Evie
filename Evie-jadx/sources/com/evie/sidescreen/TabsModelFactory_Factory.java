package com.evie.sidescreen;

import com.evie.models.sidescreen.SideScreenContentTabModelFactory;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TabsModelFactory_Factory implements Factory<TabsModelFactory> {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<SideScreenGenericTabSectionModelFactory> genericTabModelFactoryProvider;
    private final Provider<SideScreenMainTabSectionModelFactory> mainTabModelFactoryProvider;
    private final Provider<SideScreenConfigurationModel> sideScreenConfigurationModelProvider;
    private final Provider<SideScreenContentTabModelFactory> tabContentModelFactoryProvider;

    public TabsModelFactory_Factory(Provider<AnalyticsModel> provider, Provider<SideScreenConfigurationModel> provider2, Provider<SideScreenMainTabSectionModelFactory> provider3, Provider<SideScreenGenericTabSectionModelFactory> provider4, Provider<SideScreenContentTabModelFactory> provider5) {
        this.analyticsModelProvider = provider;
        this.sideScreenConfigurationModelProvider = provider2;
        this.mainTabModelFactoryProvider = provider3;
        this.genericTabModelFactoryProvider = provider4;
        this.tabContentModelFactoryProvider = provider5;
    }

    @Override // javax.inject.Provider
    public TabsModelFactory get() {
        return new TabsModelFactory(this.analyticsModelProvider, this.sideScreenConfigurationModelProvider, this.mainTabModelFactoryProvider, this.genericTabModelFactoryProvider, this.tabContentModelFactoryProvider);
    }

    public static TabsModelFactory_Factory create(Provider<AnalyticsModel> provider, Provider<SideScreenConfigurationModel> provider2, Provider<SideScreenMainTabSectionModelFactory> provider3, Provider<SideScreenGenericTabSectionModelFactory> provider4, Provider<SideScreenContentTabModelFactory> provider5) {
        return new TabsModelFactory_Factory(provider, provider2, provider3, provider4, provider5);
    }
}
