package com.aol.mobile.sdk.player.listener;

import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.properties.Properties;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public abstract class ErrorListener implements PlayerStateObserver {
    private ErrorState errorState;

    public abstract void onError(ErrorState errorState);

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (properties.errorState != null && !properties.errorState.equals(this.errorState)) {
            onError(properties.errorState);
        }
        this.errorState = properties.errorState;
    }
}
