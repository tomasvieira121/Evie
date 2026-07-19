package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import io.reactivex.Observable;
import javax.inject.Provider;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroOathPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;
    private final Provider<Observable<Boolean>> localAutoPlaySettingProvider;
    private final Provider<OathPlayerObservable> oathPlayerObservableProvider;
    private final Provider<VideoFocusHandler> videoFocusHandlerProvider;

    public ArticleTileHeroOathPresenterFactory(Provider<ActivityStarter> provider, Provider<Context> provider2, Provider<AnalyticsModel> provider3, Provider<OathPlayerObservable> provider4, Provider<VideoFocusHandler> provider5, Provider<Observable<Boolean>> provider6) {
        this.activityStarterProvider = (Provider) checkNotNull(provider, 1);
        this.contextProvider = (Provider) checkNotNull(provider2, 2);
        this.analyticsModelProvider = (Provider) checkNotNull(provider3, 3);
        this.oathPlayerObservableProvider = (Provider) checkNotNull(provider4, 4);
        this.videoFocusHandlerProvider = (Provider) checkNotNull(provider5, 5);
        this.localAutoPlaySettingProvider = (Provider) checkNotNull(provider6, 6);
    }

    public ArticleTileHeroOathPresenter create(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo) {
        return new ArticleTileHeroOathPresenter((SideScreenContentTile) checkNotNull(sideScreenContentTile, 1), (NewsArticle) checkNotNull(newsArticle, 2), (ScreenInfo) checkNotNull(screenInfo, 3), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 4), (Context) checkNotNull(this.contextProvider.get(), 5), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 6), (OathPlayerObservable) checkNotNull(this.oathPlayerObservableProvider.get(), 7), (VideoFocusHandler) checkNotNull(this.videoFocusHandlerProvider.get(), 8), this.localAutoPlaySettingProvider.get());
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
