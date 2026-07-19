package com.evie.sidescreen.relatedcontent;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenControllerFragment_ViewBinding implements Unbinder {
    private FullScreenControllerFragment target;

    public FullScreenControllerFragment_ViewBinding(FullScreenControllerFragment fullScreenControllerFragment, View view) {
        this.target = fullScreenControllerFragment;
        fullScreenControllerFragment.mContainer = Utils.findRequiredView(view, R.id.youtube_fullscreen_container, "field 'mContainer'");
        fullScreenControllerFragment.mControls = Utils.findRequiredView(view, R.id.fullscreen_controller, "field 'mControls'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        FullScreenControllerFragment fullScreenControllerFragment = this.target;
        if (fullScreenControllerFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        fullScreenControllerFragment.mContainer = null;
        fullScreenControllerFragment.mControls = null;
    }
}
