package com.evie.sidescreen.personalize;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeActivity_ViewBinding implements Unbinder {
    private PersonalizeActivity target;

    public PersonalizeActivity_ViewBinding(PersonalizeActivity personalizeActivity, View view) {
        this.target = personalizeActivity;
        personalizeActivity.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'mToolbar'", Toolbar.class);
        personalizeActivity.mToolbarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.toolbar_title, "field 'mToolbarTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PersonalizeActivity personalizeActivity = this.target;
        if (personalizeActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        personalizeActivity.mToolbar = null;
        personalizeActivity.mToolbarTitle = null;
    }
}
