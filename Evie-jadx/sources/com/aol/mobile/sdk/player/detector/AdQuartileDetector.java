package com.aol.mobile.sdk.player.detector;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AdQuartileDetector {
    private final LinkedList<Integer> result = new LinkedList<>();
    private int topReachedQuartile;
    private String uniqueAdId;

    public List<Integer> detect(int i, String str) {
        this.result.clear();
        if (str == null) {
            return this.result;
        }
        if (!str.equals(this.uniqueAdId)) {
            this.uniqueAdId = str;
            this.topReachedQuartile = 0;
        }
        int iMin = Math.min(i, 3);
        int i2 = this.topReachedQuartile;
        if (iMin > i2) {
            while (true) {
                i2++;
                if (i2 > iMin) {
                    break;
                }
                this.result.add(Integer.valueOf(i2));
            }
            this.topReachedQuartile = iMin;
        }
        return this.result;
    }
}
