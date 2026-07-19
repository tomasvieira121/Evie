package com.google.android.youtube.player.internal;

import android.util.Log;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.y */
/* JADX INFO: loaded from: classes.dex */
public final class C0931y {
    /* JADX INFO: renamed from: a */
    public static void m528a(String str, Throwable th) {
        Log.e("YouTubeAndroidPlayerAPI", str, th);
    }

    /* JADX INFO: renamed from: a */
    public static void m529a(String str, Object... objArr) {
        Log.w("YouTubeAndroidPlayerAPI", String.format(str, objArr));
    }
}
