package com.evie.sidescreen;

import android.content.Context;
import com.evie.sidescreen.mvp.LifecycleAwareMvpRecyclerAdapter;
import com.evie.sidescreen.searchbar.SearchBarPresenterFactory;
import com.evie.sidescreen.searchbar.WhiteSearchBarBackgroundModelFactory;
import com.evie.sidescreen.weather.WeatherPresenter;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenView_Factory implements Factory<SideScreenView> {
    private final Provider<LifecycleAwareMvpRecyclerAdapter> adapterProvider;
    private final Provider<Context> contextProvider;
    private final Provider<Boolean> isFullscreenProvider;
    private final Provider<Boolean> isRtlProvider;
    private final Provider<SideScreenPresenter> presenterProvider;
    private final Provider<WhiteSearchBarBackgroundModelFactory> searchBarBackgroundModelFactoryProvider;
    private final Provider<SearchBarPresenterFactory> searchBarPresenterFactoryProvider;
    private final Provider<Boolean> searchEnabledProvider;
    private final Provider<SideScreenConfiguration> sideScreenConfigurationProvider;
    private final Provider<WeatherPresenter> weatherPresenterProvider;

    public SideScreenView_Factory(Provider<SideScreenPresenter> provider, Provider<Context> provider2, Provider<WeatherPresenter> provider3, Provider<Boolean> provider4, Provider<Boolean> provider5, Provider<Boolean> provider6, Provider<WhiteSearchBarBackgroundModelFactory> provider7, Provider<SearchBarPresenterFactory> provider8, Provider<LifecycleAwareMvpRecyclerAdapter> provider9, Provider<SideScreenConfiguration> provider10) {
        this.presenterProvider = provider;
        this.contextProvider = provider2;
        this.weatherPresenterProvider = provider3;
        this.isRtlProvider = provider4;
        this.searchEnabledProvider = provider5;
        this.isFullscreenProvider = provider6;
        this.searchBarBackgroundModelFactoryProvider = provider7;
        this.searchBarPresenterFactoryProvider = provider8;
        this.adapterProvider = provider9;
        this.sideScreenConfigurationProvider = provider10;
    }

    @Override // javax.inject.Provider
    public SideScreenView get() {
        return new SideScreenView(this.presenterProvider.get(), this.contextProvider.get(), this.weatherPresenterProvider.get(), this.isRtlProvider.get().booleanValue(), this.searchEnabledProvider.get().booleanValue(), this.isFullscreenProvider.get().booleanValue(), this.searchBarBackgroundModelFactoryProvider.get(), this.searchBarPresenterFactoryProvider.get(), this.adapterProvider.get(), this.sideScreenConfigurationProvider.get());
    }

    public static SideScreenView_Factory create(Provider<SideScreenPresenter> provider, Provider<Context> provider2, Provider<WeatherPresenter> provider3, Provider<Boolean> provider4, Provider<Boolean> provider5, Provider<Boolean> provider6, Provider<WhiteSearchBarBackgroundModelFactory> provider7, Provider<SearchBarPresenterFactory> provider8, Provider<LifecycleAwareMvpRecyclerAdapter> provider9, Provider<SideScreenConfiguration> provider10) {
        return new SideScreenView_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }
}
