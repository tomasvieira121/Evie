package com.aol.mobile.sdk.renderer;

import android.content.Context;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.b */
/* JADX INFO: loaded from: classes.dex */
class C0307b extends C0306a {

    /* JADX INFO: renamed from: b */
    private final C0317l f222b;

    /* JADX INFO: renamed from: c */
    private final C0318m f223c;

    /* JADX INFO: renamed from: d */
    private String f224d;

    /* JADX INFO: renamed from: e */
    private double f225e;

    /* JADX INFO: renamed from: f */
    private double f226f;

    public C0307b(Context context) {
        super(context);
        this.f222b = new C0317l();
        this.f223c = new C0318m(context, new C0318m.a() { // from class: com.aol.mobile.sdk.renderer.b.1
            @Override // com.aol.mobile.sdk.renderer.C0318m.a
            /* JADX INFO: renamed from: a */
            public void mo276a(float f, float f2, float f3) {
                C0307b.this.f222b.m303a(f, f2, f3);
            }
        });
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.VideoRenderer
    public void dispose() {
        super.dispose();
        this.f223c.m308a();
    }

    @Override // com.aol.mobile.sdk.renderer.C0306a, com.aol.mobile.sdk.renderer.VideoRenderer
    public void render(VideoVM videoVM) {
        String str;
        boolean z;
        this.f222b.m305a(videoVM.callbacks);
        super.render(videoVM);
        if ((this.f224d != null || videoVM.videoUrl == null) && ((str = this.f224d) == null || str.equals(videoVM.videoUrl))) {
            z = false;
        } else {
            this.f224d = videoVM.videoUrl;
            z = true;
        }
        boolean z2 = Math.abs(this.f225e - videoVM.longitude) > 1.0E-11d;
        boolean z3 = Math.abs(this.f226f - videoVM.latitude) > 1.0E-11d;
        this.f225e = videoVM.longitude;
        this.f226f = videoVM.latitude;
        if (z || z2 || z3) {
            this.f222b.m304a(this.f225e, this.f226f, z);
        }
    }
}
