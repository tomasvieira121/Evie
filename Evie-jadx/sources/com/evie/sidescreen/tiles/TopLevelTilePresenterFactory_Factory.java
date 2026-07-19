package com.evie.sidescreen.tiles;

import com.evie.sidescreen.tiles.ads.AdMediationItemPresenterFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopLevelTilePresenterFactory_Factory implements Factory<TopLevelTilePresenterFactory> {
    private final Provider<AdMediationItemPresenterFactory> adTilePresenterFactoriesProvider;
    private final Provider<NonAdTilePresenterFactory> nonAdTilePresenterFactoryProvider;

    public TopLevelTilePresenterFactory_Factory(Provider<NonAdTilePresenterFactory> provider, Provider<AdMediationItemPresenterFactory> provider2) {
        this.nonAdTilePresenterFactoryProvider = provider;
        this.adTilePresenterFactoriesProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TopLevelTilePresenterFactory get() {
        return new TopLevelTilePresenterFactory(this.nonAdTilePresenterFactoryProvider.get(), this.adTilePresenterFactoriesProvider.get());
    }

    public static TopLevelTilePresenterFactory_Factory create(Provider<NonAdTilePresenterFactory> provider, Provider<AdMediationItemPresenterFactory> provider2) {
        return new TopLevelTilePresenterFactory_Factory(provider, provider2);
    }
}
