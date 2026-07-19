package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ContentPlayback implements Playback {
    private final Player player;
    private final PlayerLogic playerLogic;

    public ContentPlayback(Player player) {
        this.player = player;
        this.playerLogic = player.playerLogic;
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateDuration(long j) {
        this.playerLogic.updateVideoDuration(j);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updatePosition(long j) {
        this.playerLogic.updateVideoPosition(j);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateBufferedPercentage(int i) {
        this.playerLogic.updateVideoBufferedPercentage(i);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateViewportSize(int i, int i2) {
        this.playerLogic.updateVideoDimensions(i, i2);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateReadyToPlayState(boolean z) {
        this.playerLogic.updateVideoPlayback(z);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void stopSeek() {
        this.playerLogic.resetSeekPosition();
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void stopPlayback() {
        this.playerLogic.endVideoPlayback();
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void stopWithError(ErrorState errorState) {
        this.playerLogic.stopWithError(errorState);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void setCameraDirection(double d, double d2) {
        this.player.setCameraDirection(d, d2);
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateHlsBitrate(long j) {
        this.playerLogic.updateHlsBitrate(j);
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateTrackInfo(List<AudioTrack> list, List<TextTrack> list2) {
        this.playerLogic.updateTrackInfo(list, list2);
        this.player.firePropertiesUpdateEvent();
    }
}
