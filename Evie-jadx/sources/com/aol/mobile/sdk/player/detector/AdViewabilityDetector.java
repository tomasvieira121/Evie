package com.aol.mobile.sdk.player.detector;

import com.aol.mobile.sdk.player.model.properties.TimeProperties;

/* JADX INFO: loaded from: classes.dex */
public final class AdViewabilityDetector {
    private boolean isGroupMFired;

    private boolean isGroupMReached(double d) {
        return d >= 0.5d;
    }

    public boolean detect(TimeProperties timeProperties) {
        if (timeProperties == null) {
            this.isGroupMFired = false;
            return false;
        }
        if (this.isGroupMFired) {
            return false;
        }
        boolean zIsGroupMReached = isGroupMReached(timeProperties.progress);
        this.isGroupMFired = zIsGroupMReached;
        return zIsGroupMReached;
    }
}
