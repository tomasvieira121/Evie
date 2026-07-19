package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import javax.inject.Provider;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroYouTubePreviewPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;

    public ArticleTileHeroYouTubePreviewPresenterFactory(Provider<ActivityStarter> provider, Provider<Context> provider2, Provider<AnalyticsModel> provider3) {
        this.activityStarterProvider = (Provider) checkNotNull(provider, 1);
        this.contextProvider = (Provider) checkNotNull(provider2, 2);
        this.analyticsModelProvider = (Provider) checkNotNull(provider3, 3);
    }

    public ArticleTileHeroYouTubePreviewPresenter create(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo) {
        return new ArticleTileHeroYouTubePreviewPresenter((SideScreenContentTile) checkNotNull(sideScreenContentTile, 1), (NewsArticle) checkNotNull(newsArticle, 2), (ScreenInfo) checkNotNull(screenInfo, 3), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 4), (Context) checkNotNull(this.contextProvider.get(), 5), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 6));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
