package com.evie.sidescreen.tiles.loading;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TilesLoadingViewHolder_ViewBinding implements Unbinder {
    private TilesLoadingViewHolder target;

    public TilesLoadingViewHolder_ViewBinding(TilesLoadingViewHolder tilesLoadingViewHolder, View view) {
        this.target = tilesLoadingViewHolder;
        tilesLoadingViewHolder.mLoading = Utils.findRequiredView(view, R.id.loading_spinner, "field 'mLoading'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TilesLoadingViewHolder tilesLoadingViewHolder = this.target;
        if (tilesLoadingViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        tilesLoadingViewHolder.mLoading = null;
    }
}
