package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes.dex */
public final class Asserts {
    public static void checkNotNull(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("null reference");
        }
    }
}
