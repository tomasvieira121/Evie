package com.evie.sidescreen.tiles.error;

import android.view.View;
import com.evie.models.sidescreen.SideScreenContentModelInterface;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.TileBackgroundItemDecoration;

/* JADX INFO: loaded from: classes.dex */
public class TilesErrorPresenter extends ItemPresenter<TilesErrorViewHolder> implements TileBackgroundItemDecoration.TileBackgroundContractor {
    private final SideScreenContentModelInterface mModel;

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
    public void onBindViewHolder(TilesErrorViewHolder tilesErrorViewHolder) {
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

    public TilesErrorPresenter(SideScreenContentModelInterface sideScreenContentModelInterface) {
        this.mModel = sideScreenContentModelInterface;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TilesErrorViewHolder.f359ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TilesErrorViewHolder createViewHolderInstance(View view) {
        return new TilesErrorViewHolder(view);
    }

    void onRetryClick(View view) {
        this.mDisposables.add(this.mModel.refreshContent("error"));
    }
}
