package com.evie.sidescreen.tiles;

import com.evie.sidescreen.tiles.articles.ArticleSeedPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTilePresenterFactory;
import com.evie.sidescreen.tiles.articles.RelatedArticlePresenterFactory;
import com.evie.sidescreen.tiles.recommended.RecommendedPresenterFactory;
import com.evie.sidescreen.tiles.videos.PlaylistItemPresenterFactory;
import com.evie.sidescreen.tiles.videos.VideoSeedPresenterFactory;
import com.evie.sidescreen.tiles.yelp.YelpPresenterFactory;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class NonAdTilePresenterFactory_Factory implements Factory<NonAdTilePresenterFactory> {
    private final Provider<ArticleSeedPresenterFactory> articleSeedPresenterFactoryProvider;
    private final Provider<ArticleTilePresenterFactory> articleTilePresenterFactoryProvider;
    private final Provider<PlaylistItemPresenterFactory> playlistItemPresenterFactoryProvider;
    private final Provider<RecommendedPresenterFactory> recommendedPresenterFactoryProvider;
    private final Provider<RelatedArticlePresenterFactory> relatedArticlePresenterFactoryProvider;
    private final Provider<VideoSeedPresenterFactory> videoSeedPresenterFactoryProvider;
    private final Provider<YelpPresenterFactory> yelpPresenterFactoryProvider;

    public NonAdTilePresenterFactory_Factory(Provider<ArticleTilePresenterFactory> provider, Provider<RecommendedPresenterFactory> provider2, Provider<PlaylistItemPresenterFactory> provider3, Provider<RelatedArticlePresenterFactory> provider4, Provider<ArticleSeedPresenterFactory> provider5, Provider<VideoSeedPresenterFactory> provider6, Provider<YelpPresenterFactory> provider7) {
        this.articleTilePresenterFactoryProvider = provider;
        this.recommendedPresenterFactoryProvider = provider2;
        this.playlistItemPresenterFactoryProvider = provider3;
        this.relatedArticlePresenterFactoryProvider = provider4;
        this.articleSeedPresenterFactoryProvider = provider5;
        this.videoSeedPresenterFactoryProvider = provider6;
        this.yelpPresenterFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public NonAdTilePresenterFactory get() {
        return new NonAdTilePresenterFactory(this.articleTilePresenterFactoryProvider.get(), this.recommendedPresenterFactoryProvider.get(), this.playlistItemPresenterFactoryProvider.get(), this.relatedArticlePresenterFactoryProvider.get(), this.articleSeedPresenterFactoryProvider.get(), this.videoSeedPresenterFactoryProvider.get(), this.yelpPresenterFactoryProvider.get());
    }

    public static NonAdTilePresenterFactory_Factory create(Provider<ArticleTilePresenterFactory> provider, Provider<RecommendedPresenterFactory> provider2, Provider<PlaylistItemPresenterFactory> provider3, Provider<RelatedArticlePresenterFactory> provider4, Provider<ArticleSeedPresenterFactory> provider5, Provider<VideoSeedPresenterFactory> provider6, Provider<YelpPresenterFactory> provider7) {
        return new NonAdTilePresenterFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }
}
