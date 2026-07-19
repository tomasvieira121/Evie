package com.facebook.rebound;

/* JADX INFO: loaded from: classes.dex */
public class OrigamiValueConverter {
    public static double frictionFromOrigamiValue(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        return 25.0d + ((d - 8.0d) * 3.0d);
    }

    public static double tensionFromOrigamiValue(double d) {
        if (d == 0.0d) {
            return 0.0d;
        }
        return 194.0d + ((d - 30.0d) * 3.62d);
    }
}
