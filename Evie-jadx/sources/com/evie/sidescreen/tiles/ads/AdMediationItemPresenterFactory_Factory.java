package com.evie.sidescreen.tiles.ads;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class AdMediationItemPresenterFactory_Factory implements Factory<AdMediationItemPresenterFactory> {
    private final Provider<HeroAdMediationItemPresenterFactory> heroAdMediationItemPresenterFactoryProvider;
    private final Provider<RowAdMediationItemPresenterFactory> rowAdMediationItemPresenterFactoryProvider;

    public AdMediationItemPresenterFactory_Factory(Provider<HeroAdMediationItemPresenterFactory> provider, Provider<RowAdMediationItemPresenterFactory> provider2) {
        this.heroAdMediationItemPresenterFactoryProvider = provider;
        this.rowAdMediationItemPresenterFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public AdMediationItemPresenterFactory get() {
        return new AdMediationItemPresenterFactory(this.heroAdMediationItemPresenterFactoryProvider.get(), this.rowAdMediationItemPresenterFactoryProvider.get());
    }

    public static AdMediationItemPresenterFactory_Factory create(Provider<HeroAdMediationItemPresenterFactory> provider, Provider<RowAdMediationItemPresenterFactory> provider2) {
        return new AdMediationItemPresenterFactory_Factory(provider, provider2);
    }
}
