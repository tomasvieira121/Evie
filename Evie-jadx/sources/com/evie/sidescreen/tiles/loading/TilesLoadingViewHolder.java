package com.evie.sidescreen.tiles.loading;

import android.view.View;
import android.view.ViewGroup;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class TilesLoadingViewHolder extends MvpViewHolder<TilesLoadingPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f367ID = R.layout.tiles_loading;

    @BindView
    View mLoading;

    public TilesLoadingViewHolder(View view) {
        super(view);
    }

    public void hideProgress() {
        this.mLoading.setVisibility(4);
    }

    public void showProgress() {
        this.mLoading.setVisibility(0);
    }

    public void setHeight(int i) {
        ViewGroup.LayoutParams layoutParams = this.itemView.getLayoutParams();
        layoutParams.height = i;
        this.itemView.setLayoutParams(layoutParams);
    }
}
