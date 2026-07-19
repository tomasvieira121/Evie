package com.evie.sidescreen.tiles.yelp;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class YelpSingleBusinessViewHolder_ViewBinding implements Unbinder {
    private YelpSingleBusinessViewHolder target;

    public YelpSingleBusinessViewHolder_ViewBinding(YelpSingleBusinessViewHolder yelpSingleBusinessViewHolder, View view) {
        this.target = yelpSingleBusinessViewHolder;
        yelpSingleBusinessViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitle'", TextView.class);
        yelpSingleBusinessViewHolder.mSubtitle = (TextView) Utils.findRequiredViewAsType(view, R.id.subtitle, "field 'mSubtitle'", TextView.class);
        yelpSingleBusinessViewHolder.mDistance = (TextView) Utils.findRequiredViewAsType(view, R.id.distance, "field 'mDistance'", TextView.class);
        yelpSingleBusinessViewHolder.mPrice = (TextView) Utils.findRequiredViewAsType(view, R.id.price, "field 'mPrice'", TextView.class);
        yelpSingleBusinessViewHolder.mRatingContainer = (YelpRatingContainer) Utils.findRequiredViewAsType(view, R.id.rating_container, "field 'mRatingContainer'", YelpRatingContainer.class);
        yelpSingleBusinessViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        yelpSingleBusinessViewHolder.mYelpActionContainer = (YelpActionContainer) Utils.findOptionalViewAsType(view, R.id.action_container, "field 'mYelpActionContainer'", YelpActionContainer.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        YelpSingleBusinessViewHolder yelpSingleBusinessViewHolder = this.target;
        if (yelpSingleBusinessViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        yelpSingleBusinessViewHolder.mTitle = null;
        yelpSingleBusinessViewHolder.mSubtitle = null;
        yelpSingleBusinessViewHolder.mDistance = null;
        yelpSingleBusinessViewHolder.mPrice = null;
        yelpSingleBusinessViewHolder.mRatingContainer = null;
        yelpSingleBusinessViewHolder.mImage = null;
        yelpSingleBusinessViewHolder.mYelpActionContainer = null;
    }
}
