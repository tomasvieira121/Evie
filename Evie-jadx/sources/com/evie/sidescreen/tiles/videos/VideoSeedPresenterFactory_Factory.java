package com.evie.sidescreen.tiles.videos;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.tiles.articles.ArticlePopupMenuHelper;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class VideoSeedPresenterFactory_Factory implements Factory<VideoSeedPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<ArticlePopupMenuHelper> articlePopupMenuHelperProvider;
    private final Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;

    public VideoSeedPresenterFactory_Factory(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<ArticlePopupMenuHelper> provider3, Provider<PopupImageViewerPresenterFactory> provider4) {
        this.activityStarterProvider = provider;
        this.analyticsModelProvider = provider2;
        this.articlePopupMenuHelperProvider = provider3;
        this.popupImageViewerPresenterFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public VideoSeedPresenterFactory get() {
        return new VideoSeedPresenterFactory(this.activityStarterProvider, this.analyticsModelProvider, this.articlePopupMenuHelperProvider, this.popupImageViewerPresenterFactoryProvider);
    }

    public static VideoSeedPresenterFactory_Factory create(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<ArticlePopupMenuHelper> provider3, Provider<PopupImageViewerPresenterFactory> provider4) {
        return new VideoSeedPresenterFactory_Factory(provider, provider2, provider3, provider4);
    }
}
