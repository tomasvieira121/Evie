package com.aol.mobile.sdk.player.view.model;

import android.text.format.DateUtils;
import com.aol.mobile.sdk.controls.AdControls;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;
import com.aol.mobile.sdk.player.model.properties.VoidVideoProperties;
import com.aol.mobile.sdk.player.view.PlayerViewport;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;

/* JADX INFO: loaded from: classes.dex */
public class UiPropertiesTranslator {
    public static void translatePropsTo(Properties properties, ContentControls.ViewModel viewModel) {
        VideoProperties videoProperties = properties.playlistItem.video;
        VoidVideoProperties voidVideoProperties = properties.playlistItem.voidVideo;
        if (videoProperties != null) {
            translateVideoProps(properties, viewModel, videoProperties);
        } else if (voidVideoProperties != null) {
            translateVoidVideoProps(properties, viewModel, voidVideoProperties);
        }
    }

    private static void translateVoidVideoProps(Properties properties, ContentControls.ViewModel viewModel, VoidVideoProperties voidVideoProperties) {
        viewModel.isLoading = false;
        viewModel.isPlayButtonVisible = false;
        viewModel.isPauseButtonVisible = false;
        viewModel.isReplayButtonVisible = false;
        viewModel.isNextButtonVisible = properties.playlist.count > 1;
        viewModel.isNextButtonEnabled = properties.playlist.hasNextVideo;
        viewModel.isPrevButtonVisible = properties.playlist.count > 1;
        viewModel.isPrevButtonEnabled = properties.playlist.hasPreviousVideo;
        viewModel.isSeekerVisible = false;
        viewModel.seekerBufferedProgress = 0;
        viewModel.seekerMaxValue = 100;
        viewModel.seekerProgress = 0.0d;
        viewModel.seekerCurrentTimeText = "00:00";
        viewModel.seekerTimeLeftText = "00:00";
        viewModel.seekerDurationText = "00:00";
        viewModel.isSeekForwardButtonVisible = false;
        viewModel.isSeekBackButtonVisible = false;
        viewModel.isCompassViewVisible = false;
        viewModel.compassLatitude = properties.camera.latitude;
        viewModel.compassLongitude = properties.camera.longitude;
        viewModel.isTitleVisible = true;
        viewModel.titleText = voidVideoProperties.reason;
        viewModel.isTrackChooserButtonVisible = false;
        viewModel.isTrackChooserButtonEnabled = false;
        viewModel.thumbnailImageUrl = null;
        viewModel.isThumbnailImageVisible = false;
        viewModel.isStreamPlaying = false;
        viewModel.isLiveIndicatorVisible = false;
        viewModel.isOnLiveEdge = false;
        viewModel.isCastButtonVisible = false;
        viewModel.isCasting = false;
        viewModel.adCues.clear();
    }

