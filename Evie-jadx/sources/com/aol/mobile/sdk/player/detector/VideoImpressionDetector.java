package com.aol.mobile.sdk.player.detector;

/* JADX INFO: loaded from: classes.dex */
public final class VideoImpressionDetector {
    private String sessionId;

    public boolean detect(String str, int i, int i2, boolean z) {
        if (str.equals(this.sessionId) || i <= 0 || i2 <= 0) {
            return false;
        }
        this.sessionId = str;
        return z;
    }
}
