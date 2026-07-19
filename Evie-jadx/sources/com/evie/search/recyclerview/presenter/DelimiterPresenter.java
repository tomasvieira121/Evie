package com.evie.search.recyclerview.presenter;

import android.content.Context;
import android.view.View;
import com.evie.search.R;
import com.evie.search.SearchPresenter;
import com.evie.search.recyclerview.viewholder.BaseViewHolder;
import com.evie.search.recyclerview.viewholder.SearchDelimiterViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class DelimiterPresenter implements BaseItemPresenter {
    private SearchDelimiterViewHolder mBoundViewHolder;
    private int mHeight;
    private final boolean mIncludeChevron;
    private SearchPresenter mSearchPresenter;

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public boolean onItemLongClick(View view) {
        return false;
    }

    public DelimiterPresenter(SearchPresenter searchPresenter, Context context, boolean z) {
        int dimensionPixelSize;
        this.mSearchPresenter = searchPresenter;
        this.mIncludeChevron = z;
        if (z) {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.search_delimiter_full_height);
        } else {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.search_delimiter_small_height);
        }
        this.mHeight = dimensionPixelSize;
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public int getType() {
        return SearchDelimiterViewHolder.f309ID;
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public int getItemViewHeight() {
        return this.mHeight;
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void bind(BaseViewHolder baseViewHolder) {
        this.mBoundViewHolder = (SearchDelimiterViewHolder) baseViewHolder;
        this.mBoundViewHolder.bindPresenter(this);
        this.mBoundViewHolder.bindItem(this.mIncludeChevron);
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void unbind(BaseViewHolder baseViewHolder) {
        SearchDelimiterViewHolder searchDelimiterViewHolder = this.mBoundViewHolder;
        if (searchDelimiterViewHolder == baseViewHolder) {
            searchDelimiterViewHolder.bindPresenter(null);
            this.mBoundViewHolder = null;
        }
    }

    @Override // com.evie.search.recyclerview.presenter.BaseItemPresenter
    public void onItemClick() {
        this.mSearchPresenter.expandLocalResults();
    }
}