    private static void translateVideoProps(Properties properties, ContentControls.ViewModel viewModel, VideoProperties videoProperties) {
        boolean z = properties.isPlaybackStarted;
        boolean z2 = videoProperties.canBeSeek;
        boolean z3 = videoProperties.isSeeking;
        String str = videoProperties.title;
        TimeProperties timeProperties = videoProperties.time;
        boolean z4 = false;
        viewModel.isLoading = videoProperties.isLoading || videoProperties.isBuffering;
        viewModel.isPlayButtonVisible = videoProperties.canBePlayed;
        viewModel.isPauseButtonVisible = videoProperties.canBePaused;
        viewModel.isReplayButtonVisible = videoProperties.canBeReplayed;
        viewModel.isNextButtonVisible = !z3 && properties.playlist.count > 1;
        viewModel.isNextButtonEnabled = properties.playlist.hasNextVideo;
        viewModel.isPrevButtonVisible = !z3 && properties.playlist.count > 1;
        viewModel.isPrevButtonEnabled = properties.playlist.hasPreviousVideo;
        viewModel.isSeekerVisible = (timeProperties == null || timeProperties.duration == 0 || (!properties.isAutoplay && !properties.isPlaybackStarted)) ? false : true;
        viewModel.seekerBufferedProgress = videoProperties.bufferedPercentage;
        if (timeProperties == null) {
            viewModel.seekerMaxValue = 100;
            viewModel.seekerProgress = 0.0d;
            viewModel.seekerCurrentTimeText = "00:00";
            viewModel.seekerTimeLeftText = "00:00";
            viewModel.seekerDurationText = "00:00";
        } else {
            viewModel.seekerMaxValue = (int) (timeProperties.duration / 10);
            viewModel.seekerProgress = timeProperties.progress;
            viewModel.seekerCurrentTimeText = DateUtils.formatElapsedTime(timeProperties.current / 1000);
            viewModel.seekerTimeLeftText = DateUtils.formatElapsedTime(timeProperties.remaining / 1000);
            viewModel.seekerDurationText = DateUtils.formatElapsedTime(timeProperties.duration / 1000);
        }
        viewModel.isSeekForwardButtonVisible = z && z2;
        viewModel.isSeekBackButtonVisible = z && z2;
        viewModel.isCompassViewVisible = !videoProperties.renderer.startsWith("com.onemobilesdk.videorenderer.flat");
        viewModel.compassLatitude = properties.camera.latitude;
        viewModel.compassLongitude = properties.camera.longitude;
        viewModel.isTitleVisible = z && str != null;
        viewModel.titleText = str;
        viewModel.thumbnailImageUrl = videoProperties.thumbnailUrl;
        viewModel.isThumbnailImageVisible = (properties.isAutoplay || properties.isPlaybackStarted) ? false : true;
        viewModel.isStreamPlaying = videoProperties.isVideoStreamPlaying;
        viewModel.isTrackChooserButtonVisible = z;
        viewModel.isTrackChooserButtonEnabled = videoProperties.audioTrackList.size() > 1 || videoProperties.textTrackList.size() > 1;
        viewModel.audioTracks.clear();
        for (AudioTrack audioTrack : videoProperties.audioTrackList) {
            viewModel.audioTracks.add(new ContentControls.ViewModel.TrackOptionVM(audioTrack.title, audioTrack.isSelected));
        }
        viewModel.ccTracks.clear();
        for (TextTrack textTrack : videoProperties.textTrackList) {
            viewModel.ccTracks.add(new ContentControls.ViewModel.TrackOptionVM(textTrack.title, textTrack.isSelected));
        }
        viewModel.isLiveIndicatorVisible = videoProperties.isLive;
        viewModel.isOnLiveEdge = videoProperties.isLive && videoProperties.isVideoStreamPlaying;
        viewModel.isCastButtonVisible = z && videoProperties.isScreenCastingEnabled;
        if (z && properties.isCasting) {
            z4 = true;
        }
        viewModel.isCasting = z4;
        if (viewModel.adCues.equals(videoProperties.adCues)) {
            return;
        }
        viewModel.adCues.clear();
        viewModel.adCues.addAll(videoProperties.adCues);
    }

    public static void translatePropsTo(Properties properties, PlayerViewport.ViewModel viewModel) {
        viewModel.contentRendererId = properties.playlistItem.video == null ? null : properties.playlistItem.video.renderer;
        viewModel.isCasting = properties.isCasting;
        viewModel.isAdVisible = properties.viewState == Properties.ViewState.Ad && properties.f166ad.url != null;
        viewModel.isAdControlsVisible = properties.viewState == Properties.ViewState.Ad && properties.f166ad.url != null;
        viewModel.isContentVisible = properties.viewState == Properties.ViewState.Content;
        viewModel.isContentControlsVisible = properties.viewState == Properties.ViewState.Content;
    }

    public static void translatePropsTo(Properties properties, AdControls.ViewModel viewModel) {
        boolean z = properties.viewState == Properties.ViewState.Ad;
        TimeProperties timeProperties = properties.f166ad.time;
        viewModel.isProgressViewVisible = z && (properties.f166ad.isLoading || properties.f166ad.isBuffering);
        viewModel.isPlayButtonVisible = z && properties.f166ad.canBePlayed;
        viewModel.isPauseButtonVisible = z && properties.f166ad.canBePaused;
        viewModel.isAdTimeViewVisible = z && timeProperties != null;
        viewModel.adUrl = properties.f166ad.isAdClicked ? properties.f166ad.targetUrl : null;
        viewModel.embedClickThroughUrl = properties.f166ad.embedClickThroughUrl;
        viewModel.isCloseButtonVisible = properties.f166ad.showClickThroughClose && viewModel.adUrl != null;
        if (timeProperties == null) {
            viewModel.seekerMaxValue = 100;
            viewModel.seekerProgress = 0.0d;
            viewModel.currentTimeText = "00:00";
            viewModel.timeLeftText = "00:00";
            viewModel.durationText = "00:00";
            return;
        }
        viewModel.seekerMaxValue = (int) (timeProperties.duration / 10);
        viewModel.seekerProgress = timeProperties.progress;
        viewModel.currentTimeText = DateUtils.formatElapsedTime(timeProperties.current / 1000);
        viewModel.timeLeftText = DateUtils.formatElapsedTime(timeProperties.remaining / 1000);
        viewModel.durationText = DateUtils.formatElapsedTime(timeProperties.duration / 1000);
    }
}
