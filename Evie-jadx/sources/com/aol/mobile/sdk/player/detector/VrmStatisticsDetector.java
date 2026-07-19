package com.aol.mobile.sdk.player.detector;

import com.aol.mobile.sdk.player.listener.detector.Timer;
import com.aol.mobile.sdk.player.model.VrmState;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;

/* JADX INFO: loaded from: classes.dex */
public final class VrmStatisticsDetector {
    private long adBufferingTime;
    private Timer timer = new Timer();
    private long vrmProcessingTime;
    private String vrmUrl;

    public boolean detect(long j, VrmState vrmState, TimeProperties timeProperties) {
        this.timer.stop(j);
        boolean z = false;
        if (vrmState.vrmUrl == null) {
            if (this.vrmUrl != null) {
                this.vrmProcessingTime = 0L;
                this.adBufferingTime = 0L;
                this.timer.reset();
            }
            return false;
        }
        if (vrmState.adUrl != null && this.vrmProcessingTime == 0) {
            this.vrmProcessingTime = this.timer.getDuration();
            this.timer.reset();
        }
        if (timeProperties != null && timeProperties.duration > 0 && this.adBufferingTime == 0) {
            this.adBufferingTime = this.timer.getDuration();
            z = true;
        }
        this.timer.start(j);
        this.vrmUrl = vrmState.vrmUrl;
        return z;
    }

    public long getVrmProcessingTime() {
        return this.vrmProcessingTime;
    }

    public long getAdBufferingTime() {
        return this.adBufferingTime;
    }
}
