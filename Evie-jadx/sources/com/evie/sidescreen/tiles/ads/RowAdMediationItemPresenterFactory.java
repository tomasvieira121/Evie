package com.evie.sidescreen.tiles.ads;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import java.util.Map;
import javax.inject.Provider;
import org.schema.evie.ads.AbstractC1484Ad;

/* JADX INFO: loaded from: classes.dex */
public final class RowAdMediationItemPresenterFactory {
    private final Provider<Map<String, AdTilePresenterFactory>> adTilePresenterFactoriesProvider;
    private final Provider<Map<String, AdUnitPool>> adUnitPoolsProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;

    public RowAdMediationItemPresenterFactory(Provider<Map<String, AdUnitPool>> provider, Provider<Map<String, AdTilePresenterFactory>> provider2, Provider<AnalyticsModel> provider3) {
        this.adUnitPoolsProvider = (Provider) checkNotNull(provider, 1);
        this.adTilePresenterFactoriesProvider = (Provider) checkNotNull(provider2, 2);
        this.analyticsModelProvider = (Provider) checkNotNull(provider3, 3);
    }

    public RowAdMediationItemPresenter create(SideScreenContentTile sideScreenContentTile, AbstractC1484Ad abstractC1484Ad, ScreenInfo screenInfo) {
        return new RowAdMediationItemPresenter((SideScreenContentTile) checkNotNull(sideScreenContentTile, 1), (AbstractC1484Ad) checkNotNull(abstractC1484Ad, 2), (ScreenInfo) checkNotNull(screenInfo, 3), (Map) checkNotNull(this.adUnitPoolsProvider.get(), 4), (Map) checkNotNull(this.adTilePresenterFactoriesProvider.get(), 5), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
