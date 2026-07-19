package com.aol.mobile.sdk.renderer;

import android.opengl.Matrix;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0308c {

    /* JADX INFO: renamed from: a */
    private final float f228a;

    /* JADX INFO: renamed from: b */
    private final float f229b;

    /* JADX INFO: renamed from: c */
    private final float f230c;

    /* JADX INFO: renamed from: d */
    private final float[] f231d = new float[16];

    /* JADX INFO: renamed from: e */
    private final float[] f232e = new float[16];

    /* JADX INFO: renamed from: f */
    private final float[] f233f = new float[16];

    public C0308c(float f, float f2, float f3) {
        this.f228a = f;
        this.f230c = f2;
        this.f229b = f3;
        m277a(0.0d, 0.0d);
    }

    /* JADX INFO: renamed from: a */
    public void m277a(double d, double d2) {
        double d3 = d2 + 1.5707963267948966d;
        double d4 = d - 1.5707963267948966d;
        double dSin = Math.sin(d3) * Math.cos(d4);
        double dCos = Math.cos(d3);
        Matrix.setLookAtM(this.f231d, 0, 0.0f, 0.0f, 0.0f, (float) dSin, (float) (Math.sin(d3) * Math.sin(d4)), (float) dCos, 0.0f, 0.0f, 1.0f);
    }

    /* JADX INFO: renamed from: a */
    public void m278a(int i, int i2) {
        float f = i / i2;
        Matrix.perspectiveM(this.f232e, 0, f < 1.0f ? this.f228a / f : this.f228a, f, this.f230c, this.f229b);
    }

    /* JADX INFO: renamed from: a */
    public float[] m279a() {
        Matrix.multiplyMM(this.f233f, 0, this.f232e, 0, this.f231d, 0);
        return this.f233f;
    }
}
