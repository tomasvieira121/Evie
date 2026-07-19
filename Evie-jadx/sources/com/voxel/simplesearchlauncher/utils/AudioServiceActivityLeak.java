package com.voxel.simplesearchlauncher.utils;

import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes2.dex */
public class AudioServiceActivityLeak extends ContextWrapper {
    AudioServiceActivityLeak(Context context) {
        super(context);
    }

    public static ContextWrapper preventLeakOf(Context context) {
        return new AudioServiceActivityLeak(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("audio".equals(str)) {
            return getApplicationContext().getSystemService(str);
        }
        return super.getSystemService(str);
    }
}
