package com.evie.sidescreen.tiles.yelp;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import javax.inject.Provider;
import org.schema.evie.yelp.YelpAd;

/* JADX INFO: loaded from: classes.dex */
public final class YelpSingleBusinessHeroPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<LocationHandler> locationHandlerProvider;

    public YelpSingleBusinessHeroPresenterFactory(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<LocationHandler> provider3) {
        this.activityStarterProvider = (Provider) checkNotNull(provider, 1);
        this.analyticsModelProvider = (Provider) checkNotNull(provider2, 2);
        this.locationHandlerProvider = (Provider) checkNotNull(provider3, 3);
    }

    public YelpSingleBusinessHeroPresenter create(YelpAd yelpAd, SideScreenContentTile sideScreenContentTile, ScreenInfo screenInfo) {
        return new YelpSingleBusinessHeroPresenter((YelpAd) checkNotNull(yelpAd, 1), (SideScreenContentTile) checkNotNull(sideScreenContentTile, 2), (ScreenInfo) checkNotNull(screenInfo, 3), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 4), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 5), (LocationHandler) checkNotNull(this.locationHandlerProvider.get(), 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
