package com.aol.mobile.sdk.player.model.properties;

import com.aol.mobile.sdk.player.model.ErrorState;

/* JADX INFO: loaded from: classes.dex */
public final class Properties {
    public ErrorState errorState;
    public boolean isAutoplay;
    public boolean isCasting;
    public boolean isMuted;
    public boolean isPlaybackStarted;
    public boolean isSessionCompleted;
    public boolean shouldPlay;
    public boolean isOnForeground = true;
    public ViewState viewState = ViewState.Content;
    public final PlaylistProperties playlist = new PlaylistProperties();
    public final PlaylistItemProperties playlistItem = new PlaylistItemProperties();

    /* JADX INFO: renamed from: ad */
    public final AdProperties f166ad = new AdProperties();
    public final CameraProperties camera = new CameraProperties();
    public final ViewportProperties viewport = new ViewportProperties();
    public final SessionProperties session = new SessionProperties();

    public enum ViewState {
        Content,
        Ad
    }
}
