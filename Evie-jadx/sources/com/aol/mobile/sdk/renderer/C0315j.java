package com.aol.mobile.sdk.renderer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.j */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public final class C0315j extends TextureView {
    public C0315j(Context context, final InterfaceC0314i interfaceC0314i) {
        super(context);
        setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.aol.mobile.sdk.renderer.j.1

            /* JADX INFO: renamed from: c */
            private Surface f265c;

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                this.f265c = new Surface(surfaceTexture);
                interfaceC0314i.onVideoSurfaceAvailable(this.f265c);
                interfaceC0314i.onVideoSurfaceResized(i, i2);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                Surface surface = this.f265c;
                if (surface == null) {
                    return true;
                }
                surface.release();
                interfaceC0314i.onVideoSurfaceReleased(this.f265c);
                this.f265c = null;
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
                interfaceC0314i.onVideoSurfaceResized(i, i2);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        });
    }
}
