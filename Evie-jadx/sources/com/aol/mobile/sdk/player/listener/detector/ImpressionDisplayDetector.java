package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;

/* JADX INFO: loaded from: classes.dex */
public final class ImpressionDisplayDetector implements PlayerStateObserver {
    private boolean isDisplaySent;
    private Callback mCallback;
    long time = System.currentTimeMillis();

    public interface Callback {
        void onDisplayDetected(int i, int i2, long j, String str);

        void onImpressionDetected();
    }

    public ImpressionDisplayDetector(Callback callback) {
        this.mCallback = callback;
        this.mCallback.onImpressionDetected();
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        String str = properties.playlistItem.video == null ? properties.playlistItem.voidVideo.uniqueVideoId : properties.playlistItem.video.uniqueVideoId;
        if (this.isDisplaySent) {
            return;
        }
        if (properties.viewport.width == 0 && properties.viewport.height == 0) {
            return;
        }
        this.time = System.currentTimeMillis() - this.time;
        this.mCallback.onDisplayDetected(properties.viewport.width, properties.viewport.height, this.time, str);
        this.isDisplaySent = true;
    }
}
