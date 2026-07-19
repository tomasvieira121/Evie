package com.aol.mobile.sdk.player.telemetry.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.p002js.PropertiesSerializer;
import com.aol.mobile.sdk.player.telemetry.TelemetrySender;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackErrorDetector implements PlayerStateObserver {
    private ErrorState errorState;
    private final TelemetrySender sender;

    public PlaybackErrorDetector(TelemetrySender telemetrySender) {
        this.sender = telemetrySender;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (properties.errorState == this.errorState || properties.errorState == null) {
            return;
        }
        String json = null;
        try {
            json = PropertiesSerializer.toJson(properties);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.sender.sendPlaybackErrorData(properties.errorState, json);
        this.errorState = properties.errorState;
    }
}
