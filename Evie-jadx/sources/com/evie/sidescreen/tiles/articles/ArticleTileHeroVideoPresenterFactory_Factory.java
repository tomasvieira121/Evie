package com.evie.sidescreen.tiles.articles;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.tiles.imageviewer.PopupVideoViewerPresenterFactory;
import dagger.internal.Factory;
import io.reactivex.Observable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroVideoPresenterFactory_Factory implements Factory<ArticleTileHeroVideoPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Observable<Boolean>> autoPlayObservableProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<ExoPlayerObservable> playerProvider;
    private final Provider<PopupVideoViewerPresenterFactory> popupVideoViewerPresenterFactoryProvider;
    private final Provider<VideoFocusHandler> videoFocusHandlerProvider;

    public ArticleTileHeroVideoPresenterFactory_Factory(Provider<ActivityStarter> provider, Provider<ExoPlayerObservable> provider2, Provider<VideoFocusHandler> provider3, Provider<AnalyticsModel> provider4, Provider<LifecycleCallbacks> provider5, Provider<PopupVideoViewerPresenterFactory> provider6, Provider<Observable<Boolean>> provider7) {
        this.activityStarterProvider = provider;
        this.playerProvider = provider2;
        this.videoFocusHandlerProvider = provider3;
        this.analyticsModelProvider = provider4;
        this.lifecycleCallbacksProvider = provider5;
        this.popupVideoViewerPresenterFactoryProvider = provider6;
        this.autoPlayObservableProvider = provider7;
    }

    @Override // javax.inject.Provider
    public ArticleTileHeroVideoPresenterFactory get() {
        return new ArticleTileHeroVideoPresenterFactory(this.activityStarterProvider, this.playerProvider, this.videoFocusHandlerProvider, this.analyticsModelProvider, this.lifecycleCallbacksProvider, this.popupVideoViewerPresenterFactoryProvider, this.autoPlayObservableProvider);
    }

    public static ArticleTileHeroVideoPresenterFactory_Factory create(Provider<ActivityStarter> provider, Provider<ExoPlayerObservable> provider2, Provider<VideoFocusHandler> provider3, Provider<AnalyticsModel> provider4, Provider<LifecycleCallbacks> provider5, Provider<PopupVideoViewerPresenterFactory> provider6, Provider<Observable<Boolean>> provider7) {
        return new ArticleTileHeroVideoPresenterFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }
}
