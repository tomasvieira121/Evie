package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class BufferStartDetector implements PlayerStateObserver {
    private Callback callback;
    private long intentTime;
    private boolean isPrevBuffering = false;
    private String prevSessionId;
    private Properties.ViewState prevViewState;

    public interface Callback {
        void onBufferStartDetected(int i, String str, String str2, float f);
    }

    public BufferStartDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        boolean z;
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        Properties.ViewState viewState = properties.viewState;
        String str = properties.session.f168id;
        if (!str.equals(this.prevSessionId)) {
            this.intentTime = 0L;
        }
        if (this.intentTime == 0 && properties.shouldPlay) {
            this.intentTime = System.currentTimeMillis();
        }
        switch (viewState) {
            case Ad:
                z = properties.f166ad.url != null && properties.f166ad.isBuffering;
                break;
            case Content:
                z = videoProperties.isBuffering;
                break;
            default:
                z = false;
                break;
        }
        if (this.prevViewState != viewState || !str.equals(this.prevSessionId)) {
            this.isPrevBuffering = false;
        }
        if (z && !this.isPrevBuffering) {
            this.callback.onBufferStartDetected(properties.playlist.currentIndex, null, videoProperties.uniqueVideoId, System.currentTimeMillis() - this.intentTime);
        }
        this.isPrevBuffering = z;
        this.prevViewState = viewState;
        this.prevSessionId = str;
    }
}
