package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public class VideoTimeDetector implements PlayerStateObserver {
    private Callback callback;
    private long playbackDuration;
    private Double progress;
    private String sessionId;
    private String uniqueVideoId;
    private Integer videoIndex;

    public interface Callback {
        void onTimeDetected(int i, float f, Double d, String str);
    }

    public VideoTimeDetector(Callback callback) {
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
        Integer num;
        TimeProperties timeProperties = videoProperties.time;
        boolean z = properties.isSessionCompleted;
        Double dValueOf = timeProperties == null ? null : Double.valueOf(timeProperties.progress);
        if (!properties.session.f168id.equals(this.sessionId) || z) {
            long j = z ? properties.session.playbackDuration : this.playbackDuration;
            if (j > 0) {
                this.callback.onTimeDetected((z || (num = this.videoIndex) == null) ? properties.playlist.currentIndex : num.intValue(), j / 1000.0f, z ? dValueOf : this.progress, z ? videoProperties.uniqueVideoId : this.uniqueVideoId);
            }
        }
        this.sessionId = properties.session.f168id;
        this.progress = dValueOf;
        this.playbackDuration = properties.session.playbackDuration;
        this.videoIndex = Integer.valueOf(properties.playlist.currentIndex);
        this.uniqueVideoId = videoProperties.uniqueVideoId;
    }
}
