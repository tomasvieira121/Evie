package com.evie.sidescreen.relatedcontent;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.google.android.exoplayer2.p005ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p005ui.PlayerView;

/* JADX INFO: loaded from: classes.dex */
public class ExoVideoHandler_ViewBinding implements Unbinder {
    private ExoVideoHandler target;

    public ExoVideoHandler_ViewBinding(ExoVideoHandler exoVideoHandler, View view) {
        this.target = exoVideoHandler;
        exoVideoHandler.mExoplayerContainer = (AspectRatioFrameLayout) Utils.findRequiredViewAsType(view, R.id.exoplayer_container, "field 'mExoplayerContainer'", AspectRatioFrameLayout.class);
        exoVideoHandler.mSimpleExoPlayerView = (PlayerView) Utils.findRequiredViewAsType(view, R.id.simple_exoplayer_view, "field 'mSimpleExoPlayerView'", PlayerView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ExoVideoHandler exoVideoHandler = this.target;
        if (exoVideoHandler == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        exoVideoHandler.mExoplayerContainer = null;
        exoVideoHandler.mSimpleExoPlayerView = null;
    }
}
