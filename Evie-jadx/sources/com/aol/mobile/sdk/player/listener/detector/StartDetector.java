package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;

/* JADX INFO: loaded from: classes.dex */
public final class StartDetector implements PlayerStateObserver {
    private long intentTime;
    private Callback mCallback;
    private String sessionId;

    public interface Callback {
        void onStartDetected(int i, String str, String str2, float f);
    }

    public StartDetector(Callback callback) {
        this.mCallback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (properties.playlistItem.video == null || !properties.shouldPlay || properties.session.f168id.equals(this.sessionId)) {
            return;
        }
        if (this.intentTime == 0) {
            this.intentTime = System.currentTimeMillis();
        }
        if (properties.viewState != Properties.ViewState.Ad || properties.f166ad.isVideoStreamPlaying) {
            if (properties.viewState != Properties.ViewState.Content || properties.playlistItem.video.isVideoStreamPlaying) {
                this.mCallback.onStartDetected(properties.playlist.currentIndex, null, properties.playlistItem.video.uniqueVideoId, System.currentTimeMillis() - this.intentTime);
                this.sessionId = properties.session.f168id;
                this.intentTime = 0L;
            }
        }
    }
}
