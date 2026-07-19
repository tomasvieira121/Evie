package com.aol.mobile.sdk.renderer;

import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.l */
/* JADX INFO: loaded from: classes.dex */
public final class C0317l {

    /* JADX INFO: renamed from: a */
    private VideoVM.Callbacks f273a;

    /* JADX INFO: renamed from: b */
    private a f274b;

    /* JADX INFO: renamed from: c */
    private b f275c;

    /* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.l$a */
    static class a {

        /* JADX INFO: renamed from: a */
        final double f276a;

        /* JADX INFO: renamed from: b */
        final double f277b;

        a(double d, double d2) {
            this.f276a = d;
            this.f277b = d2;
        }
    }

    /* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.l$b */
    static class b {

        /* JADX INFO: renamed from: a */
        final double f278a;

        /* JADX INFO: renamed from: b */
        final double f279b;

        /* JADX INFO: renamed from: c */
        final double f280c;

        b(double d, double d2, double d3) {
            this.f278a = d;
            this.f279b = d2;
            this.f280c = d3;
        }
    }

    /* JADX INFO: renamed from: a */
    public void m303a(double d, double d2, double d3) {
        if (this.f275c == null) {
            a aVar = this.f274b;
            this.f275c = aVar == null ? new b(d, d2, d3) : new b(C0319n.m310a(aVar.f276a + d), d2, C0319n.m310a(this.f274b.f277b + d3));
        }
        if (this.f273a == null || this.f274b == null) {
            return;
        }
        this.f274b = new a(C0319n.m310a(this.f275c.f278a - d), C0319n.m310a(this.f275c.f280c - d3));
        this.f273a.onCameraDirectionChanged(this.f274b.f276a, this.f274b.f277b);
    }

    /* JADX INFO: renamed from: a */
    public void m304a(double d, double d2, boolean z) {
        a aVar;
        if (z) {
            this.f275c = null;
        }
        if (this.f275c != null && (aVar = this.f274b) != null) {
            this.f275c = new b(C0319n.m310a(this.f275c.f278a + (d - aVar.f276a)), this.f275c.f279b, C0319n.m310a(this.f275c.f280c + (d2 - this.f274b.f277b)));
        }
        this.f274b = new a(d, d2);
    }

    /* JADX INFO: renamed from: a */
    public void m305a(VideoVM.Callbacks callbacks) {
        if (this.f273a != callbacks) {
            this.f273a = callbacks;
        }
    }
}
