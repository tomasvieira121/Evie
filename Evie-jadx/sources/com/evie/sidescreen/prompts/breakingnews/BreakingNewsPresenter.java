package com.evie.sidescreen.prompts.breakingnews;

import android.view.View;
import com.evie.models.PromptStoreModel;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.TileBackgroundItemDecoration;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsPresenter extends ItemPresenter<BreakingNewsViewHolder> implements TileBackgroundItemDecoration.TileBackgroundContractor, TileRowDividerItemDecoration.TileRowDividerContractor {
    private final AnalyticsModel mAnalyticsModel;
    private final PromptStoreModel mPromptStoreModel;

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnAlpha() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnPrevAlpha() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(BreakingNewsViewHolder breakingNewsViewHolder) {
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
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return true;
    }

    public BreakingNewsPresenter(PromptStoreModel promptStoreModel, AnalyticsModel analyticsModel) {
        this.mPromptStoreModel = promptStoreModel;
        this.mAnalyticsModel = analyticsModel;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return BreakingNewsViewHolder.f344ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public BreakingNewsViewHolder createViewHolderInstance(View view) {
        return new BreakingNewsViewHolder(view);
    }

    public void onDismissClick(View view) {
        HashMap map = new HashMap();
        map.put("item_type", "dismiss");
        map.put("screen_type", "side_screen");
        map.put("screen_subtype", "attribute_breakingnews");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        this.mPromptStoreModel.removeAllBreakingNews();
    }
}
