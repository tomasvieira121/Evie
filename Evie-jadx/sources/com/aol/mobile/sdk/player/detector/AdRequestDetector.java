package com.aol.mobile.sdk.player.detector;

/* JADX INFO: loaded from: classes.dex */
public final class AdRequestDetector {
    private int adNum;

    public boolean detect(int i) {
        boolean z = i > this.adNum;
        this.adNum = i;
        return z;
    }
}
