package com.aol.mobile.sdk.player.detector;

/* JADX INFO: loaded from: classes.dex */
public final class AdLoadWinDetector {
    private String adId;

    public boolean detect(String str) {
        String str2;
        boolean z = (this.adId == null && str != null) || !((str2 = this.adId) == null || str == null || str2.equals(str));
        this.adId = str;
        return z;
    }
}
