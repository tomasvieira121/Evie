package com.aol.mobile.sdk.player.detector;

import com.aol.mobile.sdk.player.model.properties.TimeProperties;

/* JADX INFO: loaded from: classes.dex */
public final class AdResumeDetector {
    private boolean canBeFired = false;
    private boolean prevPlayingState = true;

    public boolean detect(TimeProperties timeProperties, boolean z) {
        if (timeProperties == null || timeProperties.current == timeProperties.duration) {
            this.prevPlayingState = true;
            this.canBeFired = false;
        } else if (z) {
            this.canBeFired = true;
        }
        if (z == this.prevPlayingState || !this.canBeFired) {
            return false;
        }
        this.prevPlayingState = z;
        return z;
    }
}
