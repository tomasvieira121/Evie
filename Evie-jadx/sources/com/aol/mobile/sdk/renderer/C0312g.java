package com.aol.mobile.sdk.renderer;

import android.opengl.GLES20;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0312g {

    /* JADX INFO: renamed from: d */
    private final int f254d;

    /* JADX INFO: renamed from: e */
    private final int f255e;

    /* JADX INFO: renamed from: f */
    private final int f256f;

    /* JADX INFO: renamed from: g */
    private final int f257g;

    /* JADX INFO: renamed from: b */
    private final int f252b = m292a(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\n\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTextureMatrix * aTextureCoord).xy;\n}\n");

    /* JADX INFO: renamed from: c */
    private final int f253c = m292a(35632, "#extension GL_OES_EGL_image_external : require\n\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\n\nvoid main() {\n    vec4 color = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = color;\n}\n");

    /* JADX INFO: renamed from: a */
    private final int f251a = GLES20.glCreateProgram();

    public C0312g() {
        GLES20.glAttachShader(this.f251a, this.f252b);
        GLES20.glAttachShader(this.f251a, this.f253c);
        GLES20.glLinkProgram(this.f251a);
        GLES20.glUseProgram(this.f251a);
        this.f254d = GLES20.glGetAttribLocation(this.f251a, "aPosition");
        this.f255e = GLES20.glGetAttribLocation(this.f251a, "aTextureCoord");
        this.f256f = GLES20.glGetUniformLocation(this.f251a, "uTextureMatrix");
        this.f257g = GLES20.glGetUniformLocation(this.f251a, "uMVPMatrix");
    }

    /* JADX INFO: renamed from: a */
    private int m292a(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        return iGlCreateShader;
    }

    /* JADX INFO: renamed from: a */
    public int m293a() {
        return this.f254d;
    }

    /* JADX INFO: renamed from: b */
    public int m294b() {
        return this.f255e;
    }

    /* JADX INFO: renamed from: c */
    public int m295c() {
        return this.f256f;
    }

    /* JADX INFO: renamed from: d */
    public int m296d() {
        return this.f257g;
    }

    /* JADX INFO: renamed from: e */
    public void m297e() {
        GLES20.glDetachShader(this.f251a, this.f252b);
        GLES20.glDetachShader(this.f251a, this.f253c);
        GLES20.glDeleteShader(this.f252b);
        GLES20.glDeleteShader(this.f253c);
        GLES20.glDeleteProgram(this.f251a);
    }
}
