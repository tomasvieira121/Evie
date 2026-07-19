package com.evie.sidescreen.prompts.breakingnews;

import android.view.View;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.TileBackgroundItemDecoration;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsFooterPresenter extends ItemPresenter<BreakingNewsFooterViewHolder> implements TileBackgroundItemDecoration.TileBackgroundContractor {
    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnAlpha() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnPrevAlpha() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(BreakingNewsFooterViewHolder breakingNewsFooterViewHolder) {
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldFillInBackground() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundBottomCorners() {
        return true;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean shouldRoundTopCorners() {
        return false;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return BreakingNewsFooterViewHolder.f342ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public BreakingNewsFooterViewHolder createViewHolderInstance(View view) {
        return new BreakingNewsFooterViewHolder(view);
    }
}
