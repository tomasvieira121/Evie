package com.evie.sidescreen.tiles.videos;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;
import com.evie.sidescreen.tiles.TilePresenter;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.HashMap;
import java.util.Map;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class PlaylistItemPresenter extends TilePresenter<PlaylistItemViewHolder> {
    private NewsArticle mArticle;

    @Override // com.evie.sidescreen.tiles.TilePresenter, com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return false;
    }

    public PlaylistItemPresenter(SideScreenContentTile sideScreenContentTile, NewsArticle newsArticle, ScreenInfo screenInfo, @Provided ActivityStarter activityStarter, @Provided AnalyticsModel analyticsModel) {
        super(sideScreenContentTile, screenInfo, analyticsModel);
        this.mArticle = newsArticle;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return PlaylistItemViewHolder.f370ID;
    }

    public NewsArticle getArticle() {
        return this.mArticle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public PlaylistItemViewHolder createViewHolderInstance(View view) {
        return new PlaylistItemViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(PlaylistItemViewHolder playlistItemViewHolder) {
        Resources resources = playlistItemViewHolder.mContent.getResources();
        playlistItemViewHolder.showTitle(this.mArticle.getHeadline());
        if (this.mArticle.getVideo() != null && this.mArticle.getVideo().size() > 0) {
            int duration = this.mArticle.getVideo().get(0).getDuration();
            String viewsString = getViewsString(this.mArticle.getViews(), resources);
            if (duration == 0) {
                playlistItemViewHolder.showSubtitle(viewsString);
            } else {
                playlistItemViewHolder.showSubtitle(String.format("%d:%02d · %s", Integer.valueOf(duration / 60), Integer.valueOf(duration % 60), viewsString));
            }
            playlistItemViewHolder.showImage(this.mArticle.getVideo().get(0).getPreviewUrl());
            return;
        }
        playlistItemViewHolder.hideSubtitle();
    }

    private String getViewsString(int i, Resources resources) {
        if (i >= 1000000) {
            return resources.getString(R.string.ss_million_views, Integer.valueOf(i / 1000000));
        }
        return i >= 1000 ? resources.getString(R.string.ss_thousand_views, Integer.valueOf(i / 1000)) : resources.getString(R.string.ss_views, Integer.valueOf(i));
    }

    @Override // com.evie.sidescreen.tiles.TilePresenter
    protected Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_video");
        map.put("attribute_news_article", this.mArticle);
        return map;
    }

    public void onClick(View view) {
        onTapped();
        trackTap();
        Context context = view.getContext();
        if (context instanceof RelatedVideosActivity) {
            ((RelatedVideosActivity) context).setArticle(this.mArticle, 3);
        }
    }

    protected void trackTap() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_video");
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_content_tile", this.mTile);
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }
}
