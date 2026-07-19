package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.topicdetail.TopicDetailActivity;
import com.evie.sidescreen.youtube.YouTubeWarmerIntentService;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.HashMap;
import java.util.Map;
import org.schema.MediaSelector;
import org.schema.NewsArticle;
import org.schema.VideoObject;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class ArticleTileHeroYouTubePreviewPresenter extends AbstractHeroPresenter<ArticleTileHeroYouTubePreviewViewHolder> {
    private final ActivityStarter mActivityStarter;
    private final NewsArticle mArticle;
    private Context mContext;
    private VideoObject mVideo;

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return false;
    }

    public ArticleTileHeroYouTubePreviewPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided Context context, @Provided AnalyticsModel analyticsModel) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mContext = context;
        this.mArticle = newsArticle;
        this.mActivityStarter = activityStarter;
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_video");
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_screen_info", this.mScreenInfo);
        return map;
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onMediaClick(View view) {
        super.onMediaClick(view);
        trackTap();
        if (view != null) {
            Context context = view.getContext();
            if ((context instanceof TopicDetailActivity) && ((TopicDetailActivity) context).setArticleResult(this.mArticle)) {
                return;
            }
        }
        Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(RelatedVideosActivity.class);
        localActivityIntent.putExtra(RelatedVideosActivity.EXTRA_ARTICLE, this.mArticle);
        this.mActivityStarter.startActivity(view, localActivityIntent, true);
    }

    protected void trackTap() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_video");
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_content_tile", this.mTile);
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return ArticleTileHeroYouTubePreviewViewHolder.f356ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public ArticleTileHeroYouTubePreviewViewHolder createViewHolderInstance(View view) {
        return new ArticleTileHeroYouTubePreviewViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroPresenter
    public void onBindViewHolder(ArticleTileHeroYouTubePreviewViewHolder articleTileHeroYouTubePreviewViewHolder) {
        int iIntValue;
        int iIntValue2;
        super.onBindViewHolder(articleTileHeroYouTubePreviewViewHolder);
        this.mVideo = (VideoObject) MediaSelector.selectMedia(this.mArticle.getVideo(), getScreenWidthPixels(((ArticleTileHeroYouTubePreviewViewHolder) this.mViewHolder).itemView.getContext()), 1.7777778f);
        if (this.mVideo.getWidth() == null || this.mVideo.getHeight() == null) {
            iIntValue = 16;
            iIntValue2 = 9;
        } else {
            iIntValue = this.mVideo.getWidth().intValue();
            iIntValue2 = this.mVideo.getHeight().intValue();
        }
        articleTileHeroYouTubePreviewViewHolder.setVideoFrameAspectRatio(iIntValue, iIntValue2);
        if (!TextUtils.isEmpty(this.mVideo.getPreviewUrl())) {
            ((ArticleTileHeroYouTubePreviewViewHolder) this.mViewHolder).showImage(this.mVideo.getPreviewUrl());
        } else {
            ((ArticleTileHeroYouTubePreviewViewHolder) this.mViewHolder).hideImage();
        }
        if (this.mVideo.getDuration() > 0) {
            ((ArticleTileHeroYouTubePreviewViewHolder) this.mViewHolder).showVideoProgressText(this.mVideo.getDuration());
        } else {
            ((ArticleTileHeroYouTubePreviewViewHolder) this.mViewHolder).hideVideoProgressText();
        }
        if (this.mVideo.isYouTube()) {
            this.mContext.startService(new Intent(this.mContext, (Class<?>) YouTubeWarmerIntentService.class));
        }
    }
}
