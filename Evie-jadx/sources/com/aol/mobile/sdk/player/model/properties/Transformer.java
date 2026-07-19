package com.aol.mobile.sdk.player.model.properties;

import androidx.core.util.Pair;
import com.aol.mobile.sdk.player.model.AdState;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.PlayerState;
import com.aol.mobile.sdk.player.model.PlaylistItem;
import com.aol.mobile.sdk.player.model.SeekState;
import com.aol.mobile.sdk.player.model.TimePosition;
import com.aol.mobile.sdk.player.model.VideoModel;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Transformer {
    public static void updateProps(Properties properties, PlayerState playerState) {
        updatePlaylistProps(properties.playlist, playerState);
        updatePlaylistItemProps(properties.playlistItem, playerState, properties.playlist.isLastVideo);
        updateAdProps(properties.f166ad, playerState);
        updateCameraProps(properties.camera, playerState);
        updateViewportProps(properties.viewport, playerState);
        updateSessionProps(properties.session, playerState);
        updateRootProps(properties, playerState);
    }

    private static void updateRootProps(Properties properties, PlayerState playerState) {
        properties.errorState = playerState.errorState;
        properties.isAutoplay = playerState.playerModel.isAutoplayOn;
        properties.isMuted = playerState.isMuted;
        properties.isSessionCompleted = playerState.isSessionCompleted;
        properties.isPlaybackStarted = playerState.isPlaybackStarted;
        properties.shouldPlay = playerState.shouldPlay && (playerState.isOnForeground || playerState.isCasting);
        properties.isCasting = playerState.isCasting;
        properties.isOnForeground = playerState.isOnForeground;
        switch (playerState.viewState) {
            case Ad:
                properties.viewState = Properties.ViewState.Ad;
                break;
            case Content:
                properties.viewState = Properties.ViewState.Content;
                break;
        }
    }

    private static void updateSessionProps(SessionProperties sessionProperties, PlayerState playerState) {
        sessionProperties.f168id = playerState.session.f165id;
        sessionProperties.playbackDuration = playerState.session.playbackDuration;
    }

    private static void updatePlaylistItemProps(PlaylistItemProperties playlistItemProperties, PlayerState playerState, boolean z) {
        PlaylistItem playlistItem = playerState.playerModel.videoModels.get(playerState.videoIndex);
        if (playlistItem.videoModel != null) {
            playlistItemProperties.voidVideo = null;
            if (playlistItemProperties.video == null) {
                playlistItemProperties.video = new VideoProperties();
            }
            updateVideoProps(playlistItemProperties.video, playerState, playlistItem.videoModel, z);
            return;
        }
        if (playlistItem.voidVideoModel != null) {
            playlistItemProperties.video = null;
            if (playlistItemProperties.voidVideo == null) {
                playlistItemProperties.voidVideo = new VoidVideoProperties();
            }
            playlistItemProperties.voidVideo.uniqueVideoId = playerState.uniqueVideoId;
            playlistItemProperties.voidVideo.reason = playlistItem.voidVideoModel.reason;
            return;
        }
        throw new IllegalStateException("Can not update PlaylistItemProperties");
    }

    static void updateAdProps(AdProperties adProperties, PlayerState playerState) {
        AdState adState = playerState.adState;
        TimePosition timePosition = adState.timePosition;
        adProperties.isVideoStreamPlaying = adState.isStreamPlaying;
        adProperties.isAdClicked = adState.isAdClicked;
        adProperties.embedClickThroughUrl = playerState.playerModel.embedClickThroughUrl;
        adProperties.showClickThroughClose = playerState.playerModel.showClickThroughClose;
        adProperties.errorState = adState.errorState;
        adProperties.url = adState.url;
        adProperties.targetUrl = adState.targetUrl;
        adProperties.shouldPlay = playerState.adState.shouldPlay && (playerState.isOnForeground || playerState.isCasting);
        adProperties.type = adState.adType;
        adProperties.adNum = adState.adNum;
        adProperties.isLoading = timePosition == null && adProperties.errorState == null;
        adProperties.isBuffering = adProperties.shouldPlay && !adProperties.isVideoStreamPlaying && adProperties.errorState == null;
        adProperties.isPlaying = adProperties.shouldPlay && adProperties.isVideoStreamPlaying && adProperties.errorState == null;
        adProperties.isFinished = timePosition != null && timePosition.getProgress() == 1.0d;
        adProperties.canBePlayed = (adProperties.shouldPlay || adProperties.isFinished || adProperties.isLoading || adProperties.errorState == ErrorState.CONTENT_ERROR) ? false : true;
        adProperties.canBePaused = (!adProperties.shouldPlay || adProperties.isFinished || adProperties.isLoading || adProperties.isBuffering || adProperties.errorState != null) ? false : true;
        adProperties.isScalable = adState.isScalable;
        adProperties.isMaintainAspectRatio = adState.isMaintainAspectRatio;
        if (timePosition != null) {
            if (adProperties.time == null) {
                adProperties.time = new TimeProperties();
            }
            updateTimeProps(adProperties.time, timePosition, null);
            return;
        }
        adProperties.time = null;
    }

    static void updateCameraProps(CameraProperties cameraProperties, PlayerState playerState) {
        cameraProperties.longitude = playerState.cameraDirection.getLongitude();
        cameraProperties.latitude = playerState.cameraDirection.getLatitude();
    }

    static void updatePlaylistProps(PlaylistProperties playlistProperties, PlayerState playerState) {
        playlistProperties.model = playerState.playerModel;
        playlistProperties.count = playlistProperties.model.videoModels.size();
        playlistProperties.currentIndex = playerState.videoIndex;
        playlistProperties.isFirstVideo = playlistProperties.currentIndex == 0;
        playlistProperties.isLastVideo = playlistProperties.currentIndex == playlistProperties.count - 1;
        playlistProperties.hasNextVideo = !playlistProperties.isLastVideo;
        playlistProperties.hasPreviousVideo = !playlistProperties.isFirstVideo;
    }

    static void updateSubtitlesProps(SubtitlesProperties subtitlesProperties, PlayerState playerState) {
        PlaylistItem playlistItem = playerState.playerModel.videoModels.get(playerState.videoIndex);
        if (playlistItem.videoModel != null) {
            subtitlesProperties.url = playlistItem.videoModel.subtitlesUrl;
            subtitlesProperties.lang = playlistItem.videoModel.subtitlesLang;
        } else {
            subtitlesProperties.url = null;
            subtitlesProperties.lang = null;
        }
    }

    static void updateTimeProps(TimeProperties timeProperties, TimePosition timePosition, Double d) {
        Long lValueOf;
        if (d == null) {
            lValueOf = null;
        } else {
            double duration = timePosition.getDuration();
            double dDoubleValue = d.doubleValue();
            Double.isNaN(duration);
            lValueOf = Long.valueOf(Math.round(duration * dDoubleValue));
        }
        timeProperties.seekPosition = lValueOf;
        timeProperties.duration = timePosition.getDuration();
        timeProperties.current = timePosition.getPosition();
        timeProperties.remaining = timePosition.getTimeLeft();
        timeProperties.progress = timePosition.getProgress();
        timeProperties.decile = (int) (timePosition.getProgress() * 10.0d);
        timeProperties.quartile = ((int) (timePosition.getProgress() * 100.0d)) / 25;
    }

    static void updateVideoProps(VideoProperties videoProperties, PlayerState playerState, VideoModel videoModel, boolean z) {
        videoProperties.model = videoModel;
        videoProperties.isVideoStreamPlaying = playerState.isVideoStreamPlaying;
        boolean z2 = false;
        boolean z3 = playerState.shouldPlay && (playerState.isOnForeground || playerState.isCasting);
        videoProperties.uniqueVideoId = playerState.uniqueVideoId;
        videoProperties.url = videoModel.url;
        videoProperties.thumbnailUrl = getThumbnailUrlFrom(videoProperties.model.thumbnails, Pair.create(Integer.valueOf(playerState.playerWidth), Integer.valueOf(playerState.playerHeight)));
        TimePosition timePosition = playerState.timePosition;
        videoProperties.type = getVideoType(timePosition);
        if (timePosition != null && timePosition.getDuration() != 0) {
            if (videoProperties.time == null) {
                videoProperties.time = new TimeProperties();
            }
            updateTimeProps(videoProperties.time, timePosition, playerState.seekPosition);
        } else {
            videoProperties.time = null;
        }
        videoProperties.isLive = videoProperties.type == VideoProperties.Type.LIVE;
        videoProperties.isStatic = videoProperties.type == VideoProperties.Type.STATIC;
        videoProperties.isFinished = (timePosition == null || videoProperties.isLive || timePosition.getProgress() != 1.0d) ? false : true;
        videoProperties.isBuffering = z3 && !videoProperties.isVideoStreamPlaying && playerState.errorState == null && !videoProperties.isFinished;
        videoProperties.isPlaying = z3 && videoProperties.isVideoStreamPlaying && playerState.errorState == null;
        videoProperties.isPaused = (z3 || videoProperties.isVideoStreamPlaying) ? false : true;
        videoProperties.isSeeking = playerState.seekState != SeekState.NONE;
        videoProperties.isLoading = timePosition == null && playerState.errorState == null;
        videoProperties.canBePlayed = ((z3 && playerState.errorState == null) || videoProperties.isFinished || videoProperties.isSeeking || videoProperties.isLoading || playerState.errorState == ErrorState.CONTENT_ERROR) ? false : true;
        videoProperties.canBePaused = (!z3 || videoProperties.isFinished || videoProperties.isSeeking || videoProperties.isLoading || videoProperties.isBuffering || playerState.errorState != null) ? false : true;
        videoProperties.canBeReplayed = z && (videoProperties.isFinished || playerState.errorState != null) && !videoProperties.isSeeking;
        if (videoProperties.isStatic && ((playerState.playerModel.isAutoplayOn || playerState.isPlaybackStarted) && !videoProperties.isSeeking)) {
            z2 = true;
        }
        videoProperties.canBeSeek = z2;
        videoProperties.bufferedPercentage = playerState.bufferedPercentage;
        videoProperties.title = videoProperties.model.title;
        videoProperties.renderer = videoProperties.model.renderer;
        videoProperties.hlsBitrate = playerState.hlsBitrate;
        videoProperties.audioTrackList.clear();
        videoProperties.textTrackList.clear();
        if (playerState.audioTrackList.size() > 1) {
            videoProperties.audioTrackList.addAll(playerState.audioTrackList);
            videoProperties.selectedAudioTrack = null;
            for (AudioTrack audioTrack : playerState.audioTrackList) {
                if (audioTrack.isSelected) {
                    videoProperties.selectedAudioTrack = audioTrack;
                    break;
                }
            }
        } else {
            videoProperties.selectedAudioTrack = null;
        }
        videoProperties.textTrackList.addAll(playerState.textTrackList);
        videoProperties.selectedTextTrack = null;
        for (TextTrack textTrack : playerState.textTrackList) {
            if (textTrack.isSelected) {
                videoProperties.selectedTextTrack = textTrack;
                break;
            }
        }
        if (!videoProperties.adCues.equals(playerState.adCues)) {
            videoProperties.adCues.clear();
            Iterator<Double> it = playerState.adCues.iterator();
            while (it.hasNext()) {
                videoProperties.adCues.add(Double.valueOf(it.next().doubleValue()));
            }
        }
        videoProperties.isScreenCastingEnabled = videoModel.isScreenCastingEnabled;
        updateSubtitlesProps(videoProperties.subtitles, playerState);
    }

    static void updateViewportProps(ViewportProperties viewportProperties, PlayerState playerState) {
        switch (playerState.viewState) {
            case Ad:
                viewportProperties.width = playerState.adState.width;
                viewportProperties.height = playerState.adState.height;
                break;
            case Content:
                viewportProperties.width = playerState.playerWidth;
                viewportProperties.height = playerState.playerHeight;
                break;
        }
    }

    static String getThumbnailUrlFrom(HashMap<Pair<Integer, Integer>, String> map, Pair<Integer, Integer> pair) {
        String str = null;
        if (map.size() == 0 || pair.first.intValue() == 0 || pair.second.intValue() == 0) {
            return null;
        }
        Float fValueOf = null;
        for (Map.Entry<Pair<Integer, Integer>, String> entry : map.entrySet()) {
            Pair<Integer, Integer> key = entry.getKey();
            String value = entry.getValue();
            float fMinDimensionRatio = minDimensionRatio(key, pair);
            if (fValueOf == null || ((fMinDimensionRatio >= 1.0f && fValueOf.floatValue() < fMinDimensionRatio) || (fValueOf.floatValue() < 1.0f && fValueOf.floatValue() < fMinDimensionRatio))) {
                fValueOf = Float.valueOf(fMinDimensionRatio);
                str = value;
            }
        }
        return str;
    }

    private static VideoProperties.Type getVideoType(TimePosition timePosition) {
        if (timePosition == null) {
            return VideoProperties.Type.UNKNOWN;
        }
        if (timePosition.getDuration() == 0) {
            return VideoProperties.Type.LIVE;
        }
        return VideoProperties.Type.STATIC;
    }

    private static float minDimensionRatio(Pair<Integer, Integer> pair, Pair<Integer, Integer> pair2) {
        return Math.min(pair.first.intValue() / pair2.first.intValue(), pair.second.intValue() / pair2.second.intValue());
    }
}
