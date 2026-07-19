package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class PlaylistStatisticDetector implements PlayerStateObserver {
    private int adsNum;
    private Callback callback;
    private long playlistPlaybackDuration;
    private String sessionId;
    private long videoPlaybackDuration;
    private int videoCount = 0;
    private boolean isSent = false;
    private boolean adPlayed = false;

    public interface Callback {
        void onStatisticDetected(int i, float f, int i2, String str);
    }

    public PlaylistStatisticDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        reportState(properties, videoProperties);
    }

    void reportState(Properties properties, VideoProperties videoProperties) {
        if (!properties.session.f168id.equals(this.sessionId)) {
            long j = this.videoPlaybackDuration;
            if (j != 0) {
                this.playlistPlaybackDuration += j;
            }
            if (videoProperties.isVideoStreamPlaying) {
                this.videoCount++;
                this.sessionId = properties.session.f168id;
            }
        }
        this.videoPlaybackDuration = properties.session.playbackDuration;
        if (properties.f166ad.time != null && !this.adPlayed) {
            this.adsNum++;
            this.adPlayed = true;
        }
        if (properties.f166ad.time == null) {
            this.adPlayed = false;
        }
        if (this.isSent || !properties.isSessionCompleted) {
            return;
        }
        this.isSent = true;
        this.playlistPlaybackDuration += this.videoPlaybackDuration;
        this.callback.onStatisticDetected(this.videoCount, this.playlistPlaybackDuration / 1000.0f, this.adsNum, videoProperties.uniqueVideoId);
    }
}
