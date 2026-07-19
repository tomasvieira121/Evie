package com.evie.sidescreen.relatedcontent;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class RelatedArticlesActivity_ViewBinding implements Unbinder {
    private RelatedArticlesActivity target;

    public RelatedArticlesActivity_ViewBinding(RelatedArticlesActivity relatedArticlesActivity, View view) {
        this.target = relatedArticlesActivity;
        relatedArticlesActivity.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'mToolbar'", Toolbar.class);
        relatedArticlesActivity.mToolbarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.toolbar_title, "field 'mToolbarTitle'", TextView.class);
        relatedArticlesActivity.mLogo = (ImageView) Utils.findRequiredViewAsType(view, R.id.logo, "field 'mLogo'", ImageView.class);
        relatedArticlesActivity.mContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.container, "field 'mContainer'", FrameLayout.class);
        relatedArticlesActivity.mPopupView = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.popup_view, "field 'mPopupView'", ViewGroup.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        RelatedArticlesActivity relatedArticlesActivity = this.target;
        if (relatedArticlesActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        relatedArticlesActivity.mToolbar = null;
        relatedArticlesActivity.mToolbarTitle = null;
        relatedArticlesActivity.mLogo = null;
        relatedArticlesActivity.mContainer = null;
        relatedArticlesActivity.mPopupView = null;
    }
}
