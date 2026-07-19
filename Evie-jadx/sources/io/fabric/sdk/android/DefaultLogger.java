package io.fabric.sdk.android;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultLogger implements Logger {
    private int logLevel;

    public DefaultLogger(int i) {
        this.logLevel = i;
    }

    public DefaultLogger() {
        this.logLevel = 4;
    }

    @Override // io.fabric.sdk.android.Logger
    public boolean isLoggable(String str, int i) {
        return this.logLevel <= i;
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: d */
    public void mo538d(String str, String str2, Throwable th) {
        if (isLoggable(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: v */
    public void m544v(String str, String str2, Throwable th) {
        if (isLoggable(str, 2)) {
            Log.v(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: i */
    public void m542i(String str, String str2, Throwable th) {
        if (isLoggable(str, 4)) {
            Log.i(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: w */
    public void mo546w(String str, String str2, Throwable th) {
        if (isLoggable(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: e */
    public void mo540e(String str, String str2, Throwable th) {
        if (isLoggable(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: d */
    public void mo537d(String str, String str2) {
        mo538d(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: v */
    public void mo543v(String str, String str2) {
        m544v(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: i */
    public void mo541i(String str, String str2) {
        m542i(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: w */
    public void mo545w(String str, String str2) {
        mo546w(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    /* JADX INFO: renamed from: e */
    public void mo539e(String str, String str2) {
        mo540e(str, str2, null);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2) {
        log(i, str, str2, false);
    }

    @Override // io.fabric.sdk.android.Logger
    public void log(int i, String str, String str2, boolean z) {
        if (z || isLoggable(str, i)) {
            Log.println(i, str, str2);
        }
    }
}
