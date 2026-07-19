package com.aol.mobile.sdk.player.listener;

import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.VideoModel;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public abstract class VideoPlaybackListener implements PlayerStateObserver {
    private ErrorState errorState;
    private boolean hasStarted;
    private Boolean isLoading;
    private Boolean isVideoPlaying;
    private Integer quartile;
    private Integer videoIndex;

    public abstract void onPlaybackError(VideoModel videoModel, ErrorState errorState);

    public abstract void onVideoEnded(VideoModel videoModel);

    public abstract void onVideoLoadingEnded(VideoModel videoModel);

    public abstract void onVideoLoadingStarted(VideoModel videoModel);

    public abstract void onVideoPause(VideoModel videoModel);

    public abstract void onVideoPlay(VideoModel videoModel);

    public abstract void onVideoQuartilePlayed(VideoModel videoModel, Quartile quartile);

    public abstract void onVideoStarted(VideoModel videoModel);

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public final void onPlayerStateChanged(Properties properties) {
        checkLoadingEvents(properties);
        checkPlaybackEvents(properties);
        checkQuartileEvents(properties);
    }

    private void checkPlaybackEvents(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        VideoModel videoModel = videoProperties.model;
        ErrorState errorState = properties.errorState;
        boolean z = videoProperties.isPlaying;
        int i = properties.playlist.currentIndex;
        Integer num = this.videoIndex;
        boolean z2 = num == null || num.intValue() != i;
        Boolean bool = this.isVideoPlaying;
        if (bool == null || bool.booleanValue() != z) {
            if (z) {
                if (this.hasStarted) {
                    onVideoPlay(videoModel);
                } else {
                    this.hasStarted = true;
                    onVideoStarted(videoProperties.model);
                }
            } else if (z2 || videoProperties.isFinished) {
                this.hasStarted = false;
                onVideoEnded(videoModel);
            } else {
                onVideoPause(videoModel);
            }
        }
        if ((this.errorState == null && errorState != null) || (this.errorState != errorState && errorState != null)) {
            onPlaybackError(videoModel, errorState);
        }
        this.videoIndex = Integer.valueOf(i);
        this.isVideoPlaying = Boolean.valueOf(z);
        this.errorState = errorState;
    }

    private void checkQuartileEvents(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties != null && videoProperties.isStatic) {
            TimeProperties timeProperties = videoProperties.time;
            if (timeProperties != null) {
                int i = timeProperties.quartile;
                Integer num = this.quartile;
                if (num == null || num.intValue() != i) {
                    VideoModel videoModel = videoProperties.model;
                    Quartile quartileValueOf = Quartile.valueOf(timeProperties.quartile);
                    if (quartileValueOf != Quartile.UNKNOWN) {
                        onVideoQuartilePlayed(videoModel, quartileValueOf);
                    }
                }
                this.quartile = Integer.valueOf(i);
                return;
            }
            this.quartile = null;
        }
    }

    private void checkLoadingEvents(Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        boolean z = videoProperties.isLoading || videoProperties.isBuffering;
        VideoModel videoModel = videoProperties.model;
        Boolean bool = this.isVideoPlaying;
        if (bool == null || bool != this.isLoading) {
            if (z) {
                onVideoLoadingStarted(videoModel);
            } else {
                onVideoLoadingEnded(videoModel);
            }
        }
        this.isLoading = Boolean.valueOf(z);
    }

    public enum Quartile {
        FIRST,
        SECOND,
        THIRD,
        FORTH,
        UNKNOWN;

        public static Quartile valueOf(int i) {
            switch (i) {
                case 0:
                    return FIRST;
                case 1:
                    return SECOND;
                case 2:
                    return THIRD;
                case 3:
                    return FORTH;
                default:
                    return UNKNOWN;
            }
        }
    }
}
