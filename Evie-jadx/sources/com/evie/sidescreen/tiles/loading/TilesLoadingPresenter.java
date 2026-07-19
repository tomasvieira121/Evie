package com.evie.sidescreen.tiles.loading;

import android.view.View;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.tiles.TileBackgroundItemDecoration;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class TilesLoadingPresenter extends ItemPresenter<TilesLoadingViewHolder> implements TileBackgroundItemDecoration.TileBackgroundContractor, TileRowDividerItemDecoration.TileRowDividerContractor {
    private int mCustomHeight = -1;
    private final LifecycleCallbacks mLifecycleCallbacks;

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnAlpha() {
        return false;
    }

    @Override // com.evie.sidescreen.tiles.TileBackgroundItemDecoration.TileBackgroundContractor
    public boolean backgroundReliesOnPrevAlpha() {
        return false;
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

    public TilesLoadingPresenter(LifecycleCallbacks lifecycleCallbacks) {
        this.mLifecycleCallbacks = lifecycleCallbacks;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TilesLoadingViewHolder.f367ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TilesLoadingViewHolder createViewHolderInstance(View view) {
        return new TilesLoadingViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(final TilesLoadingViewHolder tilesLoadingViewHolder) {
        if (this.mLifecycleCallbacks.isShowing()) {
            tilesLoadingViewHolder.showProgress();
        } else {
            tilesLoadingViewHolder.hideProgress();
        }
        this.mDisposables.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.loading.-$$Lambda$TilesLoadingPresenter$mMMX758zdywKgsZJgtyENOZlGws
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                tilesLoadingViewHolder.showProgress();
            }
        }));
        this.mDisposables.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.HIDE).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.loading.-$$Lambda$TilesLoadingPresenter$PbcnheJcXNPKK9h7rGdNg37QTlc
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                tilesLoadingViewHolder.hideProgress();
            }
        }));
        if (hasCustomHeight()) {
            tilesLoadingViewHolder.setHeight(this.mCustomHeight);
        }
    }

    public void setHeight(int i) {
        if (i != this.mCustomHeight) {
            this.mCustomHeight = i;
            if (this.mViewHolder != 0) {
                ((TilesLoadingViewHolder) this.mViewHolder).setHeight(this.mCustomHeight);
            }
        }
    }

    public boolean hasCustomHeight() {
        return this.mCustomHeight >= 0;
    }
}
