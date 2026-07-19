package com.evie.common.settings;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.common.R;

/* JADX INFO: loaded from: classes.dex */
public class AbTestActivity_ViewBinding implements Unbinder {
    private AbTestActivity target;

    public AbTestActivity_ViewBinding(AbTestActivity abTestActivity, View view) {
        this.target = abTestActivity;
        abTestActivity.mExperimentLabel = (TextView) Utils.findRequiredViewAsType(view, R.id.ab_experiment_label, "field 'mExperimentLabel'", TextView.class);
        abTestActivity.mExperimentText = (EditText) Utils.findRequiredViewAsType(view, R.id.ab_experiment_text, "field 'mExperimentText'", EditText.class);
        abTestActivity.mGroupLabel = (TextView) Utils.findRequiredViewAsType(view, R.id.ab_group_label, "field 'mGroupLabel'", TextView.class);
        abTestActivity.mGroupText = (EditText) Utils.findRequiredViewAsType(view, R.id.ab_group_text, "field 'mGroupText'", EditText.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AbTestActivity abTestActivity = this.target;
        if (abTestActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        abTestActivity.mExperimentLabel = null;
        abTestActivity.mExperimentText = null;
        abTestActivity.mGroupLabel = null;
        abTestActivity.mGroupText = null;
    }
}
