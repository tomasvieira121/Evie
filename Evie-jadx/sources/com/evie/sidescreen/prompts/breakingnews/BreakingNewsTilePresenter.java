package com.evie.sidescreen.prompts.breakingnews;

import android.text.TextUtils;
import android.view.View;
import com.evie.models.PromptStoreModel;
import com.evie.models.breakingnews.data.BreakingNews;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.prompts.PromptsPresenter;
import com.evie.sidescreen.tiles.TileBackgroundItemDecoration;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.evie.sidescreen.webviewer.WebViewerActivity;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsTilePresenter extends PromptsPresenter<BreakingNewsTileViewHolder> implements TileBackgroundItemDecoration.TileBackgroundContractor, TileRowDividerItemDecoration.TileRowDividerContractor {
    private ActivityStarter mActivityStarter;
    private int mIndex;
    private BreakingNews mNews;
    private PromptStoreModel mPromptStore;

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnAlpha() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnPrevAlpha() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldFillInBackground() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundBottomCorners() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundTopCorners() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return true;
    }

    public BreakingNewsTilePresenter(AnalyticsModel analyticsModel, PromptStoreModel promptStoreModel, ActivityStarter activityStarter, BreakingNews breakingNews, int i) {
        super(analyticsModel);
        this.mActivityStarter = activityStarter;
        this.mPromptStore = promptStoreModel;
        this.mNews = breakingNews;
        this.mIndex = i;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return BreakingNewsTileViewHolder.f343ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public BreakingNewsTileViewHolder createViewHolderInstance(View view) {
        return new BreakingNewsTileViewHolder(view, this.mNews);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(BreakingNewsTileViewHolder breakingNewsTileViewHolder) {
        bindView();
    }

    private void bindView() {
        if (this.mNews.getImage().equals("")) {
            ((BreakingNewsTileViewHolder) this.mViewHolder).hideImage();
        } else {
            ((BreakingNewsTileViewHolder) this.mViewHolder).showImage(this.mNews.getImage());
        }
        ((BreakingNewsTileViewHolder) this.mViewHolder).mDescription.setText(this.mNews.getDescription());
        ((BreakingNewsTileViewHolder) this.mViewHolder).mTitle.setText(this.mNews.getTitle());
    }

    public void onTileClick() {
        this.mPromptStore.removeSingleBreakingNews(this.mNews);
        launchWebViewer(this.mNews);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", getTrackableAttributes());
    }

    private void launchWebViewer(BreakingNews breakingNews) {
        String webViewUrl = breakingNews.getWebViewUrl();
        String webViewPubName = breakingNews.getWebViewPubName();
        String webViewPubFavicon = breakingNews.getWebViewPubFavicon();
        if (TextUtils.isEmpty(webViewUrl)) {
            return;
        }
        HashMap map = new HashMap();
        map.put(WebViewerActivity.EXTRA_FAVICON_KEY, webViewPubFavicon);
        this.mActivityStarter.startUrl(null, breakingNews.getWebViewUrl(), webViewPubName, null, null, map, null, null, null);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public boolean isSameItem(Object obj) {
        if (super.isSameItem(obj)) {
            return this.mNews.equals(((BreakingNewsTilePresenter) obj).mNews);
        }
        return false;
    }

    @Override // com.evie.sidescreen.prompts.PromptsPresenter
    public Map<String, Object> getTrackableAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_article");
        map.put("screen_type", "side_screen");
        map.put("screen_subtype", "breaking_news");
        map.put("attribute_breakingnews", this.mNews);
        map.put("item_position", Integer.valueOf(this.mIndex));
        return map;
    }
}
