package com.aol.mobile.sdk.renderer.viewmodel;

import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VideoVM {
    public Callbacks callbacks;
    public Long currentPosition;
    public boolean isActive;
    public boolean isAd;
    public boolean isCasting;
    public boolean isLive;
    public boolean isMuted;
    public double latitude;
    public double longitude;
    public Long seekPosition;
    public AudioTrack selectedAudioTrack;
    public TextTrack selectedTextTrack;
    public boolean shouldPlay;
    public String subtitleLang;
    public String subtitleUrl;
    public String title;
    public String videoUrl;
    public boolean areSubtitlesEnabled = true;
    public boolean isScalable = true;
    public boolean isMaintainAspectRatio = true;

    public interface Callbacks {

        public enum Error {
            CONNECTION,
            CONTENT
        }

        void onCameraDirectionChanged(double d, double d2);

        void onDurationReceived(long j);

        void onErrorOccurred(Error error);

        void onHlsBitrateUpdated(long j);

        void onSeekPerformed();

        void onTrackInfoAvailable(List<AudioTrack> list, List<TextTrack> list2);

        void onVideoBufferUpdated(int i);

        void onVideoEnded();

        void onVideoPlaybackFlagUpdated(boolean z);

        void onVideoPositionUpdated(long j);

        void onViewportResized(int i, int i2);
    }
}
