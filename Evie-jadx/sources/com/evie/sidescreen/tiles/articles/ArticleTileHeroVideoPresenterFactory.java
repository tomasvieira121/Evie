package com.evie.sidescreen.tiles.articles;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerPresenterFactory;
import io.reactivex.Observable;
import javax.inject.Provider;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroVideoPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Observable<Boolean>> autoPlayObservableProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<ExoPlayerObservable> playerProvider;
    private final Provider<PopupVideoViewerPresenterFactory> popupVideoViewerPresenterFactoryProvider;
    private final Provider<VideoFocusHandler> videoFocusHandlerProvider;

    public ArticleTileHeroVideoPresenterFactory(Provider<ActivityStarter> provider, Provider<ExoPlayerObservable> provider2, Provider<VideoFocusHandler> provider3, Provider<AnalyticsModel> provider4, Provider<LifecycleCallbacks> provider5, Provider<PopupVideoViewerPresenterFactory> provider6, Provider<Observable<Boolean>> provider7) {
        this.activityStarterProvider = (Provider) checkNotNull(provider, 1);
        this.playerProvider = (Provider) checkNotNull(provider2, 2);
        this.videoFocusHandlerProvider = (Provider) checkNotNull(provider3, 3);
        this.analyticsModelProvider = (Provider) checkNotNull(provider4, 4);
        this.lifecycleCallbacksProvider = (Provider) checkNotNull(provider5, 5);
        this.popupVideoViewerPresenterFactoryProvider = (Provider) checkNotNull(provider6, 6);
        this.autoPlayObservableProvider = (Provider) checkNotNull(provider7, 7);
    }

    public ArticleTileHeroVideoPresenter create(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo) {
        return new ArticleTileHeroVideoPresenter((SideScreenContentTile) checkNotNull(sideScreenContentTile, 1), (NewsArticle) checkNotNull(newsArticle, 2), (ScreenInfo) checkNotNull(screenInfo, 3), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 4), (ExoPlayerObservable) checkNotNull(this.playerProvider.get(), 5), (VideoFocusHandler) checkNotNull(this.videoFocusHandlerProvider.get(), 6), (AnalyticsModel) checkNotNull(this.analyticsModelProvider.get(), 7), (LifecycleCallbacks) checkNotNull(this.lifecycleCallbacksProvider.get(), 8), (PopupVideoViewerPresenterFactory) checkNotNull(this.popupVideoViewerPresenterFactoryProvider.get(), 9), (Observable) checkNotNull(this.autoPlayObservableProvider.get(), 10));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
