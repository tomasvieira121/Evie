package com.aol.mobile.sdk.player.view.model;

import com.aol.mobile.sdk.player.model.properties.CameraProperties;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;

/* JADX INFO: loaded from: classes.dex */
public class VideoVMTranslator {
    public static void translatePropsToAdVideoVM(Properties properties, VideoVM videoVM, VideoVM.Callbacks callbacks) {
        videoVM.callbacks = callbacks;
        videoVM.isMuted = properties.isMuted;
        videoVM.seekPosition = properties.f166ad.time == null ? null : properties.f166ad.time.seekPosition;
        videoVM.isActive = properties.viewState == Properties.ViewState.Ad;
        videoVM.shouldPlay = !properties.f166ad.isAdClicked && videoVM.isActive && properties.shouldPlay;
        videoVM.videoUrl = properties.f166ad.url;
        videoVM.isScalable = properties.f166ad.isScalable;
        videoVM.areSubtitlesEnabled = false;
        videoVM.isMaintainAspectRatio = properties.f166ad.isMaintainAspectRatio;
        videoVM.currentPosition = properties.f166ad.time == null ? null : Long.valueOf(properties.f166ad.time.current);
        videoVM.title = null;
        videoVM.isAd = true;
        videoVM.isCasting = properties.isCasting;
    }

    public static void translatePropsToContentVideoVM(Properties properties, VideoVM videoVM, VideoVM.Callbacks callbacks) {
        VideoProperties videoProperties = properties.playlistItem.video;
        CameraProperties cameraProperties = properties.camera;
        videoVM.callbacks = callbacks;
        videoVM.isMuted = properties.isMuted;
        videoVM.seekPosition = (videoProperties == null || videoProperties.time == null) ? null : videoProperties.time.seekPosition;
        videoVM.currentPosition = (videoProperties == null || videoProperties.time == null) ? null : Long.valueOf(videoProperties.time.current);
        videoVM.longitude = cameraProperties.longitude;
        videoVM.latitude = cameraProperties.latitude;
        videoVM.isLive = videoProperties != null && videoProperties.isLive;
        videoVM.isCasting = properties.isCasting;
        videoVM.isActive = properties.viewState == Properties.ViewState.Content;
        videoVM.shouldPlay = videoVM.isActive && properties.shouldPlay;
        videoVM.videoUrl = videoProperties == null ? null : videoProperties.url;
        videoVM.subtitleUrl = videoProperties == null ? null : videoProperties.subtitles.url;
        videoVM.subtitleLang = videoProperties == null ? null : videoProperties.subtitles.lang;
        videoVM.areSubtitlesEnabled = true;
        videoVM.title = videoProperties == null ? null : videoProperties.title;
        videoVM.isAd = false;
        if (videoProperties != null) {
            videoVM.selectedAudioTrack = videoProperties.selectedAudioTrack;
            videoVM.selectedTextTrack = videoProperties.selectedTextTrack;
        } else {
            videoVM.selectedAudioTrack = null;
            videoVM.selectedTextTrack = null;
        }
    }
}
