package com.aol.mobile.sdk.player.utils;

/* JADX INFO: loaded from: classes.dex */
public final class AngleHelper {
    public static double asPiMinusPiRange(double d) {
        double degrees = ((Math.toDegrees(d) % 360.0d) + 360.0d) % 360.0d;
        if (degrees >= 180.0d) {
            return Math.toRadians(degrees - 360.0d);
        }
        return Math.toRadians(degrees);
    }

    public static double limitAngleToRange(double d, double d2, double d3) {
        return Math.min(Math.toRadians(d3), Math.max(Math.toRadians(d2), asPiMinusPiRange(d)));
    }
}
