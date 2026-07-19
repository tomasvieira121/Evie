package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroYouTubePreviewPresenterFactory_Factory implements Factory<ArticleTileHeroYouTubePreviewPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;

    public ArticleTileHeroYouTubePreviewPresenterFactory_Factory(Provider<ActivityStarter> provider, Provider<Context> provider2, Provider<AnalyticsModel> provider3) {
        this.activityStarterProvider = provider;
        this.contextProvider = provider2;
        this.analyticsModelProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ArticleTileHeroYouTubePreviewPresenterFactory get() {
        return new ArticleTileHeroYouTubePreviewPresenterFactory(this.activityStarterProvider, this.contextProvider, this.analyticsModelProvider);
    }

    public static ArticleTileHeroYouTubePreviewPresenterFactory_Factory create(Provider<ActivityStarter> provider, Provider<Context> provider2, Provider<AnalyticsModel> provider3) {
        return new ArticleTileHeroYouTubePreviewPresenterFactory_Factory(provider, provider2, provider3);
    }
}
