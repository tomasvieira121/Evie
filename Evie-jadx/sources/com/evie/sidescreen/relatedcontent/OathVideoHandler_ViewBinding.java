package com.evie.sidescreen.relatedcontent;

import android.view.View;
import android.view.ViewGroup;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.aol.mobile.sdk.player.view.PlayerView;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class OathVideoHandler_ViewBinding implements Unbinder {
    private OathVideoHandler target;

    public OathVideoHandler_ViewBinding(OathVideoHandler oathVideoHandler, View view) {
        this.target = oathVideoHandler;
        oathVideoHandler.mOathContainer = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.oath_container, "field 'mOathContainer'", ViewGroup.class);
        oathVideoHandler.mOathPlayerView = (PlayerView) Utils.findRequiredViewAsType(view, R.id.oath_player_view, "field 'mOathPlayerView'", PlayerView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        OathVideoHandler oathVideoHandler = this.target;
        if (oathVideoHandler == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        oathVideoHandler.mOathContainer = null;
        oathVideoHandler.mOathPlayerView = null;
    }
}
