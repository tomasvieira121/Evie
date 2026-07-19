package com.aol.mobile.sdk.player.detector;

import com.aol.mobile.sdk.player.model.ErrorState;

/* JADX INFO: loaded from: classes.dex */
public final class AdIssueDetector {
    private ErrorState errorState;

    public boolean detect(ErrorState errorState) {
        boolean z = (errorState == null || errorState == this.errorState) ? false : true;
        this.errorState = errorState;
        return z;
    }
}
