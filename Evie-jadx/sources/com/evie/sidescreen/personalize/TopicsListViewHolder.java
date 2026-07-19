package com.evie.sidescreen.personalize;

import android.view.View;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TopicsListViewHolder extends MvpViewHolder<ItemPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f337ID = R.layout.ss_topics_list_fragment;
    private MvpRecyclerAdapter mAdapter;

    @BindView
    View mLoading;

    @BindView
    RecyclerView mRecyclerView;

    public TopicsListViewHolder(View view) {
        super(view);
        this.mAdapter = new MvpRecyclerAdapter();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()));
        this.mRecyclerView.setAdapter(this.mAdapter);
    }

    public void setItemPresenters(List<? extends ItemPresenter> list) {
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
        Toast.makeText(this.itemView.getContext(), R.string.ss_generic_loading_error_message, 1).show();
    }
}
