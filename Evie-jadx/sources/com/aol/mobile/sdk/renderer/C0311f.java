package com.aol.mobile.sdk.renderer;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Message;
import android.view.Surface;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0311f implements GLSurfaceView.Renderer {

    /* JADX INFO: renamed from: b */
    private final InterfaceC0314i f240b;

    /* JADX INFO: renamed from: d */
    private final InterfaceC0310e f242d;

    /* JADX INFO: renamed from: i */
    private C0312g f247i;

    /* JADX INFO: renamed from: j */
    private SurfaceTexture f248j;

    /* JADX INFO: renamed from: k */
    private Surface f249k;

    /* JADX INFO: renamed from: e */
    private final int[] f243e = new int[1];

    /* JADX INFO: renamed from: f */
    private final int[] f244f = new int[1];

    /* JADX INFO: renamed from: g */
    private final int[] f245g = new int[1];

    /* JADX INFO: renamed from: h */
    private final float[] f246h = new float[16];

    /* JADX INFO: renamed from: c */
    private final C0308c f241c = new C0308c(60.0f, 1.0f, 1000.0f);

    /* JADX INFO: renamed from: a */
    private final Handler f239a = new Handler(new Handler.Callback() { // from class: com.aol.mobile.sdk.renderer.f.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    C0311f.this.f240b.onVideoSurfaceAvailable((Surface) message.obj);
                    break;
                case 2:
                    C0311f.this.f240b.onVideoSurfaceResized(message.arg1, message.arg2);
                    break;
                case 3:
                    C0311f.this.f240b.onVideoSurfaceReleased((Surface) message.obj);
                    break;
            }
            return false;
        }
    });

    public C0311f(InterfaceC0310e interfaceC0310e, InterfaceC0314i interfaceC0314i) {
        this.f242d = interfaceC0310e;
        this.f240b = interfaceC0314i;
    }

    /* JADX INFO: renamed from: a */
    public void m290a() {
        SurfaceTexture surfaceTexture = this.f248j;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.f248j = null;
        }
        C0312g c0312g = this.f247i;
        if (c0312g != null) {
            c0312g.m297e();
            this.f247i = null;
        }
        int[] iArr = this.f245g;
        GLES20.glDeleteTextures(iArr.length, iArr, 0);
        int[] iArr2 = this.f243e;
        GLES20.glDeleteBuffers(iArr2.length, iArr2, 0);
        int[] iArr3 = this.f244f;
        GLES20.glDeleteBuffers(iArr3.length, iArr3, 0);
        Surface surface = this.f249k;
        if (surface != null) {
            surface.release();
            Handler handler = this.f239a;
            handler.sendMessage(Message.obtain(handler, 3, this.f249k));
            this.f249k = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public void m291a(double d, double d2) {
        this.f241c.m277a(d, d2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        SurfaceTexture surfaceTexture = this.f248j;
        if (surfaceTexture == null || this.f247i == null) {
            return;
        }
        surfaceTexture.updateTexImage();
        this.f248j.getTransformMatrix(this.f246h);
        float[] fArrM279a = this.f241c.m279a();
        int iM293a = this.f247i.m293a();
        int iM294b = this.f247i.m294b();
        int iM295c = this.f247i.m295c();
        int iM296d = this.f247i.m296d();
        int iMo287f = this.f242d.mo287f();
        int iMo288g = this.f242d.mo288g();
        GLES20.glClear(16384);
        GLES20.glUniformMatrix4fv(iM296d, 1, false, fArrM279a, 0);
        GLES20.glBindTexture(36197, this.f245g[0]);
        GLES20.glUniformMatrix4fv(iM295c, 1, false, this.f246h, 0);
        GLES20.glBindBuffer(34962, this.f243e[0]);
        GLES20.glBindBuffer(34963, this.f244f[0]);
        GLES20.glEnableVertexAttribArray(iM293a);
        GLES20.glEnableVertexAttribArray(iM294b);
        GLES20.glVertexAttribPointer(iM293a, 3, 5126, false, iMo287f, 0);
        GLES20.glVertexAttribPointer(iM294b, 2, 5126, false, iMo287f, iMo288g);
        GLES20.glDrawElements(4, this.f242d.mo286e(), 5123, 0);
        GLES20.glDisableVertexAttribArray(iM293a);
        GLES20.glDisableVertexAttribArray(iM294b);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34963, 0);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
        this.f241c.m278a(i, i2);
        Handler handler = this.f239a;
        handler.sendMessage(Message.obtain(handler, 2, i, i2));
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        GLES20.glDisable(2929);
        GLES20.glClearColor(0.0f, 0.0f, 1.0f, 0.0f);
        this.f247i = new C0312g();
        int[] iArr = this.f245g;
        GLES20.glGenTextures(iArr.length, iArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.f245g[0]);
        GLES20.glTexParameterf(36197, 10241, 9729.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        int[] iArr2 = this.f243e;
        GLES20.glGenBuffers(iArr2.length, iArr2, 0);
        int[] iArr3 = this.f244f;
        GLES20.glGenBuffers(iArr3.length, iArr3, 0);
        GLES20.glBindBuffer(34962, this.f243e[0]);
        GLES20.glBufferData(34962, this.f242d.mo284c(), this.f242d.mo282a(), 35044);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34963, this.f244f[0]);
        GLES20.glBufferData(34963, this.f242d.mo285d(), this.f242d.mo283b(), 35044);
        GLES20.glBindBuffer(34963, 0);
        this.f248j = new SurfaceTexture(this.f245g[0]);
        this.f249k = new Surface(this.f248j);
        Handler handler = this.f239a;
        handler.sendMessage(Message.obtain(handler, 1, this.f249k));
    }
}
