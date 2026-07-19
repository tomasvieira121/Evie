package com.aol.mobile.sdk.renderer;

import android.content.Context;
import android.view.Surface;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class ExoFishEyeRenderer extends C0307b {
    public ExoFishEyeRenderer(Context context) {
        super(context);
        setRenderer(new C0316k(context, new C0309d(90, 500.0f), this));
    }

    @Override // com.aol.mobile.sdk.renderer.C0307b, com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.VideoRenderer
    public /* bridge */ /* synthetic */ void dispose() {
        super.dispose();
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z) {
        super.onLoadingChanged(z);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        super.onPlaybackParametersChanged(playbackParameters);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
        super.onPlayerError(exoPlaybackException);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
        super.onPlayerStateChanged(z, i);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onPositionDiscontinuity(int i) {
        super.onPositionDiscontinuity(i);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.video.VideoListener
    public /* bridge */ /* synthetic */ void onRenderedFirstFrame() {
        super.onRenderedFirstFrame();
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i) {
        super.onRepeatModeChanged(i);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onSeekProcessed() {
        super.onSeekProcessed();
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
        super.onShuffleModeEnabledChanged(z);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onTimelineChanged(Timeline timeline, Object obj, int i) {
        super.onTimelineChanged(timeline, obj, i);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.Player.EventListener
    public /* bridge */ /* synthetic */ void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        super.onTracksChanged(trackGroupArray, trackSelectionArray);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.google.android.exoplayer2.video.VideoListener
    public /* bridge */ /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f) {
        super.onVideoSizeChanged(i, i2, i3, f);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.InterfaceC0314i
    public /* bridge */ /* synthetic */ void onVideoSurfaceAvailable(Surface surface) {
        super.onVideoSurfaceAvailable(surface);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.InterfaceC0314i
    public /* bridge */ /* synthetic */ void onVideoSurfaceReleased(Surface surface) {
        super.onVideoSurfaceReleased(surface);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.InterfaceC0314i
    public /* bridge */ /* synthetic */ void onVideoSurfaceResized(int i, int i2) {
        super.onVideoSurfaceResized(i, i2);
    }

    @Override // com.aol.mobile.sdk.renderer.C0307b, com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.VideoRenderer
    public /* bridge */ /* synthetic */ void render(VideoVM videoVM) {
        super.render(videoVM);
    }
}
