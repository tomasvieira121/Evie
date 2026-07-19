package com.evie.sidescreen.tiles.articles;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroImagePresenterFactory_Factory implements Factory<ArticleTileHeroImagePresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<PopupImageViewerPresenterFactory> popupImageViewerPresenterFactoryProvider;

    public ArticleTileHeroImagePresenterFactory_Factory(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<PopupImageViewerPresenterFactory> provider3) {
        this.activityStarterProvider = provider;
        this.analyticsModelProvider = provider2;
        this.popupImageViewerPresenterFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ArticleTileHeroImagePresenterFactory get() {
        return new ArticleTileHeroImagePresenterFactory(this.activityStarterProvider, this.analyticsModelProvider, this.popupImageViewerPresenterFactoryProvider);
    }

    public static ArticleTileHeroImagePresenterFactory_Factory create(Provider<ActivityStarter> provider, Provider<AnalyticsModel> provider2, Provider<PopupImageViewerPresenterFactory> provider3) {
        return new ArticleTileHeroImagePresenterFactory_Factory(provider, provider2, provider3);
    }
}
