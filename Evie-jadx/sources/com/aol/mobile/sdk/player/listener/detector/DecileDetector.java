package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class DecileDetector implements PlayerStateObserver {
    private Callback callback;
    private String sessionId;
    private int topReachedDecile = 0;

    public interface Callback {
        void onDecileDetected(int i, int i2, String str);
    }

    public DecileDetector(Callback callback) {
        this.callback = callback;
    }

    private void reportNewDecile(Properties properties, VideoProperties videoProperties) {
        int iDecile;
        if (!videoProperties.isStatic || videoProperties.time == null || (iDecile = decile(videoProperties.time.progress)) <= (i = this.topReachedDecile)) {
            return;
        }
        while (true) {
            int i = i + 1;
            if (i <= iDecile) {
                this.callback.onDecileDetected(properties.playlist.currentIndex, i, videoProperties.uniqueVideoId);
            } else {
                this.topReachedDecile = iDecile;
                return;
            }
        }
    }

    int decile(double d) {
        return Math.min((int) (d * 10.0d), 10);
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (properties.playlistItem.video == null) {
            return;
        }
        if (!properties.session.f168id.equals(this.sessionId)) {
            this.sessionId = null;
            this.topReachedDecile = 0;
        }
        if (properties.playlistItem.video.isVideoStreamPlaying && this.sessionId == null) {
            this.sessionId = properties.session.f168id;
        }
        if (videoProperties.time == null || this.sessionId == null) {
            return;
        }
        reportNewDecile(properties, videoProperties);
    }
}
