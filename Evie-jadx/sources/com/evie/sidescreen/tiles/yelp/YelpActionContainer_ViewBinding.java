package com.evie.sidescreen.tiles.yelp;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class YelpActionContainer_ViewBinding implements Unbinder {
    private YelpActionContainer target;

    public YelpActionContainer_ViewBinding(YelpActionContainer yelpActionContainer, View view) {
        this.target = yelpActionContainer;
        yelpActionContainer.mBarType = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.bar_type, "field 'mBarType'", ViewGroup.class);
        yelpActionContainer.mBarAction = (Button) Utils.findRequiredViewAsType(view, R.id.bar_action, "field 'mBarAction'", Button.class);
        yelpActionContainer.mButtonType = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.button_type, "field 'mButtonType'", ViewGroup.class);
        yelpActionContainer.mButtonDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.button_description, "field 'mButtonDescription'", TextView.class);
        yelpActionContainer.mButtonAction = (Button) Utils.findRequiredViewAsType(view, R.id.button_action, "field 'mButtonAction'", Button.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        YelpActionContainer yelpActionContainer = this.target;
        if (yelpActionContainer == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        yelpActionContainer.mBarType = null;
        yelpActionContainer.mBarAction = null;
        yelpActionContainer.mButtonType = null;
        yelpActionContainer.mButtonDescription = null;
        yelpActionContainer.mButtonAction = null;
    }
}
