package com.evie.sidescreen.tiles.articles;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import javax.inject.Provider;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroCaptionPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<ArticlePopupMenuHelper> articlePopupMenuHelperProvider;
    private final Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;

    public ArticleTileHeroCaptionPresenterFactory(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<ArticlePopupMenuHelper> provider3, Provider<PopupImageViewerPresenterFactory> provider4) {
        this.activityStarterProvider = (Provider) checkNotNull(provider, 1);
        this.analyticsModelProvider = (Provider) checkNotNull(provider2, 2);
        this.articlePopupMenuHelperProvider = (Provider) checkNotNull(provider3, 3);
        this.popupImageViewerPresenterFactoryProvider = (Provider) checkNotNull(provider4, 4);
    }

    public ArticleTileHeroCaptionPresenter create(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo) {
        return new ArticleTileHeroCaptionPresenter((SideScreenContentTile) checkNotNull(sideScreenContentTile, 1), (NewsArticle) checkNotNull(newsArticle, 2), (ScreenInfo) checkNotNull(screenInfo, 3), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 4), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 5), (ArticlePopupMenuHelper) checkNotNull(this.articlePopupMenuHelperProvider.get(), 6), (PopupImageViewerPresenterFactory) checkNotNull(this.popupImageViewerPresenterFactoryProvider.get(), 7));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
