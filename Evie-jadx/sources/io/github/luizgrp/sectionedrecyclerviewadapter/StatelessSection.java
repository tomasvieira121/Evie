package io.github.luizgrp.sectionedrecyclerviewadapter;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StatelessSection extends Section {
    public StatelessSection(int i) {
        this.itemResourceId = i;
    }

    public StatelessSection(int i, int i2) {
        this(i2);
        this.headerResourceId = Integer.valueOf(i);
        this.hasHeader = true;
    }

    @Override // io.github.luizgrp.sectionedrecyclerviewadapter.Section
    public final void onBindLoadingViewHolder(RecyclerView.ViewHolder viewHolder) {
        super.onBindLoadingViewHolder(viewHolder);
    }

    @Override // io.github.luizgrp.sectionedrecyclerviewadapter.Section
    public final RecyclerView.ViewHolder getLoadingViewHolder(View view) {
        return super.getLoadingViewHolder(view);
    }

    @Override // io.github.luizgrp.sectionedrecyclerviewadapter.Section
    public final void onBindFailedViewHolder(RecyclerView.ViewHolder viewHolder) {
        super.onBindFailedViewHolder(viewHolder);
    }

    @Override // io.github.luizgrp.sectionedrecyclerviewadapter.Section
    public final RecyclerView.ViewHolder getFailedViewHolder(View view) {
        return super.getFailedViewHolder(view);
    }
}
