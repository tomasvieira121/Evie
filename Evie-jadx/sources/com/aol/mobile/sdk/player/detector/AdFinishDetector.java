package com.aol.mobile.sdk.player.detector;

/* JADX INFO: loaded from: classes.dex */
public final class AdFinishDetector {
    private String adId;

    public boolean detect(String str, double d) {
        if (str == null) {
            this.adId = str;
            return false;
        }
        if (str.equals(this.adId) || d != 1.0d) {
            return false;
        }
        this.adId = str;
        return true;
    }
}
