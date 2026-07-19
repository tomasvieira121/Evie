package com.evie.sidescreen.mvp;

import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MvpAdapterItemDiffCallbacks extends DiffUtil.Callback {
    private final List<ItemPresenter> mOldList = new ArrayList();
    private final List<ItemPresenter> mNewList = new ArrayList();

    public MvpAdapterItemDiffCallbacks(List<? extends ItemPresenter> list, List<? extends ItemPresenter> list2) {
        if (list != null) {
            this.mOldList.addAll(list);
        }
        if (list2 != null) {
            this.mNewList.addAll(list2);
        }
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getOldListSize() {
        return this.mOldList.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getNewListSize() {
        return this.mNewList.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areItemsTheSame(int i, int i2) {
        return this.mOldList.get(i).isSameItem(this.mNewList.get(i2));
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areContentsTheSame(int i, int i2) {
        return this.mOldList.get(i).isSameContents(this.mNewList.get(i2));
    }
}
