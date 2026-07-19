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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.schema.ImageObject;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class ArticleSeedPresenter extends AbstractArticleTilePresenter<ArticleSeedViewHolder> {
    private String mArticleBody;

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    protected float getImageAspectRatio() {
        return 0.0f;
    }

    public ArticleSeedPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided ArticlePopupMenuHelper articlePopupMenuHelper, @Provided PopupImageViewerPresenterFactory popupImageViewerPresenterFactory) {
        super(sideScreenContentTile, newsArticle, screenInfo, activityStarter, analyticsModel, articlePopupMenuHelper, popupImageViewerPresenterFactory);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ArticleSeedViewHolder.f350ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ArticleSeedViewHolder createViewHolderInstance(View view) {
        return new ArticleSeedViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void onBindViewHolder(ArticleSeedViewHolder articleSeedViewHolder) {
        super.onBindViewHolder(articleSeedViewHolder);
        articleSeedViewHolder.hideHeader();
        if (!TextUtils.isEmpty(this.mArticleBody)) {
            articleSeedViewHolder.showArticleBody(this.mArticleBody);
        } else if (!TextUtils.isEmpty(this.mArticle.getDescription())) {
            articleSeedViewHolder.showSubtitle(this.mArticle.getDescription());
        } else {
            articleSeedViewHolder.hideSubtitle();
        }
        List<ImageObject> image = this.mArticle.getImage();
        if (image == null || image.size() == 0) {
            articleSeedViewHolder.hideImage();
        } else {
            articleSeedViewHolder.showImage(image.get(0).getUrl(), 1.7777778f);
        }
    }

    public void setArticleBody(String str) {
        this.mArticleBody = str;
        if (this.mViewHolder != 0) {
            ((ArticleSeedViewHolder) this.mViewHolder).showArticleBody(str);
        }
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void onArticleClick(View view) {
        trackTap();
        launchWebViewer(view);
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter, com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_article");
        map.put("attribute_news_article", this.mArticle);
        return map;
    }
}
