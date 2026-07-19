package com.aol.mobile.sdk.player.utils;

/* JADX INFO: loaded from: classes.dex */
public final class Preconditions {
    public static void checkState(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static void checkArgument(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void checkIndex(boolean z, String str) {
        if (!z) {
            throw new IndexOutOfBoundsException(str);
        }
    }
}
