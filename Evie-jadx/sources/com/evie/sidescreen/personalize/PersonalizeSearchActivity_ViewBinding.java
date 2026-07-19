package com.evie.sidescreen.personalize;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeSearchActivity_ViewBinding implements Unbinder {
    private PersonalizeSearchActivity target;

    public PersonalizeSearchActivity_ViewBinding(PersonalizeSearchActivity personalizeSearchActivity, View view) {
        this.target = personalizeSearchActivity;
        personalizeSearchActivity.mResultsContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.search_results_container, "field 'mResultsContainer'", FrameLayout.class);
        personalizeSearchActivity.mNoResults = Utils.findRequiredView(view, R.id.search_no_results, "field 'mNoResults'");
        personalizeSearchActivity.mSearchEditText = (EditText) Utils.findRequiredViewAsType(view, R.id.search_src_text, "field 'mSearchEditText'", EditText.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PersonalizeSearchActivity personalizeSearchActivity = this.target;
        if (personalizeSearchActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        personalizeSearchActivity.mResultsContainer = null;
        personalizeSearchActivity.mNoResults = null;
        personalizeSearchActivity.mSearchEditText = null;
    }
}
