package com.aol.mobile.sdk.renderer;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.n */
/* JADX INFO: loaded from: classes.dex */
public final class C0319n {
    /* JADX INFO: renamed from: a */
    public static double m310a(double d) {
        double degrees = ((Math.toDegrees(d) % 360.0d) + 360.0d) % 360.0d;
        return degrees >= 180.0d ? Math.toRadians(degrees - 360.0d) : Math.toRadians(degrees);
    }
}
