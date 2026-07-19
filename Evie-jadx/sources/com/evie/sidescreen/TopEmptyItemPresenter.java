package com.evie.sidescreen;

import android.view.View;
import com.evie.sidescreen.mvp.ItemPresenter;

/* JADX INFO: loaded from: classes.dex */
public class TopEmptyItemPresenter extends ItemPresenter<TopEmptyViewHolder> {
    private int mCustomHeight = -1;

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopEmptyViewHolder.f325ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopEmptyViewHolder createViewHolderInstance(View view) {
        return new TopEmptyViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopEmptyViewHolder topEmptyViewHolder) {
        if (hasCustomHeight()) {
            topEmptyViewHolder.setHeight(this.mCustomHeight);
        }
    }

    public void setHeight(int i) {
        this.mCustomHeight = i;
        if (this.mViewHolder != 0) {
            ((TopEmptyViewHolder) this.mViewHolder).setHeight(this.mCustomHeight);
        }
    }

    public int getHeight() {
        return this.mCustomHeight;
    }

    public boolean hasCustomHeight() {
        return this.mCustomHeight >= 0;
    }
}
