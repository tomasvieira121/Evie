package com.evie.sidescreen.tiles.recommended;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecommendedViewHolder extends MvpViewHolder<RecommendedPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f368ID = R.layout.tile_recommended;
    private MvpRecyclerAdapter mAdapter;

    @BindView
    View mLoading;

    @BindView
    RecyclerView mRecyclerView;

    public void showError() {
    }

    public RecommendedViewHolder(View view) {
        super(view);
        this.mAdapter = new MvpRecyclerAdapter();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()) { // from class: com.evie.sidescreen.tiles.recommended.RecommendedViewHolder.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutCompleted(RecyclerView.State state) {
                super.onLayoutCompleted(state);
                RecommendedViewHolder.this.mAdapter.updateVisibility();
            }
        });
        this.mRecyclerView.setAdapter(this.mAdapter);
    }

    public void setItemPresenters(List<? extends ItemPresenter> list) {
        this.mAdapter.setItemPresenters(list, false);
        ViewGroup.LayoutParams layoutParams = this.itemView.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        if (list == null || list.size() == 0) {
            layoutParams.height = 0;
        } else {
            layoutParams.height = -2;
        }
        this.itemView.setLayoutParams(layoutParams);
    }

    public void showLoading() {
        this.mLoading.setVisibility(0);
        this.mRecyclerView.setVisibility(8);
    }

    public void hideLoading() {
        this.mLoading.setVisibility(8);
        this.mRecyclerView.setVisibility(0);
    }
}
