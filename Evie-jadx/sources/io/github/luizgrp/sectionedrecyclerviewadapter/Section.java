package io.github.luizgrp.sectionedrecyclerviewadapter;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Section {
    private Integer failedResourceId;
    Integer footerResourceId;
    boolean hasFooter;
    boolean hasHeader;
    Integer headerResourceId;
    int itemResourceId;
    private Integer loadingResourceId;
    private State state;
    boolean visible;

    public enum State {
        LOADING,
        LOADED,
        FAILED
    }

    public abstract int getContentItemsTotal();

    public abstract RecyclerView.ViewHolder getItemViewHolder(View view);

    public void onBindFailedViewHolder(RecyclerView.ViewHolder viewHolder) {
    }

    public void onBindFooterViewHolder(RecyclerView.ViewHolder viewHolder) {
    }

    public void onBindHeaderViewHolder(RecyclerView.ViewHolder viewHolder) {
    }

    public abstract void onBindItemViewHolder(RecyclerView.ViewHolder viewHolder, int i);

    public void onBindLoadingViewHolder(RecyclerView.ViewHolder viewHolder) {
    }

    Section() {
        this.state = State.LOADED;
        this.visible = true;
        this.hasHeader = false;
        this.hasFooter = false;
    }

    public Section(int i, int i2, int i3) {
        this.state = State.LOADED;
        this.visible = true;
        this.hasHeader = false;
        this.hasFooter = false;
        this.itemResourceId = i;
        this.loadingResourceId = Integer.valueOf(i2);
        this.failedResourceId = Integer.valueOf(i3);
    }

    public Section(int i, int i2, int i3, int i4) {
        this(i2, i3, i4);
        this.headerResourceId = Integer.valueOf(i);
        this.hasHeader = true;
    }

    public final State getState() {
        return this.state;
    }

    public final boolean isVisible() {
        return this.visible;
    }

    public final void setVisible(boolean z) {
        this.visible = z;
    }

    public final boolean hasHeader() {
        return this.hasHeader;
    }

    public final void setHasHeader(boolean z) {
        this.hasHeader = z;
    }

    public final boolean hasFooter() {
        return this.hasFooter;
    }

    public final Integer getHeaderResourceId() {
        return this.headerResourceId;
    }

    public final Integer getFooterResourceId() {
        return this.footerResourceId;
    }

    public final int getItemResourceId() {
        return this.itemResourceId;
    }

    public final Integer getLoadingResourceId() {
        return this.loadingResourceId;
    }

    public final Integer getFailedResourceId() {
        return this.failedResourceId;
    }

    public final void onBindContentViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        switch (this.state) {
            case LOADING:
                onBindLoadingViewHolder(viewHolder);
                return;
            case LOADED:
                onBindItemViewHolder(viewHolder, i);
                return;
            case FAILED:
                onBindFailedViewHolder(viewHolder);
                return;
            default:
                throw new IllegalStateException("Invalid state");
        }
    }

    public final int getSectionItemsTotal() {
        int contentItemsTotal = 1;
        switch (this.state) {
            case LOADING:
            case FAILED:
                break;
            case LOADED:
                contentItemsTotal = getContentItemsTotal();
                break;
            default:
                throw new IllegalStateException("Invalid state");
        }
        return contentItemsTotal + (this.hasHeader ? 1 : 0) + (this.hasFooter ? 1 : 0);
    }

    public RecyclerView.ViewHolder getHeaderViewHolder(View view) {
        return new SectionedRecyclerViewAdapter.EmptyViewHolder(view);
    }

    public RecyclerView.ViewHolder getFooterViewHolder(View view) {
        return new SectionedRecyclerViewAdapter.EmptyViewHolder(view);
    }

    public RecyclerView.ViewHolder getLoadingViewHolder(View view) {
        return new SectionedRecyclerViewAdapter.EmptyViewHolder(view);
    }

    public RecyclerView.ViewHolder getFailedViewHolder(View view) {
        return new SectionedRecyclerViewAdapter.EmptyViewHolder(view);
    }
}
