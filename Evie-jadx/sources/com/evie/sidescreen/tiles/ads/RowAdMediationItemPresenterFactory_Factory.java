package com.evie.sidescreen.tiles.ads;

import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import java.util.Map;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class RowAdMediationItemPresenterFactory_Factory implements Factory<RowAdMediationItemPresenterFactory> {
    private final Provider<Map<String, AdTilePresenterFactory>> adTilePresenterFactoriesProvider;
    private final Provider<Map<String, AdUnitPool>> adUnitPoolsProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;

    public RowAdMediationItemPresenterFactory_Factory(Provider<Map<String, AdUnitPool>> provider, Provider<Map<String, AdTilePresenterFactory>> provider2, Provider<AnalyticsModel> provider3) {
        this.adUnitPoolsProvider = provider;
        this.adTilePresenterFactoriesProvider = provider2;
        this.analyticsModelProvider = provider3;
    }

    @Override // javax.inject.Provider
    public RowAdMediationItemPresenterFactory get() {
        return new RowAdMediationItemPresenterFactory(this.adUnitPoolsProvider, this.adTilePresenterFactoriesProvider, this.analyticsModelProvider);
    }

    public static RowAdMediationItemPresenterFactory_Factory create(Provider<Map<String, AdUnitPool>> provider, Provider<Map<String, AdTilePresenterFactory>> provider2, Provider<AnalyticsModel> provider3) {
        return new RowAdMediationItemPresenterFactory_Factory(provider, provider2, provider3);
    }
}
