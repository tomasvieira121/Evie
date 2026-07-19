package com.evie.sidescreen.tiles.articles;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ArticleTilePresenterFactory_Factory implements Factory<ArticleTilePresenterFactory> {
    private final Provider<ArticleTileHeroCaptionPresenterFactory> articleTileHeroCaptionPresenterFactoryProvider;
    private final Provider<ArticleTileHeroImagePresenterFactory> articleTileHeroImagePresenterFactoryProvider;
    private final Provider<ArticleTileHeroOathPresenterFactory> articleTileHeroOathPresenterFactoryProvider;
    private final Provider<ArticleTileHeroVideoPresenterFactory> articleTileHeroVideoPresenterFactoryProvider;
    private final Provider<ArticleTileHeroYouTubePreviewPresenterFactory> articleTileHeroYouTubePreviewPresenterFactoryProvider;
    private final Provider<ArticleTileRowPresenterFactory> articleTileRowPresenterFactoryProvider;

    public ArticleTilePresenterFactory_Factory(Provider<ArticleTileHeroCaptionPresenterFactory> provider, Provider<ArticleTileHeroVideoPresenterFactory> provider2, Provider<ArticleTileHeroYouTubePreviewPresenterFactory> provider3, Provider<ArticleTileHeroOathPresenterFactory> provider4, Provider<ArticleTileRowPresenterFactory> provider5, Provider<ArticleTileHeroImagePresenterFactory> provider6) {
        this.articleTileHeroCaptionPresenterFactoryProvider = provider;
        this.articleTileHeroVideoPresenterFactoryProvider = provider2;
        this.articleTileHeroYouTubePreviewPresenterFactoryProvider = provider3;
        this.articleTileHeroOathPresenterFactoryProvider = provider4;
        this.articleTileRowPresenterFactoryProvider = provider5;
        this.articleTileHeroImagePresenterFactoryProvider = provider6;
    }

    @Override // javax.inject.Provider
    public ArticleTilePresenterFactory get() {
        return new ArticleTilePresenterFactory(this.articleTileHeroCaptionPresenterFactoryProvider.get(), this.articleTileHeroVideoPresenterFactoryProvider.get(), this.articleTileHeroYouTubePreviewPresenterFactoryProvider.get(), this.articleTileHeroOathPresenterFactoryProvider.get(), this.articleTileRowPresenterFactoryProvider.get(), this.articleTileHeroImagePresenterFactoryProvider.get());
    }

    public static ArticleTilePresenterFactory_Factory create(Provider<ArticleTileHeroCaptionPresenterFactory> provider, Provider<ArticleTileHeroVideoPresenterFactory> provider2, Provider<ArticleTileHeroYouTubePreviewPresenterFactory> provider3, Provider<ArticleTileHeroOathPresenterFactory> provider4, Provider<ArticleTileRowPresenterFactory> provider5, Provider<ArticleTileHeroImagePresenterFactory> provider6) {
        return new ArticleTilePresenterFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6);
    }
}
