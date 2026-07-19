package com.evie.sidescreen;

import android.view.View;
import android.view.ViewGroup;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class TopEmptyShortViewHolder extends MvpViewHolder<TopEmptyShortItemPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f324ID = R.layout.ss_top_empty_short_item;

    public TopEmptyShortViewHolder(View view) {
        super(view);
    }

    public void setHeight(int i) {
        ViewGroup.LayoutParams layoutParams = this.itemView.getLayoutParams();
        layoutParams.height = i;
        this.itemView.setLayoutParams(layoutParams);
    }
}
