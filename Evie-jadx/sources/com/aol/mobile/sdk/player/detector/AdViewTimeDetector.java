package com.aol.mobile.sdk.player.detector;

import com.aol.mobile.sdk.player.listener.detector.Timer;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;

/* JADX INFO: loaded from: classes.dex */
public final class AdViewTimeDetector {
    private Timer timer = new Timer();
    private boolean isDetectedOnCurrentAd = false;

    public boolean detect(long j, TimeProperties timeProperties, boolean z, boolean z2) {
        boolean z3 = false;
        if (timeProperties == null) {
            if (this.isDetectedOnCurrentAd) {
                this.isDetectedOnCurrentAd = false;
                this.timer.reset();
            }
            return false;
        }
        this.timer.stop(j);
        if (!this.isDetectedOnCurrentAd && this.timer.getDuration() > 0 && (z2 || timeProperties.progress == 1.0d)) {
            this.isDetectedOnCurrentAd = true;
            z3 = true;
        }
        if (z) {
            this.timer.start(j);
        }
        return z3;
    }

    public long getDuration() {
        return this.timer.getDuration();
    }
}
