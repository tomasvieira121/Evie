package com.google.android.youtube.player;

/* JADX INFO: loaded from: classes.dex */
public interface YouTubePlayer {

    public enum ErrorReason {
        EMBEDDING_DISABLED,
        BLOCKED_FOR_APP,
        NOT_PLAYABLE,
        NETWORK_ERROR,
        UNAUTHORIZED_OVERLAY,
        PLAYER_VIEW_TOO_SMALL,
        PLAYER_VIEW_NOT_VISIBLE,
        EMPTY_PLAYLIST,
        AUTOPLAY_DISABLED,
        USER_DECLINED_RESTRICTED_CONTENT,
        USER_DECLINED_HIGH_BANDWIDTH,
        UNEXPECTED_SERVICE_DISCONNECTION,
        INTERNAL_ERROR,
        UNKNOWN
    }

    public interface OnFullscreenListener {
        void onFullscreen(boolean z);
    }

    public interface OnInitializedListener {
        void onInitializationFailure(Provider provider, YouTubeInitializationResult youTubeInitializationResult);

        void onInitializationSuccess(Provider provider, YouTubePlayer youTubePlayer, boolean z);
    }

    public interface PlayerStateChangeListener {
        void onAdStarted();

        void onError(ErrorReason errorReason);

        void onLoaded(String str);

        void onLoading();

        void onVideoEnded();

        void onVideoStarted();
    }

    public enum PlayerStyle {
        DEFAULT,
        MINIMAL,
        CHROMELESS
    }

    public interface Provider {
    }

    void addFullscreenControlFlag(int i);

    void cueVideo(String str);

    int getCurrentTimeMillis();

    int getDurationMillis();

    boolean isPlaying();

    void loadVideo(String str);

    void pause();

    void play();

    void release();

    void seekToMillis(int i);

    void setFullscreen(boolean z);

    void setOnFullscreenListener(OnFullscreenListener onFullscreenListener);

    void setPlayerStateChangeListener(PlayerStateChangeListener playerStateChangeListener);

    void setPlayerStyle(PlayerStyle playerStyle);
}
