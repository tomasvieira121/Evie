package com.aol.mobile.sdk.player.view.p003ui;

import com.aol.mobile.sdk.player.Playback;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class StreamStreamListener implements VideoVM.Callbacks {
    private final Playback playback;

    public StreamStreamListener(Playback playback) {
        this.playback = playback;
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onDurationReceived(long j) {
        this.playback.updateDuration(j);
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onVideoPositionUpdated(long j) {
        this.playback.updatePosition(j);
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onVideoBufferUpdated(int i) {
        this.playback.updateBufferedPercentage(i);
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onViewportResized(int i, int i2) {
        this.playback.updateViewportSize(i, i2);
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onVideoPlaybackFlagUpdated(boolean z) {
        this.playback.updateReadyToPlayState(z);
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onVideoEnded() {
        this.playback.stopPlayback();
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onErrorOccurred(VideoVM.Callbacks.Error error) {
        switch (error) {
            case CONNECTION:
                this.playback.stopWithError(ErrorState.CONNECTION_ERROR);
                break;
            case CONTENT:
                this.playback.stopWithError(ErrorState.CONTENT_ERROR);
                break;
        }
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onCameraDirectionChanged(double d, double d2) {
        this.playback.setCameraDirection(d, d2);
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onSeekPerformed() {
        this.playback.stopSeek();
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onHlsBitrateUpdated(long j) {
        this.playback.updateHlsBitrate(j);
    }

    @Override // com.aol.mobile.sdk.renderer.viewmodel.VideoVM.Callbacks
    public void onTrackInfoAvailable(List<AudioTrack> list, List<TextTrack> list2) {
        this.playback.updateTrackInfo(list, list2);
    }
}
