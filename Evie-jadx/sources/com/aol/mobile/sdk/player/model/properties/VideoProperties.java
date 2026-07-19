package com.aol.mobile.sdk.player.model.properties;

import com.aol.mobile.sdk.player.model.VideoModel;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class VideoProperties {
    public int bufferedPercentage;
    public boolean canBePaused;
    public boolean canBePlayed;
    public boolean canBeReplayed;
    public boolean canBeSeek;
    public long hlsBitrate;
    public boolean isBuffering;
    public boolean isFinished;
    public boolean isLive;
    public boolean isLoading;
    public boolean isPaused;
    public boolean isPlaying;
    public boolean isScreenCastingEnabled;
    public boolean isSeeking;
    public boolean isStatic;
    public boolean isVideoStreamPlaying;
    public AudioTrack selectedAudioTrack;
    public TextTrack selectedTextTrack;
    public String thumbnailUrl;
    public TimeProperties time;
    public String title;
    public final SubtitlesProperties subtitles = new SubtitlesProperties();
    public final List<TextTrack> textTrackList = new ArrayList();
    public final List<AudioTrack> audioTrackList = new ArrayList();
    public String url = "";
    public VideoModel model = new VideoModel("", null, false);
    public Type type = Type.UNKNOWN;
    public String renderer = "com.onemobilesdk.videorenderer.flat@2.11";
    public String uniqueVideoId = "";
    public final Set<Double> adCues = new HashSet();

    public enum Type {
        UNKNOWN,
        LIVE,
        STATIC
    }
}
