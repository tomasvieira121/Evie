package com.evie.sidescreen.personalize;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicsListViewHolder_ViewBinding implements Unbinder {
    private TopicsListViewHolder target;

    public TopicsListViewHolder_ViewBinding(TopicsListViewHolder topicsListViewHolder, View view) {
        this.target = topicsListViewHolder;
        topicsListViewHolder.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        topicsListViewHolder.mLoading = Utils.findRequiredView(view, R.id.loading, "field 'mLoading'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicsListViewHolder topicsListViewHolder = this.target;
        if (topicsListViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicsListViewHolder.mRecyclerView = null;
        topicsListViewHolder.mLoading = null;
    }
}
