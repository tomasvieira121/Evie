package com.evie.sidescreen.webviewer;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class RelatedTopicsActivity_ViewBinding implements Unbinder {
    private RelatedTopicsActivity target;

    public RelatedTopicsActivity_ViewBinding(RelatedTopicsActivity relatedTopicsActivity, View view) {
        this.target = relatedTopicsActivity;
        relatedTopicsActivity.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'mToolbar'", Toolbar.class);
        relatedTopicsActivity.mToolbarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.toolbar_title, "field 'mToolbarTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        RelatedTopicsActivity relatedTopicsActivity = this.target;
        if (relatedTopicsActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        relatedTopicsActivity.mToolbar = null;
        relatedTopicsActivity.mToolbarTitle = null;
    }
}
