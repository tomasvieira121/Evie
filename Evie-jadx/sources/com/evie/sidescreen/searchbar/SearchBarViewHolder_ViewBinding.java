package com.evie.sidescreen.searchbar;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class SearchBarViewHolder_ViewBinding implements Unbinder {
    private SearchBarViewHolder target;
    private View view7f0b0192;
    private View view7f0b01a8;

    public SearchBarViewHolder_ViewBinding(final SearchBarViewHolder searchBarViewHolder, View view) {
        this.target = searchBarViewHolder;
        searchBarViewHolder.mSearchBarBackground = (ImageView) Utils.findRequiredViewAsType(view, R.id.search_bar_bg, "field 'mSearchBarBackground'", ImageView.class);
        searchBarViewHolder.mSearchIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.icon, "field 'mSearchIcon'", ImageView.class);
        searchBarViewHolder.mHint = (TextView) Utils.findRequiredViewAsType(view, R.id.text, "field 'mHint'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.settings, "field 'mSettingsIcon' and method 'onSettingsClick'");
        searchBarViewHolder.mSettingsIcon = (ImageView) Utils.castView(viewFindRequiredView, R.id.settings, "field 'mSettingsIcon'", ImageView.class);
        this.view7f0b01a8 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.searchbar.SearchBarViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                searchBarViewHolder.onSettingsClick(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.search_bar, "method 'onSearchBarClick'");
        this.view7f0b0192 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.searchbar.SearchBarViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                searchBarViewHolder.onSearchBarClick(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SearchBarViewHolder searchBarViewHolder = this.target;
        if (searchBarViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        searchBarViewHolder.mSearchBarBackground = null;
        searchBarViewHolder.mSearchIcon = null;
        searchBarViewHolder.mHint = null;
        searchBarViewHolder.mSettingsIcon = null;
        this.view7f0b01a8.setOnClickListener(null);
        this.view7f0b01a8 = null;
        this.view7f0b0192.setOnClickListener(null);
        this.view7f0b0192 = null;
    }
}
