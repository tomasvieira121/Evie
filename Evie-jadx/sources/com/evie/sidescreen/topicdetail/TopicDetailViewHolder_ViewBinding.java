package com.evie.sidescreen.topicdetail;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailViewHolder_ViewBinding implements Unbinder {
    private TopicDetailViewHolder target;

    public TopicDetailViewHolder_ViewBinding(TopicDetailViewHolder topicDetailViewHolder, View view) {
        this.target = topicDetailViewHolder;
        topicDetailViewHolder.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        topicDetailViewHolder.mLoading = Utils.findRequiredView(view, R.id.loading, "field 'mLoading'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicDetailViewHolder topicDetailViewHolder = this.target;
        if (topicDetailViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicDetailViewHolder.mRecyclerView = null;
        topicDetailViewHolder.mLoading = null;
    }
}
