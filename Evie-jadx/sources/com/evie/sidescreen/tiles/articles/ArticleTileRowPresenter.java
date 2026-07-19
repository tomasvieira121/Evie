package com.evie.sidescreen.tiles.articles;

import android.text.TextUtils;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class ArticleTileRowPresenter extends AbstractArticleTilePresenter<ArticleTileRowViewHolder> {
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    protected float getImageAspectRatio() {
        return 1.0f;
    }

    public ArticleTileRowPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided ArticlePopupMenuHelper articlePopupMenuHelper, @Provided PopupImageViewerPresenterFactory popupImageViewerPresenterFactory) {
        super(sideScreenContentTile, newsArticle, screenInfo, activityStarter, analyticsModel, articlePopupMenuHelper, popupImageViewerPresenterFactory);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ArticleTileRowViewHolder.f357ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ArticleTileRowViewHolder createViewHolderInstance(View view) {
        return new ArticleTileRowViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void bindTitle(ArticleTileRowViewHolder articleTileRowViewHolder) {
        super.bindTitle(articleTileRowViewHolder);
        articleTileRowViewHolder.showTitle(this.mArticle.getHeadline());
        if (!TextUtils.isEmpty(this.mArticle.getDescription())) {
            articleTileRowViewHolder.showSubtitle(this.mArticle.getDescription());
        } else {
            articleTileRowViewHolder.hideSubtitle();
        }
    }
}
