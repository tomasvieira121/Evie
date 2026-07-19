package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public class Video3SecDetector implements PlayerStateObserver {
    private long bft;
    private Callback callback;
    private boolean isSent = false;
    private String sessionId;
    private long startBufferTime;

    public interface Callback {
        void onVideo3SecDetected(int i, String str, int i2, int i3, Double d, boolean z);
    }

    public Video3SecDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        reportState(properties);
    }

    void reportState(Properties properties) {
        Double dValueOf;
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        if (!properties.session.f168id.equals(this.sessionId)) {
            this.sessionId = properties.session.f168id;
            this.isSent = false;
            this.bft = 0L;
            this.startBufferTime = 0L;
        }
        if (properties.viewState == Properties.ViewState.Ad) {
            updateBufferTime(System.currentTimeMillis(), false);
            return;
        }
        updateBufferTime(System.currentTimeMillis(), videoProperties.isBuffering);
        if (this.isSent || properties.session.playbackDuration < 3000) {
            return;
        }
        updateBufferTime(System.currentTimeMillis(), false);
        if (videoProperties.hlsBitrate > 0) {
            double d = videoProperties.hlsBitrate;
            Double.isNaN(d);
            dValueOf = Double.valueOf(d / 1000.0d);
        } else {
            dValueOf = null;
        }
        this.callback.onVideo3SecDetected(properties.playlist.currentIndex, videoProperties.uniqueVideoId, (int) this.bft, (int) (((!videoProperties.isStatic || videoProperties.time == null) ? properties.session.playbackDuration : videoProperties.time.current) / 1000.0f), dValueOf, properties.isMuted);
        this.isSent = true;
    }

    void updateBufferTime(long j, boolean z) {
        if (z) {
            if (this.startBufferTime == 0) {
                this.startBufferTime = j;
            }
        } else {
            long j2 = this.startBufferTime;
            if (j2 != 0) {
                this.bft += j - j2;
                this.startBufferTime = 0L;
            }
        }
    }
}
