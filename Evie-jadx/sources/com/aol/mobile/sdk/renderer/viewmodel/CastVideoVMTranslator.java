package com.aol.mobile.sdk.renderer.viewmodel;

import com.aol.mobile.sdk.chromecast.CastVideoVM;

/* JADX INFO: loaded from: classes.dex */
public class CastVideoVMTranslator {

    /* JADX INFO: renamed from: a */
    private CastVideoVM f290a = new CastVideoVM();

    /* JADX INFO: renamed from: b */
    private VideoVM.Callbacks f291b;

    public CastVideoVM translate(VideoVM videoVM) {
        if (this.f290a.callbacks == null) {
            this.f290a.callbacks = new CastVideoVM.Callbacks() { // from class: com.aol.mobile.sdk.renderer.viewmodel.CastVideoVMTranslator.1
                public void onDurationReceived(long j) {
                    if (CastVideoVMTranslator.this.f291b == null) {
                        return;
                    }
                    CastVideoVMTranslator.this.f291b.onDurationReceived(j);
                }

                public void onSeekPerformed() {
                    if (CastVideoVMTranslator.this.f291b == null) {
                        return;
                    }
                    CastVideoVMTranslator.this.f291b.onSeekPerformed();
                }

                public void onVideoEnded() {
                    if (CastVideoVMTranslator.this.f291b == null) {
                        return;
                    }
                    CastVideoVMTranslator.this.f291b.onVideoEnded();
                }

                public void onVideoPlaybackFlagUpdated(boolean z) {
                    if (CastVideoVMTranslator.this.f291b == null) {
                        return;
                    }
                    CastVideoVMTranslator.this.f291b.onVideoPlaybackFlagUpdated(z);
                }

                public void onVideoPositionUpdated(long j) {
                    if (CastVideoVMTranslator.this.f291b == null) {
                        return;
                    }
                    CastVideoVMTranslator.this.f291b.onVideoPositionUpdated(j);
                }
            };
        }
        this.f290a.videoUrl = videoVM.videoUrl;
        this.f290a.title = videoVM.title;
        this.f290a.seekPosition = videoVM.seekPosition;
        this.f290a.currentPosition = videoVM.currentPosition;
        this.f290a.isMuted = videoVM.isMuted;
        this.f290a.shouldPlay = videoVM.shouldPlay;
        this.f290a.isLive = videoVM.isLive;
        this.f290a.isActive = videoVM.isActive;
        this.f290a.isCasting = videoVM.isCasting;
        this.f290a.isAd = videoVM.isAd;
        this.f291b = videoVM.callbacks;
        return this.f290a;
    }
}
