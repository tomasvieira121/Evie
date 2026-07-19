package com.aol.mobile.sdk.player.utils;

/* JADX INFO: loaded from: classes.dex */
public final class ObjectUtils {
    public static boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }
}
