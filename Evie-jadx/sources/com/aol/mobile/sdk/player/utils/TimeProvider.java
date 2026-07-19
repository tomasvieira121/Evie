package com.aol.mobile.sdk.player.utils;

/* JADX INFO: loaded from: classes.dex */
public class TimeProvider {
    private long timestamp = System.currentTimeMillis();

    public String get() {
        return String.valueOf(System.currentTimeMillis() - this.timestamp);
    }
}
