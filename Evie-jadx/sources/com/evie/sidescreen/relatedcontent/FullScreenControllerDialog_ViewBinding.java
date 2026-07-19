package com.evie.sidescreen.relatedcontent;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenControllerDialog_ViewBinding implements Unbinder {
    private FullScreenControllerDialog target;

    public FullScreenControllerDialog_ViewBinding(FullScreenControllerDialog fullScreenControllerDialog, View view) {
        this.target = fullScreenControllerDialog;
        fullScreenControllerDialog.mContainer = Utils.findRequiredView(view, R.id.youtube_fullscreen_container, "field 'mContainer'");
        fullScreenControllerDialog.mControls = Utils.findRequiredView(view, R.id.fullscreen_controller, "field 'mControls'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        FullScreenControllerDialog fullScreenControllerDialog = this.target;
        if (fullScreenControllerDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        fullScreenControllerDialog.mContainer = null;
        fullScreenControllerDialog.mControls = null;
    }
}
