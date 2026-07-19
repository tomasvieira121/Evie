package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class QuartileDetector implements PlayerStateObserver {
    private Callback callback;
    private String sessionId;
    private int topReachedQuartile = 0;

    public interface Callback {
        void onQuartileDetected(int i, int i2, String str);
    }

    public QuartileDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        if (!properties.session.f168id.equals(this.sessionId)) {
            this.sessionId = null;
            this.topReachedQuartile = 0;
        }
        if (videoProperties.isVideoStreamPlaying && this.sessionId == null) {
            this.sessionId = properties.session.f168id;
        }
        if (videoProperties.time == null || this.sessionId == null || !videoProperties.isStatic) {
            return;
        }
        TimeProperties timeProperties = videoProperties.time;
        int i = timeProperties.quartile;
        int i2 = this.topReachedQuartile;
        if (i <= i2) {
            return;
        }
        while (true) {
            i2++;
            if (i2 <= timeProperties.quartile) {
                this.callback.onQuartileDetected(properties.playlist.currentIndex, i2, videoProperties.uniqueVideoId);
            } else {
                this.topReachedQuartile = timeProperties.quartile;
                return;
            }
        }
    }
}
