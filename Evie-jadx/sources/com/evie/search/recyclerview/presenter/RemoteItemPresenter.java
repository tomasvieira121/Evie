package com.evie.search.recyclerview.presenter;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.evie.common.services.links.LinkRequest;
import com.evie.common.services.links.LinkResolver;
import com.evie.search.R;
import com.evie.search.SearchPresenter;
import com.evie.search.SearchShortcutHandler;
import com.evie.search.local.LocalSearchManager;
import com.evie.search.model.RemoteSearchItem;
import com.evie.search.recyclerview.viewholder.BaseViewHolder;
import com.evie.search.recyclerview.viewholder.SearchItemViewHolder;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;

/* JADX INFO: loaded from: classes.dex */
public class RemoteItemPresenter implements BaseItemPresenter {
    private SearchItemViewHolder mBoundViewHolder;
    private Context mContext;
    private int mHeight;
    private final RemoteSearchItem mItem;
    LinkResolver mLinkResolver;
    private SearchPresenter mSearchPresenter;
    SearchShortcutHandler shortcutHandler;

    public RemoteItemPresenter(SearchPresenter searchPresenter, Context context, RemoteSearchItem remoteSearchItem) {
        searchPresenter.inject(this);
        this.mSearchPresenter = searchPresenter;
        this.mItem = remoteSearchItem;
        this.mContext = context;
        Resources resources = context.getResources();
        this.mHeight = resources.getDimensionPixelSize(R.dimen.search_double_spacing) + resources.getDimensionPixelSize(R.dimen.search_item_image_dimension);
    }

    public String getAppPackage() {
        return this.mItem.getPackageName();
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public int getType() {
        return SearchItemViewHolder.f311ID;
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public int getItemViewHeight() {
        return this.mHeight;
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void bind(BaseViewHolder baseViewHolder) {
        this.mBoundViewHolder = (SearchItemViewHolder) baseViewHolder;
        this.mBoundViewHolder.bindPresenter(this);
        this.mBoundViewHolder.bindItem(this.mItem);
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void unbind(BaseViewHolder baseViewHolder) {
        SearchItemViewHolder searchItemViewHolder = this.mBoundViewHolder;
        if (searchItemViewHolder == baseViewHolder) {
            searchItemViewHolder.bindPresenter(null);
            this.mBoundViewHolder = null;
        }
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void onItemClick() {
        LocalSearchManager.getInstance().itemAccessed(this.mItem);
        this.mSearchPresenter.logSearchItemClicked(new AnalyticsHandler.EventProp().add("item_type", this.mItem.getItemType()).add("item_label", this.mItem.getLabel()).add("entity_id", this.mItem.getEntityId()).add("entity_type", this.mItem.getEntityType()).add("query", this.mItem.getExplanation().getQuery()).add("suggestion_probability", this.mItem.getExplanation().getProbability()).add("item_position", this.mSearchPresenter.getAdapter().getRank(this)));
        this.mLinkResolver.resolve(this.mContext, new LinkRequest(this.mItem.getLinks()));
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public boolean onItemLongClick(View view) {
        this.mSearchPresenter.logSearchItemDragged(new AnalyticsHandler.EventProp().add("item_type", this.mItem.getItemType()).add("item_label", this.mItem.getLabel()).add("entity_id", this.mItem.getEntityId()).add("entity_type", this.mItem.getEntityType()).add("query", this.mItem.getExplanation().getQuery()).add("suggestion_probability", this.mItem.getExplanation().getProbability()).add("item_position", this.mSearchPresenter.getAdapter().getRank(this)));
        return this.shortcutHandler.createShortcut(view, this.mItem);
    }
}
