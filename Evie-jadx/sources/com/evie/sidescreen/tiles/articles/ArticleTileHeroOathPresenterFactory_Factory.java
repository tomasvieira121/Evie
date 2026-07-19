package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.oathplayer.OathPlayerObservable;
import dagger.internal.Factory;
import io.reactivex.Observable;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTileHeroOathPresenterFactory_Factory implements Factory<ArticleTileHeroOathPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<AnalyticsModel> analyticsModelProvider;
    private final Provider<Context> contextProvider;
    private final Provider<Observable<Boolean>> localAutoPlaySettingProvider;
    private final Provider<OathPlayerObservable> oathPlayerObservableProvider;
    private final Provider<VideoFocusHandler> videoFocusHandlerProvider;

    public ArticleTileHeroOathPresenterFactory_Factory(Provider<ActivityStarter> provider, Provider<Context> provider2, Provider<AnalyticsModel> provider3, Provider<OathPlayerObservable> provider4, Provider<VideoFocusHandler> provider5, Provider<Observable<Boolean>> provider6) {
        this.activityStarterProvider = provider;
        this.contextProvider = provider2;
        this.analyticsModelProvider = provider3;
        this.oathPlayerObservableProvider = provider4;
        this.videoFocusHandlerProvider = provider5;
        this.localAutoPlaySettingProvider = provider6;
    }

    @Override // javax.inject.Provider
    public ArticleTileHeroOathPresenterFactory get() {
        return new ArticleTileHeroOathPresenterFactory(this.activityStarterProvider, this.contextProvider, this.analyticsModelProvider, this.oathPlayerObservableProvider, this.videoFocusHandlerProvider, this.localAutoPlaySettingProvider);
    }

    public static ArticleTileHeroOathPresenterFactory_Factory create(Provider<ActivityStarter> provider, Provider<Context> provider2, Provider<AnalyticsModel> provider3, Provider<OathPlayerObservable> provider4, Provider<VideoFocusHandler> provider5, Provider<Observable<Boolean>> provider6) {
        return new ArticleTileHeroOathPresenterFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6);
    }
}
