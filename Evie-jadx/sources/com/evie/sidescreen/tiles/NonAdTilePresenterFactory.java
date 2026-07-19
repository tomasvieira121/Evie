package com.evie.sidescreen.tiles;

import android.content.Context;
import android.text.TextUtils;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.models.sidescreen.data.TileType;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.articles.ArticleSeedPresenterFactory;
import com.evie.sidescreen.tiles.articles.ArticleTilePresenterFactory;
import com.evie.sidescreen.tiles.articles.RelatedArticlePresenterFactory;
import com.evie.sidescreen.tiles.recommended.RecommendedPresenterFactory;
import com.evie.sidescreen.tiles.videos.PlaylistItemPresenterFactory;
import com.evie.sidescreen.tiles.videos.VideoSeedPresenterFactory;
import com.evie.sidescreen.tiles.yelp.YelpPresenterFactory;
import java.util.ArrayList;
import java.util.List;
import org.schema.NewsArticle;
import org.schema.Thing;
import org.schema.evie.yelp.YelpAd;

/* JADX INFO: loaded from: classes.dex */
public class NonAdTilePresenterFactory {
    private final ArticleSeedPresenterFactory mArticleSeedPresenterFactory;
    private final ArticleTilePresenterFactory mArticleTilePresenterFactory;
    private final PlaylistItemPresenterFactory mPlaylistItemPresenterFactory;
    private final RecommendedPresenterFactory mRecommendedPresenterFactory;
    private final RelatedArticlePresenterFactory mRelatedArticlePresenterFactory;
    private final VideoSeedPresenterFactory mVideoSeedPresenterFactory;
    private final YelpPresenterFactory mYelpPresenterFactory;

    public NonAdTilePresenterFactory(ArticleTilePresenterFactory articleTilePresenterFactory, RecommendedPresenterFactory recommendedPresenterFactory, PlaylistItemPresenterFactory playlistItemPresenterFactory, RelatedArticlePresenterFactory relatedArticlePresenterFactory, ArticleSeedPresenterFactory articleSeedPresenterFactory, VideoSeedPresenterFactory videoSeedPresenterFactory, YelpPresenterFactory yelpPresenterFactory) {
        this.mArticleTilePresenterFactory = articleTilePresenterFactory;
        this.mRecommendedPresenterFactory = recommendedPresenterFactory;
        this.mPlaylistItemPresenterFactory = playlistItemPresenterFactory;
        this.mVideoSeedPresenterFactory = videoSeedPresenterFactory;
        this.mArticleSeedPresenterFactory = articleSeedPresenterFactory;
        this.mRelatedArticlePresenterFactory = relatedArticlePresenterFactory;
        this.mYelpPresenterFactory = yelpPresenterFactory;
    }

    public List<TilePresenter<?>> create(Context context, SideScreenContentTile sideScreenContentTile, Thing thing, Thing thing2, ScreenInfo screenInfo) {
        ArrayList arrayList = new ArrayList(2);
        if (sideScreenContentTile.getType() == null) {
            return arrayList;
        }
        switch (sideScreenContentTile.getType()) {
            case DISCOVERY:
                break;
            case TOPIC_RECOMMENDATION:
                arrayList.add(this.mRecommendedPresenterFactory.create(sideScreenContentTile, screenInfo));
                break;
            default:
                if (thing != null && !TextUtils.isEmpty(thing.getType())) {
                    if (sideScreenContentTile.getType() == TileType.PLAYLIST_ITEM) {
                        arrayList.add(this.mPlaylistItemPresenterFactory.create(sideScreenContentTile, (NewsArticle) thing, screenInfo));
                    } else if (sideScreenContentTile.getType() == TileType.RELATED_ARTICLE) {
                        arrayList.add(this.mRelatedArticlePresenterFactory.create(sideScreenContentTile, (NewsArticle) thing, screenInfo));
                    } else if (sideScreenContentTile.getType() == TileType.ARTICLE_SEED) {
                        arrayList.add(this.mArticleSeedPresenterFactory.create(sideScreenContentTile, (NewsArticle) thing, screenInfo));
                    } else if (sideScreenContentTile.getType() == TileType.VIDEO_SEED) {
                        arrayList.add(this.mVideoSeedPresenterFactory.create(sideScreenContentTile, (NewsArticle) thing, screenInfo));
                    } else if (thing instanceof NewsArticle) {
                        arrayList.addAll(this.mArticleTilePresenterFactory.create(sideScreenContentTile, (NewsArticle) thing, screenInfo));
                    } else if (thing instanceof YelpAd) {
                        arrayList.addAll(this.mYelpPresenterFactory.create(sideScreenContentTile, (YelpAd) thing, screenInfo));
                    }
                    break;
                }
                break;
        }
        return arrayList;
    }
}
