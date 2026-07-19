package com.evie.sidescreen.tiles.videos;

import android.text.TextUtils;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter;
import com.evie.sidescreen.tiles.articles.ArticlePopupMenuHelper;
import com.evie.sidescreen.tiles.imageviewer.PopupImageViewerPresenterFactory;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class VideoSeedPresenter extends AbstractArticleTilePresenter<VideoSeedViewHolder> {
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    protected float getImageAspectRatio() {
        return 0.0f;
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void onArticleClick(View view) {
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.mvp.ItemPresenter
    public void onVisibilityChanged(boolean z) {
    }

    public VideoSeedPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel, @Provided ArticlePopupMenuHelper articlePopupMenuHelper, @Provided PopupImageViewerPresenterFactory popupImageViewerPresenterFactory) {
        super(sideScreenContentTile, newsArticle, screenInfo, activityStarter, analyticsModel, articlePopupMenuHelper, popupImageViewerPresenterFactory);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return R.layout.tile_video_related_seed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public VideoSeedViewHolder createViewHolderInstance(View view) {
        return new VideoSeedViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter
    public void onBindViewHolder(VideoSeedViewHolder videoSeedViewHolder) {
        super.onBindViewHolder(videoSeedViewHolder);
        videoSeedViewHolder.hideHeader();
        videoSeedViewHolder.hideHeaderContextButton();
        videoSeedViewHolder.setHeaderContextButtonClickability(false);
        if (!TextUtils.isEmpty(this.mArticle.getDescription())) {
            videoSeedViewHolder.showSubtitle(this.mArticle.getDescription());
        } else {
            videoSeedViewHolder.hideSubtitle();
        }
    }
}
