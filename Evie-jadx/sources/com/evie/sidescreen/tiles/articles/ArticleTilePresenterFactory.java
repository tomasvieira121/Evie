package com.evie.sidescreen.tiles.articles;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.TilePresenter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.schema.NewsArticle;
import org.schema.VideoObject;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTilePresenterFactory {
    private final ArticleTileHeroCaptionPresenterFactory mArticleTileHeroCaptionPresenterFactory;
    private final ArticleTileHeroImagePresenterFactory mArticleTileHeroImagePresenterFactory;
    private final ArticleTileHeroOathPresenterFactory mArticleTileHeroOathPresenterFactory;
    private final ArticleTileHeroVideoPresenterFactory mArticleTileHeroVideoPresenterFactory;
    private final ArticleTileHeroYouTubePreviewPresenterFactory mArticleTileHeroYouTubePreviewPresenterFactory;
    private final ArticleTileRowPresenterFactory mArticleTileRowPresenterFactory;

    public ArticleTilePresenterFactory(ArticleTileHeroCaptionPresenterFactory articleTileHeroCaptionPresenterFactory, ArticleTileHeroVideoPresenterFactory articleTileHeroVideoPresenterFactory, ArticleTileHeroYouTubePreviewPresenterFactory articleTileHeroYouTubePreviewPresenterFactory, ArticleTileHeroOathPresenterFactory articleTileHeroOathPresenterFactory, ArticleTileRowPresenterFactory articleTileRowPresenterFactory, ArticleTileHeroImagePresenterFactory articleTileHeroImagePresenterFactory) {
        this.mArticleTileHeroCaptionPresenterFactory = articleTileHeroCaptionPresenterFactory;
        this.mArticleTileHeroVideoPresenterFactory = articleTileHeroVideoPresenterFactory;
        this.mArticleTileHeroYouTubePreviewPresenterFactory = articleTileHeroYouTubePreviewPresenterFactory;
        this.mArticleTileHeroOathPresenterFactory = articleTileHeroOathPresenterFactory;
        this.mArticleTileRowPresenterFactory = articleTileRowPresenterFactory;
        this.mArticleTileHeroImagePresenterFactory = articleTileHeroImagePresenterFactory;
    }

    public List<TilePresenter<?>> create(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo) {
        switch (sideScreenContentTile.getType()) {
            case HERO:
                ArrayList arrayList = new ArrayList(2);
                List<VideoObject> video = newsArticle.getVideo();
                arrayList.add(this.mArticleTileHeroCaptionPresenterFactory.create(sideScreenContentTile, newsArticle, screenInfo));
                VideoObject videoObject = video.size() > 0 ? video.get(0) : null;
                if (videoObject != null) {
                    if (videoObject.isYouTube()) {
                        arrayList.add(this.mArticleTileHeroYouTubePreviewPresenterFactory.create(sideScreenContentTile, newsArticle, screenInfo));
                    } else if (videoObject.isOath()) {
                        arrayList.add(this.mArticleTileHeroOathPresenterFactory.create(sideScreenContentTile, newsArticle, screenInfo));
                    } else {
                        arrayList.add(this.mArticleTileHeroVideoPresenterFactory.create(sideScreenContentTile, newsArticle, screenInfo));
                    }
                    ((ArticleTileHeroCaptionPresenter) arrayList.get(0)).setContentPresenter((TilePresenter) arrayList.get(1));
                } else {
                    arrayList.add(this.mArticleTileHeroImagePresenterFactory.create(sideScreenContentTile, newsArticle, screenInfo));
                    ((ArticleTileHeroCaptionPresenter) arrayList.get(0)).setContentPresenter((TilePresenter) arrayList.get(1));
                }
                return arrayList;
            case ROW:
                return Collections.singletonList(this.mArticleTileRowPresenterFactory.create(sideScreenContentTile, newsArticle, screenInfo));
            default:
                return Collections.emptyList();
        }
    }
}
