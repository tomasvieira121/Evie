package com.aol.mobile.sdk.player.detector;

/* JADX INFO: loaded from: classes.dex */
public final class AdClickDetector {
    private boolean isClicked = false;

    public boolean detect(boolean z) {
        boolean z2 = !this.isClicked && z;
        this.isClicked = z;
        return z2;
    }
}
