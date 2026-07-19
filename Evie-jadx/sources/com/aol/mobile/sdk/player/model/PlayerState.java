package com.aol.mobile.sdk.player.model;

import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class PlayerState {
    public int bufferedPercentage;
    public ErrorState errorState;
    public long hlsBitrate;
    public boolean isCasting;
    public boolean isMuted;
    public boolean isPlaybackStarted;
    public boolean isSessionCompleted;
    public boolean isVideoStreamPlaying;
    public int playerHeight;
    public final PlayerModel playerModel;
    public int playerWidth;
    public Double seekPosition;
    public boolean shouldPlay;
    public TimePosition timePosition;
    public String uniqueVideoId;
    public int videoIndex;
    public final Session session = new Session();
    public final Set<Double> adCues = new HashSet();
    public boolean isOnForeground = true;
    public ViewState viewState = ViewState.Content;
    public List<TextTrack> textTrackList = Collections.unmodifiableList(Collections.emptyList());
    public List<AudioTrack> audioTrackList = Collections.unmodifiableList(Collections.emptyList());
    public final CameraDirection cameraDirection = new CameraDirection();
    public final AdState adState = new AdState();
    public final VrmState vrmState = new VrmState();
    public SeekState seekState = SeekState.NONE;

    public enum ViewState {
        Content,
        Ad
    }

    public PlayerState(PlayerModel playerModel, String str) {
        this.playerModel = playerModel;
        this.shouldPlay = playerModel.isAutoplayOn;
        this.uniqueVideoId = str;
        this.isPlaybackStarted = playerModel.isAutoplayOn;
    }
}
