package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes.dex */
public final class RepeatModeUtil {
    public static boolean isRepeatModeEnabled(int i, int i2) {
        switch (i) {
            case 0:
                return true;
            case 1:
                return (i2 & 1) != 0;
            case 2:
                return (i2 & 2) != 0;
            default:
                return false;
        }
    }

    public static int getNextRepeatMode(int i, int i2) {
        for (int i3 = 1; i3 <= 2; i3++) {
            int i4 = (i + i3) % 3;
            if (isRepeatModeEnabled(i4, i2)) {
                return i4;
            }
        }
        return i;
    }
}
