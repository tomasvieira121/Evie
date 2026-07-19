package com.evie.sidescreen.tiles.articles;

import android.text.TextUtils;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.TilePresenter;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class ArticleTileHeroCaptionPresenter extends AbstractArticleTilePresenter<ArticleTileHeroContentViewHolder> {
    private TilePresenter mContentPresenter;

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    protected float getImageAspectRatio() {
        return 0.0f;
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    public boolean shouldReportImpressionEvent() {
        return false;
    }

    public ArticleTileHeroCaptionPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided ArticlePopupMenuHelper articlePopupMenuHelper, @Provided PopupImageViewerPresenterFactory popupImageViewerPresenterFactory) {
        super(sideScreenContentTile, newsArticle, screenInfo, activityStarter, analyticsModel, articlePopupMenuHelper, popupImageViewerPresenterFactory);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ArticleTileHeroContentViewHolder.f351ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ArticleTileHeroContentViewHolder createViewHolderInstance(View view) {
        return new ArticleTileHeroContentViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void onBindViewHolder(ArticleTileHeroContentViewHolder articleTileHeroContentViewHolder) {
        super.onBindViewHolder(articleTileHeroContentViewHolder);
        if (!TextUtils.isEmpty(this.mArticle.getDescription())) {
            articleTileHeroContentViewHolder.showSubtitle(this.mArticle.getDescription());
        } else {
            articleTileHeroContentViewHolder.hideSubtitle();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void onArticleClick(View view) {
        TilePresenter tilePresenter = this.mContentPresenter;
        boolean z = true;
        if (tilePresenter == null) {
            z = false;
        } else if (tilePresenter instanceof ArticleTileHeroVideoPresenter) {
            ((ArticleTileHeroVideoPresenter) tilePresenter).onMediaClick(view, (ArticleTileHeroVideoViewHolder) tilePresenter.getViewHolder());
        } else if (tilePresenter instanceof ArticleTileHeroOathPresenter) {
            ((ArticleTileHeroOathPresenter) tilePresenter).onMediaClick(view);
        } else if (tilePresenter instanceof ArticleTileHeroYouTubePreviewPresenter) {
            ((ArticleTileHeroYouTubePreviewPresenter) tilePresenter).onMediaClick(view);
        } else if (tilePresenter instanceof ArticleTileHeroImagePresenter) {
            ((ArticleTileHeroImagePresenter) tilePresenter).onCaptionClick(view.getContext());
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        super.onArticleClick(view);
    }

    public void setContentPresenter(TilePresenter tilePresenter) {
        this.mContentPresenter = tilePresenter;
    }
}
