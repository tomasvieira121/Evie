package com.evie.sidescreen.topicdetail;

import android.view.View;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.LifecycleAwareMvpRecyclerAdapter;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class TopicDetailViewHolder extends MvpViewHolder<TopicDetailPresenter> {

    /* JADX INFO: renamed from: ID */
    public static int f375ID = R.layout.ss_topic_detail_fragment;
    private final MvpRecyclerAdapter mAdapter;
    private final LinearLayoutManager mLayoutManager;

    @BindView
    View mLoading;

    @BindView
    RecyclerView mRecyclerView;

    public TopicDetailViewHolder(View view, @Provided LifecycleAwareMvpRecyclerAdapter lifecycleAwareMvpRecyclerAdapter) {
        super(view);
        this.mAdapter = lifecycleAwareMvpRecyclerAdapter;
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()));
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mLayoutManager = new LinearLayoutManager(view.getContext()) { // from class: com.evie.sidescreen.topicdetail.TopicDetailViewHolder.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutCompleted(RecyclerView.State state) {
                super.onLayoutCompleted(state);
                TopicDetailViewHolder.this.mAdapter.updateVisibility();
            }
        };
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.addItemDecoration(new TileRowDividerItemDecoration(view.getContext()));
    }

    public void setItemPresenters(List<ItemPresenter> list) {
        this.mAdapter.setItemPresenters(list, false);
    }

    public void showLoading() {
        this.mRecyclerView.setVisibility(4);
        this.mLoading.setVisibility(0);
    }

    public void hideLoading() {
        this.mRecyclerView.setVisibility(0);
        this.mLoading.setVisibility(4);
    }

    public void showError() {
        Toast.makeText(this.itemView.getContext(), R.string.ss_topic_detail_error_message, 1).show();
    }
}
