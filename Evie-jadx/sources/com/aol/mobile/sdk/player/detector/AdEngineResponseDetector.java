package com.aol.mobile.sdk.player.detector;

import com.aol.mobile.sdk.player.model.VrmState;

/* JADX INFO: loaded from: classes.dex */
public final class AdEngineResponseDetector {
    private boolean isSent;

    public boolean detect(VrmState.TaskState taskState) {
        if (taskState == VrmState.TaskState.NO_TASK) {
            this.isSent = false;
        }
        if (this.isSent || taskState != VrmState.TaskState.FINISHED) {
            return false;
        }
        this.isSent = true;
        return true;
    }
}
