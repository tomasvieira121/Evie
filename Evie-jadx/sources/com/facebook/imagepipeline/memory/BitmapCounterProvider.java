package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.ThreadSafe;

/* JADX INFO: loaded from: classes.dex */
public class BitmapCounterProvider {
    public static final int MAX_BITMAP_TOTAL_SIZE = getMaxSizeHardCap();
    private static volatile BitmapCounter sBitmapCounter;

    private static int getMaxSizeHardCap() {
        int iMin = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (iMin > 16777216) {
            return (iMin / 4) * 3;
        }
        return iMin / 2;
    }

    @ThreadSafe
    public static BitmapCounter get() {
        if (sBitmapCounter == null) {
            synchronized (BitmapCounterProvider.class) {
                if (sBitmapCounter == null) {
                    sBitmapCounter = new BitmapCounter(384, MAX_BITMAP_TOTAL_SIZE);
                }
            }
        }
        return sBitmapCounter;
    }
}
