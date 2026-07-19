package com.evie.sidescreen;

import com.evie.models.sidescreen.SideScreenContentTabModelFactory;
import com.evie.sidescreen.analytics.AnalyticsModel;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TabsModelFactory {
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<SideScreenGenericTabSectionModelFactory> genericTabModelFactoryProvider;
    private final Provider<SideScreenMainTabSectionModelFactory> mainTabModelFactoryProvider;
    private final Provider<SideScreenConfigurationModel> sideScreenConfigurationModelProvider;
    private final Provider<SideScreenContentTabModelFactory> tabContentModelFactoryProvider;

    public TabsModelFactory(Provider<AnalyticsModel> provider, Provider<SideScreenConfigurationModel> provider2, Provider<SideScreenMainTabSectionModelFactory> provider3, Provider<SideScreenGenericTabSectionModelFactory> provider4, Provider<SideScreenContentTabModelFactory> provider5) {
        this.analyticsModelProvider = (Provider) checkNotNull(provider, 1);
        this.sideScreenConfigurationModelProvider = (Provider) checkNotNull(provider2, 2);
        this.mainTabModelFactoryProvider = (Provider) checkNotNull(provider3, 3);
        this.genericTabModelFactoryProvider = (Provider) checkNotNull(provider4, 4);
        this.tabContentModelFactoryProvider = (Provider) checkNotNull(provider5, 5);
    }

    public TabsModel create(CompositeDisposable compositeDisposable) {
        return new TabsModel((AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 1), (CompositeDisposable) checkNotNull(compositeDisposable, 2), (SideScreenConfigurationModel) checkNotNull(this.sideScreenConfigurationModelProvider.get(), 3), (SideScreenMainTabSectionModelFactory) checkNotNull(this.mainTabModelFactoryProvider.get(), 4), (SideScreenGenericTabSectionModelFactory) checkNotNull(this.genericTabModelFactoryProvider.get(), 5), (SideScreenContentTabModelFactory) checkNotNull(this.tabContentModelFactoryProvider.get(), 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
