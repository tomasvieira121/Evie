package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class HeartbeatDetector implements PlayerStateObserver {
    private long bft;
    private final Callback callback;
    private String sessionId;
    private long startBufferTime;
    private long timeToFire;

    public interface Callback {
        void onHeartbeatDetected(int i, String str, int i2, int i3, int i4, int i5, int i6, Double d, boolean z);
    }

    public HeartbeatDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        String str;
        Double dValueOf;
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        if (properties.viewState == Properties.ViewState.Ad) {
            updateBufferTime(System.currentTimeMillis(), false);
            return;
        }
        if (videoProperties.isStatic) {
            return;
        }
        if ((this.sessionId == null && properties.session.f168id != null) || ((str = this.sessionId) != null && !str.equals(properties.session.f168id))) {
            this.sessionId = properties.session.f168id;
            this.timeToFire = 20L;
            this.bft = 0L;
            this.startBufferTime = 0L;
        }
        updateBufferTime(System.currentTimeMillis(), videoProperties.isBuffering);
        if (properties.session.playbackDuration / 1000 >= this.timeToFire) {
            updateBufferTime(System.currentTimeMillis(), false);
            if (videoProperties.hlsBitrate > 0) {
                double d = videoProperties.hlsBitrate;
                Double.isNaN(d);
                dValueOf = Double.valueOf(d / 1000.0d);
            } else {
                dValueOf = null;
            }
            this.callback.onHeartbeatDetected(properties.playlist.currentIndex, videoProperties.uniqueVideoId, (int) (properties.session.playbackDuration / 1000), (int) (properties.session.playbackDuration / 1000), properties.viewport.width, properties.viewport.height, (int) this.bft, dValueOf, properties.isMuted);
            this.bft = 0L;
            this.timeToFire += 20;
        }
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
