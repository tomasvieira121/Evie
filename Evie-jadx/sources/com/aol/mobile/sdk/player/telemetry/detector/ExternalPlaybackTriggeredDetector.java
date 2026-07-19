package com.aol.mobile.sdk.player.telemetry.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.telemetry.TelemetrySender;

/* JADX INFO: loaded from: classes.dex */
public final class ExternalPlaybackTriggeredDetector implements PlayerStateObserver {
    private boolean castTriggered;
    private final TelemetrySender sender;

    public ExternalPlaybackTriggeredDetector(TelemetrySender telemetrySender) {
        this.sender = telemetrySender;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (this.castTriggered || !properties.isCasting) {
            return;
        }
        this.sender.sendExternalPlaybackTriggeredData();
        this.castTriggered = true;
    }
}
