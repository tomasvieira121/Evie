package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface Playback {
    void setCameraDirection(double d, double d2);

    void stopPlayback();

    void stopSeek();

    void stopWithError(ErrorState errorState);

    void updateBufferedPercentage(int i);

    void updateDuration(long j);

    void updateHlsBitrate(long j);

    void updatePosition(long j);

    void updateReadyToPlayState(boolean z);

    void updateTrackInfo(List<AudioTrack> list, List<TextTrack> list2);

    void updateViewportSize(int i, int i2);
}
