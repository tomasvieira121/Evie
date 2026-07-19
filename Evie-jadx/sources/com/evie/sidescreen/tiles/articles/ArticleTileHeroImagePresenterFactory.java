package com.evie.sidescreen.tiles.articles;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import javax.inject.Provider;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroImagePresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;

    public ArticleTileHeroImagePresenterFactory(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<PopupImageViewerPresenterFactory> provider3) {
        this.activityStarterProvider = (Provider) checkNotNull(provider, 1);
        this.analyticsModelProvider = (Provider) checkNotNull(provider2, 2);
        this.popupImageViewerPresenterFactoryProvider = (Provider) checkNotNull(provider3, 3);
    }

    public ArticleTileHeroImagePresenter create(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo) {
        return new ArticleTileHeroImagePresenter((SideScreenContentTile) checkNotNull(sideScreenContentTile, 1), (NewsArticle) checkNotNull(newsArticle, 2), (ScreenInfo) checkNotNull(screenInfo, 3), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 4), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 5), (PopupImageViewerPresenterFactory) checkNotNull(this.popupImageViewerPresenterFactoryProvider.get(), 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
