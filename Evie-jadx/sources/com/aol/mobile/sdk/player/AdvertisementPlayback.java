package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdvertisementPlayback implements Playback {
    private final Player player;
    private final PlayerLogic playerLogic;

    @Override // com.aol.mobile.sdk.player.Playback
    public void setCameraDirection(double d, double d2) {
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void stopSeek() {
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateBufferedPercentage(int i) {
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateHlsBitrate(long j) {
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateTrackInfo(List<AudioTrack> list, List<TextTrack> list2) {
    }

    public AdvertisementPlayback(Player player) {
        this.player = player;
        this.playerLogic = player.playerLogic;
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateDuration(long j) {
        this.playerLogic.updateAdDuration(j);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updatePosition(long j) {
        this.playerLogic.updateAdPosition(j);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateViewportSize(int i, int i2) {
        this.playerLogic.updateAdDimensions(i, i2);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void updateReadyToPlayState(boolean z) {
        this.playerLogic.updateAdPlayback(z);
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void stopPlayback() {
        this.playerLogic.clearAd();
        this.player.firePropertiesUpdateEvent();
    }

    @Override // com.aol.mobile.sdk.player.Playback
    public void stopWithError(ErrorState errorState) {
        this.playerLogic.stopAdWithError(errorState);
        this.player.firePropertiesUpdateEvent();
    }
}
