package com.evie.sidescreen.tiles.error;

import android.view.View;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class TilesErrorViewHolder extends MvpViewHolder<TilesErrorPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f359ID = R.layout.tiles_error;

    public TilesErrorViewHolder(View view) {
        super(view);
    }

    @OnClick
    public void onClick(View view) {
        ((TilesErrorPresenter) this.mPresenter).onRetryClick(view);
    }
}
