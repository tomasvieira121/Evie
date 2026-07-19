package com.evie.sidescreen;

import android.view.View;
import com.evie.sidescreen.mvp.ItemPresenter;

/* JADX INFO: loaded from: classes.dex */
public class TopEmptyShortItemPresenter extends ItemPresenter<TopEmptyShortViewHolder> {
    private int mCustomHeight = -1;

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopEmptyShortViewHolder.f324ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopEmptyShortViewHolder createViewHolderInstance(View view) {
        return new TopEmptyShortViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopEmptyShortViewHolder topEmptyShortViewHolder) {
        if (hasCustomHeight()) {
            topEmptyShortViewHolder.setHeight(this.mCustomHeight);
        }
    }

    public boolean hasCustomHeight() {
        return this.mCustomHeight >= 0;
    }
}
