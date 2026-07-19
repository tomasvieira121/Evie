package com.evie.sidescreen.tiles.yelp;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class YelpMultipleBusinessViewHolder_ViewBinding implements Unbinder {
    private YelpMultipleBusinessViewHolder target;

    public YelpMultipleBusinessViewHolder_ViewBinding(YelpMultipleBusinessViewHolder yelpMultipleBusinessViewHolder, View view) {
        this.target = yelpMultipleBusinessViewHolder;
        yelpMultipleBusinessViewHolder.mHeadline = (TextView) Utils.findRequiredViewAsType(view, R.id.headline, "field 'mHeadline'", TextView.class);
        yelpMultipleBusinessViewHolder.mDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.description, "field 'mDescription'", TextView.class);
        yelpMultipleBusinessViewHolder.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        yelpMultipleBusinessViewHolder.mActionContainer = (YelpActionContainer) Utils.findRequiredViewAsType(view, R.id.action_container, "field 'mActionContainer'", YelpActionContainer.class);
        yelpMultipleBusinessViewHolder.mDividerPadding = view.getContext().getResources().getDimensionPixelSize(R.dimen.ss_margin_side);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        YelpMultipleBusinessViewHolder yelpMultipleBusinessViewHolder = this.target;
        if (yelpMultipleBusinessViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        yelpMultipleBusinessViewHolder.mHeadline = null;
        yelpMultipleBusinessViewHolder.mDescription = null;
        yelpMultipleBusinessViewHolder.mRecyclerView = null;
        yelpMultipleBusinessViewHolder.mActionContainer = null;
    }
}
