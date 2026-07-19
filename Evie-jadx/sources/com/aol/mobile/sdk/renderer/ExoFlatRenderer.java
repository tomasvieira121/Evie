package com.aol.mobile.sdk.renderer;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.Surface;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.chromecast.CastRenderer;
import com.aol.mobile.sdk.chromecast.CastRendererImpl;
import com.aol.mobile.sdk.chromecast.OneCastManager;
import com.aol.mobile.sdk.renderer.viewmodel.CastVideoVMTranslator;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class ExoFlatRenderer extends C0306a {

    /* JADX INFO: renamed from: b */
    private CastRenderer f175b;

    /* JADX INFO: renamed from: c */
    private CastVideoVMTranslator f176c;

    /* JADX INFO: renamed from: d */
    private Context f177d;

    /* JADX INFO: renamed from: e */
    private boolean f178e;

    /* JADX INFO: renamed from: f */
    private OneCastManager f179f;

    public ExoFlatRenderer(Context context) {
        super(context);
        setRenderer(new C0315j(context, this));
        this.f177d = context;
        m241a();
        if (this.f178e) {
            this.f179f = new OneCastManager(context);
        }
    }

    /* JADX INFO: renamed from: a */
    private void m241a() {
        Context context = getContext();
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            this.f178e = (bundle == null || bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME") == null) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    private void m242a(VideoVM videoVM) {
        CastRenderer castRenderer = this.f175b;
        if (castRenderer != null) {
            removeView(castRenderer.getViewport());
            if (videoVM.currentPosition != null) {
                videoVM.seekPosition = videoVM.currentPosition;
            }
            this.f175b = null;
            m244c();
        }
    }

    /* JADX INFO: renamed from: b */
    private void m243b() {
        if (this.f175b == null) {
            this.f175b = getCastRenderer();
            this.f176c = new CastVideoVMTranslator();
            CastRenderer castRenderer = this.f175b;
            if (castRenderer != null) {
                addView(castRenderer.getViewport(), -1, -1);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private void m244c() {
        if (this.f178e) {
            getHandler().post(new Runnable() { // from class: com.aol.mobile.sdk.renderer.ExoFlatRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    ExoFlatRenderer.this.f179f.stopCasting();
                }
            });
        }
    }

    private CastRenderer getCastRenderer() {
        return new CastRendererImpl(this.f177d);
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.VideoRenderer
    public void dispose() {
        super.dispose();
        if (this.f175b != null) {
            m244c();
        }
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

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.VideoRenderer
    public void render(VideoVM videoVM) {
        CastVideoVMTranslator castVideoVMTranslator;
        if (videoVM.isCasting) {
            m243b();
        } else {
            m242a(videoVM);
        }
        CastRenderer castRenderer = this.f175b;
        if (castRenderer != null && (castVideoVMTranslator = this.f176c) != null) {
            castRenderer.render(castVideoVMTranslator.translate(videoVM));
            videoVM.shouldPlay = false;
        }
        super.render(videoVM);
    }
}
