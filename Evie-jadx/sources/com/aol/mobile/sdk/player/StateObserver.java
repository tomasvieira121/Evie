package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.player.model.PlayerState;
import com.aol.mobile.sdk.player.model.properties.Properties;

/* JADX INFO: loaded from: classes.dex */
public interface StateObserver {
    void onStateChanged(PlayerState playerState, Properties properties);
}
