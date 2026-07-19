package com.evie.sidescreen.tiles.recommended;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class RecommendedViewHolder_ViewBinding implements Unbinder {
    private RecommendedViewHolder target;

    public RecommendedViewHolder_ViewBinding(RecommendedViewHolder recommendedViewHolder, View view) {
        this.target = recommendedViewHolder;
        recommendedViewHolder.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        recommendedViewHolder.mLoading = Utils.findRequiredView(view, R.id.loading, "field 'mLoading'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        RecommendedViewHolder recommendedViewHolder = this.target;
        if (recommendedViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        recommendedViewHolder.mRecyclerView = null;
        recommendedViewHolder.mLoading = null;
    }
}
