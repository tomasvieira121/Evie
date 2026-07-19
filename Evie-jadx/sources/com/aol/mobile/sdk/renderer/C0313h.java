package com.aol.mobile.sdk.renderer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0313h implements InterfaceC0310e {

    /* JADX INFO: renamed from: a */
    private final FloatBuffer f258a;

    /* JADX INFO: renamed from: b */
    private final ShortBuffer f259b;

    /* JADX INFO: renamed from: c */
    private final int f260c;

    /* JADX INFO: renamed from: d */
    private final int f261d;

    /* JADX INFO: renamed from: e */
    private final int f262e;

    public C0313h(int i, float f) {
        if (i < 5) {
            throw new IllegalArgumentException("Slices must be greater then 5");
        }
        if (i >= 180) {
            throw new RuntimeException("Slices must be lesser or equals to 180");
        }
        this.f258a = m298a(i, f);
        this.f259b = m299a(i);
        this.f260c = this.f258a.capacity() * 4;
        this.f261d = this.f259b.capacity();
        this.f262e = this.f261d * 2;
    }

    /* JADX INFO: renamed from: a */
    private FloatBuffer m298a(int i, float f) {
        double d = i;
        Double.isNaN(d);
        float f2 = (float) (3.141592653589793d / d);
        Double.isNaN(d);
        float f3 = (float) (6.283185307179586d / d);
        int i2 = i + 1;
        int i3 = i2 * i2 * 5 * 4;
        float[] fArr = new float[i2 * 5];
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(i3).order(ByteOrder.nativeOrder()).asFloatBuffer();
        int i4 = 0;
        while (i4 <= i) {
            int i5 = 0;
            while (i5 <= i) {
                int i6 = i5 * 5;
                float f4 = i4;
                double d2 = f2 * f4;
                float fSin = (float) Math.sin(d2);
                float fCos = (float) Math.cos(d2);
                float f5 = i5;
                double d3 = f3 * f5;
                int i7 = i4;
                float fSin2 = (float) Math.sin(d3);
                float fCos2 = (float) Math.cos(d3);
                float f6 = fSin * f;
                fArr[i6 + 0] = fSin2 * f6;
                fArr[i6 + 1] = f6 * fCos2;
                fArr[i6 + 2] = f * fCos;
                float f7 = i;
                fArr[i6 + 3] = f5 / f7;
                fArr[i6 + 4] = 1.0f - (f4 / f7);
                i5++;
                i4 = i7;
            }
            floatBufferAsFloatBuffer.put(fArr);
            i4++;
        }
        floatBufferAsFloatBuffer.position(0);
        return floatBufferAsFloatBuffer;
    }

    /* JADX INFO: renamed from: a */
    private ShortBuffer m299a(int i) {
        int i2 = i + 1;
        short[] sArr = new short[i * 6];
        ShortBuffer shortBufferAsShortBuffer = ByteBuffer.allocateDirect(i * i * 6 * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = 0;
            while (i4 < i) {
                int i5 = i4 * 6;
                int i6 = i4 + 1;
                int i7 = i3 * i2;
                short s = (short) (i7 + i4);
                sArr[i5] = s;
                int i8 = (i3 + 1) * i2;
                sArr[i5 + 1] = (short) (i4 + i8);
                short s2 = (short) (i8 + i6);
                sArr[i5 + 2] = s2;
                sArr[i5 + 3] = s;
                sArr[i5 + 4] = s2;
                sArr[i5 + 5] = (short) (i7 + i6);
                i4 = i6;
            }
            shortBufferAsShortBuffer.put(sArr);
        }
        shortBufferAsShortBuffer.position(0);
        return shortBufferAsShortBuffer;
    }

    @Override // com.aol.mobile.sdk.renderer.InterfaceC0310e
    /* JADX INFO: renamed from: a */
    public FloatBuffer mo282a() {
        return this.f258a;
    }

    @Override // com.aol.mobile.sdk.renderer.InterfaceC0310e
    /* JADX INFO: renamed from: b */
    public ShortBuffer mo283b() {
        return this.f259b;
    }

    @Override // com.aol.mobile.sdk.renderer.InterfaceC0310e
    /* JADX INFO: renamed from: c */
    public int mo284c() {
        return this.f260c;
    }

    @Override // com.aol.mobile.sdk.renderer.InterfaceC0310e
    /* JADX INFO: renamed from: d */
    public int mo285d() {
        return this.f262e;
    }

    @Override // com.aol.mobile.sdk.renderer.InterfaceC0310e
    /* JADX INFO: renamed from: e */
    public int mo286e() {
        return this.f261d;
    }

    @Override // com.aol.mobile.sdk.renderer.InterfaceC0310e
    /* JADX INFO: renamed from: f */
    public int mo287f() {
        return 20;
    }

    @Override // com.aol.mobile.sdk.renderer.InterfaceC0310e
    /* JADX INFO: renamed from: g */
    public int mo288g() {
        return 12;
    }
}
