package com.facebook.common.logging;

/* JADX INFO: loaded from: classes.dex */
public interface LoggingDelegate {
    /* JADX INFO: renamed from: d */
    void mo340d(String str, String str2);

    /* JADX INFO: renamed from: e */
    void mo341e(String str, String str2);

    /* JADX INFO: renamed from: e */
    void mo342e(String str, String str2, Throwable th);

    /* JADX INFO: renamed from: i */
    void mo343i(String str, String str2);

    boolean isLoggable(int i);

    /* JADX INFO: renamed from: v */
    void mo344v(String str, String str2);

    /* JADX INFO: renamed from: w */
    void mo345w(String str, String str2);

    /* JADX INFO: renamed from: w */
    void mo346w(String str, String str2, Throwable th);

    void wtf(String str, String str2);

    void wtf(String str, String str2, Throwable th);
}
