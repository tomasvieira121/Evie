package com.evie.sidescreen.relatedcontent;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.google.android.exoplayer2.p005ui.PlayerView;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenExoDialog_ViewBinding implements Unbinder {
    private FullScreenExoDialog target;

    public FullScreenExoDialog_ViewBinding(FullScreenExoDialog fullScreenExoDialog, View view) {
        this.target = fullScreenExoDialog;
        fullScreenExoDialog.mPlayerView = (PlayerView) Utils.findRequiredViewAsType(view, R.id.exo_fullscreen_player, "field 'mPlayerView'", PlayerView.class);
        fullScreenExoDialog.mFullScreenController = Utils.findRequiredView(view, R.id.fullscreen_controller, "field 'mFullScreenController'");
        fullScreenExoDialog.mContainer = Utils.findRequiredView(view, R.id.exo_fullscreen_container, "field 'mContainer'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        FullScreenExoDialog fullScreenExoDialog = this.target;
        if (fullScreenExoDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        fullScreenExoDialog.mPlayerView = null;
        fullScreenExoDialog.mFullScreenController = null;
        fullScreenExoDialog.mContainer = null;
    }
}
