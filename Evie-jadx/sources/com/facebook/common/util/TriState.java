package com.facebook.common.util;

import com.facebook.infer.annotation.Functional;

/* JADX INFO: loaded from: classes.dex */
public enum TriState {
    YES,
    NO,
    UNSET;

    @Functional
    public static TriState valueOf(boolean z) {
        return z ? YES : NO;
    }
}
