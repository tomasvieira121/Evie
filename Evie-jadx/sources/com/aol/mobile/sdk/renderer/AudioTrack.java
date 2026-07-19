package com.aol.mobile.sdk.renderer;

/* JADX INFO: loaded from: classes.dex */
public final class AudioTrack {

    /* JADX INFO: renamed from: a */
    final String f170a;

    /* JADX INFO: renamed from: b */
    final C0302a f171b;
    public final boolean isSelected;
    public final String title;

    /* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.AudioTrack$a */
    static final class C0302a {

        /* JADX INFO: renamed from: a */
        final int f172a;

        /* JADX INFO: renamed from: b */
        final int f173b;

        /* JADX INFO: renamed from: c */
        final int f174c;

        C0302a(int i, int i2, int i3) {
            this.f172a = i;
            this.f173b = i2;
            this.f174c = i3;
        }
    }

    AudioTrack(C0302a c0302a, String str, String str2, boolean z) {
        this.f171b = c0302a;
        this.f170a = str;
        this.title = str2;
        this.isSelected = z;
    }

    public AudioTrack withSelected(boolean z) {
        return new AudioTrack(this.f171b, this.f170a, this.title, z);
    }
}
