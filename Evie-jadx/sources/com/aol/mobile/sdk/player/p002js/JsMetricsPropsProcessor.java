package com.aol.mobile.sdk.player.p002js;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.p002js.async.JsProcessorThread;

/* JADX INFO: loaded from: classes.dex */
class JsMetricsPropsProcessor implements PlayerStateObserver {
    private boolean isSessionCompleted;
    private final JsProcessorThread jsProcessorThread;

    JsMetricsPropsProcessor(JsProcessorThread jsProcessorThread) {
        this.jsProcessorThread = jsProcessorThread;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (this.isSessionCompleted) {
            return;
        }
        this.jsProcessorThread.process(properties);
        if (properties.isSessionCompleted) {
            this.isSessionCompleted = true;
            this.jsProcessorThread.quit();
        }
    }
}
