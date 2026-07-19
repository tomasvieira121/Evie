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
import com.evie.search.recyclerview.viewholder.SearchSubitemViewHolder;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;

/* JADX INFO: loaded from: classes.dex */
public class RemoteSubitemPresenter implements BaseItemPresenter {
    private SearchSubitemViewHolder mBoundViewHolder;
    private Context mContext;
    private int mHeight;
    private final RemoteSearchItem mItem;
    LinkResolver mLinkResolver;
    private SearchPresenter mSearchPresenter;
    SearchShortcutHandler shortcutHandler;

    public RemoteSubitemPresenter(SearchPresenter searchPresenter, Context context, RemoteSearchItem remoteSearchItem) {
        searchPresenter.inject(this);
        this.mSearchPresenter = searchPresenter;
        this.mItem = remoteSearchItem;
        this.mContext = context;
        Resources resources = context.getResources();
        this.mHeight = resources.getDimensionPixelSize(R.dimen.search_subitem_top_spacing) + resources.getDimensionPixelSize(R.dimen.search_subitem_image_dimension) + resources.getDimensionPixelSize(R.dimen.search_subitem_bottom_spacing);
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public int getType() {
        return SearchSubitemViewHolder.f312ID;
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public int getItemViewHeight() {
        return this.mHeight;
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void bind(BaseViewHolder baseViewHolder) {
        this.mBoundViewHolder = (SearchSubitemViewHolder) baseViewHolder;
        this.mBoundViewHolder.bindPresenter(this);
        this.mBoundViewHolder.bindItem(this.mItem);
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void unbind(BaseViewHolder baseViewHolder) {
        SearchSubitemViewHolder searchSubitemViewHolder = this.mBoundViewHolder;
        if (searchSubitemViewHolder == baseViewHolder) {
            searchSubitemViewHolder.bindPresenter(null);
            this.mBoundViewHolder = null;
        }
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void onItemClick() {
        RemoteSearchItem parent = this.mItem.getParent();
        LocalSearchManager.getInstance().itemAccessed(parent);
        this.mSearchPresenter.logSearchItemClicked(new AnalyticsHandler.EventProp().add("item_type", parent.getItemType()).add("item_label", String.format("%s (%s)", this.mItem.getLabel(), parent.getLabel())).add("entity_id", parent.getEntityId()).add("entity_type", parent.getEntityType()).add("query", parent.getExplanation().getQuery()).add("suggestion_probability", parent.getExplanation().getProbability()).add("item_position", this.mSearchPresenter.getAdapter().getRank(this)));
        this.mLinkResolver.resolve(this.mContext, new LinkRequest(this.mItem.getLinks()));
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public boolean onItemLongClick(View view) {
        RemoteSearchItem parent = this.mItem.getParent();
        this.mSearchPresenter.logSearchItemDragged(new AnalyticsHandler.EventProp().add("item_type", parent.getItemType()).add("item_label", String.format("%s (%s)", this.mItem.getLabel(), parent.getLabel())).add("entity_id", parent.getEntityId()).add("entity_type", parent.getEntityType()).add("query", parent.getExplanation().getQuery()).add("suggestion_probability", parent.getExplanation().getProbability()).add("item_position", this.mSearchPresenter.getAdapter().getRank(this)));
        return this.shortcutHandler.createShortcut(view, this.mItem);
    }
}
