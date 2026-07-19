package com.evie.sidescreen;

import android.view.View;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;

/* JADX INFO: loaded from: classes.dex */
public class CustomPresenter extends ItemPresenter<MvpViewHolder<CustomPresenter>> implements TileRowDividerItemDecoration.TileRowDividerContractor {
    private int mLayoutResId;
    private View.OnClickListener mOnClickListener;
    private boolean mShouldShowBottomTileDivider;
    private boolean mShouldShowTopTileDivider;

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public int getLayoutResId() {
        return this.mLayoutResId;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return CustomPresenter.class.hashCode();
    }

    public CustomPresenter(int i, boolean z, boolean z2) {
        this.mLayoutResId = i;
        this.mShouldShowTopTileDivider = z;
        this.mShouldShowBottomTileDivider = z2;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected MvpViewHolder<CustomPresenter> createViewHolderInstance(View view) {
        return new MvpViewHolder<>(view);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected void onBindViewHolder(MvpViewHolder<CustomPresenter> mvpViewHolder) {
        mvpViewHolder.itemView.setOnClickListener(this.mOnClickListener);
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowTopTileDivider() {
        return this.mShouldShowTopTileDivider;
    }

    @Override // com.evie.sidescreen.tiles.TileRowDividerItemDecoration.TileRowDividerContractor
    public boolean shouldShowBottomTileDivider() {
        return this.mShouldShowBottomTileDivider;
    }
}
