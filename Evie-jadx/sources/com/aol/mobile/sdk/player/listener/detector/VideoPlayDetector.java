package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class VideoPlayDetector implements PlayerStateObserver {
    private Callback callback;
    private String sessionId;

    public interface Callback {
        void onPlayDetected(int i, int i2, int i3, String str);
    }

    public VideoPlayDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties != null && !properties.session.f168id.equals(this.sessionId) && videoProperties.isVideoStreamPlaying && properties.f166ad.url == null) {
            if (properties.viewport.width == 0 && properties.viewport.height == 0) {
                return;
            }
            this.sessionId = properties.session.f168id;
            this.callback.onPlayDetected(properties.playlist.currentIndex, properties.viewport.width, properties.viewport.height, videoProperties.uniqueVideoId);
        }
    }
}
