package com.aol.mobile.sdk.player.detector;

/* JADX INFO: loaded from: classes.dex */
public final class AdStartDetector {
    private String adId;

    public boolean detect(String str, double d) {
        if (str == null) {
            this.adId = str;
            return false;
        }
        if (str.equals(this.adId) || d < 0.0d) {
            return false;
        }
        this.adId = str;
        return true;
    }
}
