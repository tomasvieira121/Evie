package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;

/* JADX INFO: loaded from: classes.dex */
public final class IntentDetector implements PlayerStateObserver {
    private Callback mCallback;
    private String sessionId;

    public interface Callback {
        void onIntentDetected(int i, String str, String str2, float f);
    }

    public IntentDetector(Callback callback) {
        this.mCallback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (properties.playlistItem.video == null || !properties.shouldPlay || properties.session.f168id.equals(this.sessionId)) {
            return;
        }
        this.sessionId = properties.session.f168id;
        this.mCallback.onIntentDetected(properties.playlist.currentIndex, null, properties.playlistItem.video.uniqueVideoId, 0.0f);
    }
}
