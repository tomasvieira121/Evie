package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class ContextStartedDetector implements PlayerStateObserver {
    private Callback callback;
    private String sessionId = null;

    public interface Callback {
        void onContextStartedDetected(int i, String str);
    }

    public ContextStartedDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null || properties.session.f168id.equals(this.sessionId)) {
            return;
        }
        boolean z = videoProperties.isPlaying && properties.viewState == Properties.ViewState.Content;
        boolean z2 = properties.f166ad.isPlaying && properties.viewState == Properties.ViewState.Ad;
        if (z || z2) {
            this.sessionId = properties.session.f168id;
            this.callback.onContextStartedDetected(properties.playlist.currentIndex, videoProperties.uniqueVideoId);
        }
    }
}
