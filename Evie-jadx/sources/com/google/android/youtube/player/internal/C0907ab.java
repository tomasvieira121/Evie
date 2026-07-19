package com.google.android.youtube.player.internal;

import android.text.TextUtils;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.ab */
/* JADX INFO: loaded from: classes.dex */
public final class C0907ab {
    /* JADX INFO: renamed from: a */
    public static <T> T m396a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null reference");
    }

    /* JADX INFO: renamed from: a */
    public static <T> T m397a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* JADX INFO: renamed from: a */
    public static String m398a(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    /* JADX INFO: renamed from: a */
    public static void m399a(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }
}
