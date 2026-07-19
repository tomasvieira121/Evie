package com.aol.mobile.sdk.renderer;

import android.content.Context;
import android.opengl.GLSurfaceView;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.k */
/* JADX INFO: loaded from: classes.dex */
public final class C0316k extends GLSurfaceView {

    /* JADX INFO: renamed from: a */
    private final C0311f f266a;

    /* JADX INFO: renamed from: b */
    private double f267b;

    /* JADX INFO: renamed from: c */
    private double f268c;

    public C0316k(Context context, InterfaceC0310e interfaceC0310e, InterfaceC0314i interfaceC0314i) {
        super(context);
        setEGLContextClientVersion(2);
        C0311f c0311f = new C0311f(interfaceC0310e, interfaceC0314i);
        this.f266a = c0311f;
        setRenderer(c0311f);
        setRenderMode(1);
    }

    /* JADX INFO: renamed from: a */
    public void m301a() {
        queueEvent(new Runnable() { // from class: com.aol.mobile.sdk.renderer.k.1
            @Override // java.lang.Runnable
            public void run() {
                C0316k.this.f266a.m290a();
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public void m302a(final double d, final double d2) {
        if (d == this.f267b && d2 == this.f268c) {
            return;
        }
        this.f267b = d;
        this.f268c = d2;
        queueEvent(new Runnable() { // from class: com.aol.mobile.sdk.renderer.k.2
            @Override // java.lang.Runnable
            public void run() {
                C0316k.this.f266a.m291a(d, d2);
            }
        });
    }
}
