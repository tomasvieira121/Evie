package com.evie.sidescreen.tiles.articles;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.relatedcontent.RelatedArticlesActivity;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.HashMap;
import java.util.Map;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class RelatedArticlePresenter extends AbstractArticleTilePresenter<RelatedArticleViewHolder> {
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    protected float getImageAspectRatio() {
        return 1.0f;
    }

    public RelatedArticlePresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided ArticlePopupMenuHelper articlePopupMenuHelper, @Provided PopupImageViewerPresenterFactory popupImageViewerPresenterFactory) {
        super(sideScreenContentTile, newsArticle, screenInfo, activityStarter, analyticsModel, articlePopupMenuHelper, popupImageViewerPresenterFactory);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return RelatedArticleViewHolder.f358ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public RelatedArticleViewHolder createViewHolderInstance(View view) {
        return new RelatedArticleViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void bindTitle(RelatedArticleViewHolder relatedArticleViewHolder) {
        super.bindTitle(relatedArticleViewHolder);
        relatedArticleViewHolder.showTitle(this.mArticle.getHeadline());
        if (!TextUtils.isEmpty(this.mArticle.getDescription())) {
            relatedArticleViewHolder.showSubtitle(this.mArticle.getDescription());
        } else {
            relatedArticleViewHolder.hideSubtitle();
        }
        if (this.mArticle.getVideo() != null && this.mArticle.getVideo().size() > 0) {
            relatedArticleViewHolder.showPlayButton();
        } else {
            relatedArticleViewHolder.hidePlayButton();
        }
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter, com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", (this.mArticle.getVideo() == null || this.mArticle.getVideo().size() <= 0) ? "trending_article" : "trending_video");
        map.put("attribute_news_article", this.mArticle);
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void bindImage(RelatedArticleViewHolder relatedArticleViewHolder, int i, float f) {
        if (this.mArticle.getVideo() != null && this.mArticle.getVideo().size() > 0) {
            relatedArticleViewHolder.showImage(this.mArticle.getVideo().get(0).getPreviewUrl());
        } else {
            super.bindImage(relatedArticleViewHolder, i, f);
        }
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void onArticleClick(View view) {
        trackTap();
        if (this.mArticle.getVideo() != null && this.mArticle.getVideo().size() > 0) {
            Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(RelatedVideosActivity.class);
            localActivityIntent.putExtra(RelatedVideosActivity.EXTRA_ARTICLE, this.mArticle);
            this.mActivityStarter.startActivity(view, localActivityIntent, true);
        } else {
            if (this.mArticle.isShowIntermediate()) {
                if (view.getContext() instanceof RelatedArticlesActivity) {
                    ((RelatedArticlesActivity) view.getContext()).setArticle(this.mArticle, false);
                    return;
                } else {
                    super.handleArticleClick(view);
                    return;
                }
            }
            launchWebViewer(view);
        }
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    protected void trackTap() {
        HashMap map = new HashMap();
        map.put("item_type", (this.mArticle.getVideo() == null || this.mArticle.getVideo().size() <= 0) ? "trending_article" : "trending_video");
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_content_tile", this.mTile);
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }
}
