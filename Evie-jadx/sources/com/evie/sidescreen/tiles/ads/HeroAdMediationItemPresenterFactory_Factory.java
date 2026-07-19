package com.evie.sidescreen.tiles.ads;

import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import java.util.Map;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class HeroAdMediationItemPresenterFactory_Factory implements Factory<HeroAdMediationItemPresenterFactory> {
    private final Provider<Map<String, AdTilePresenterFactory>> adTilePresenterFactoriesProvider;
    private final Provider<Map<String, AdUnitPool>> adUnitPoolsProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;

    public HeroAdMediationItemPresenterFactory_Factory(Provider<Map<String, AdUnitPool>> provider, Provider<Map<String, AdTilePresenterFactory>> provider2, Provider<AnalyticsModel> provider3) {
        this.adUnitPoolsProvider = provider;
        this.adTilePresenterFactoriesProvider = provider2;
        this.analyticsModelProvider = provider3;
    }

    @Override // javax.inject.Provider
    public HeroAdMediationItemPresenterFactory get() {
        return new HeroAdMediationItemPresenterFactory(this.adUnitPoolsProvider, this.adTilePresenterFactoriesProvider, this.analyticsModelProvider);
    }

    public static HeroAdMediationItemPresenterFactory_Factory create(Provider<Map<String, AdUnitPool>> provider, Provider<Map<String, AdTilePresenterFactory>> provider2, Provider<AnalyticsModel> provider3) {
        return new HeroAdMediationItemPresenterFactory_Factory(provider, provider2, provider3);
    }
}
