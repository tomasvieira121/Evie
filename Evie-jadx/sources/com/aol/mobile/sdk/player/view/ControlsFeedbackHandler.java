package com.aol.mobile.sdk.player.view;

import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.player.Player;

/* JADX INFO: loaded from: classes.dex */
public interface ControlsFeedbackHandler {
    void onAudioTrackSelected(Player player, int i);

    void onButtonClick(Player player, ContentControls.Button button);

    void onCcTrackSelected(Player player, int i);

    void onScroll(Player player, float f, float f2);

    void onSeekStarted(Player player);

    void onSeekStopped(Player player);

    void onSeekTo(Player player, double d);
}
