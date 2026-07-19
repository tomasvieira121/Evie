package com.aol.mobile.sdk.renderer;

/* JADX INFO: loaded from: classes.dex */
public final class TextTrack {

    /* JADX INFO: renamed from: a */
    final C0305a f182a;
    public final boolean isEmpty;
    public final boolean isSelected;
    public final String title;

    /* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.TextTrack$a */
    static final class C0305a {

        /* JADX INFO: renamed from: a */
        final int f183a;

        /* JADX INFO: renamed from: b */
        final int f184b;

        /* JADX INFO: renamed from: c */
        final int f185c;

        C0305a(int i, int i2, int i3) {
            this.f183a = i;
            this.f184b = i2;
            this.f185c = i3;
        }
    }

    TextTrack(C0305a c0305a, String str, boolean z) {
        this.f182a = c0305a;
        this.title = str;
        this.isSelected = z;
        this.isEmpty = c0305a.f184b == -1 && c0305a.f185c == -1;
    }

    public TextTrack withSelected(boolean z) {
        return new TextTrack(this.f182a, this.title, z);
    }
}
