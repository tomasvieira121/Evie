package io.fabric.sdk.android;

/* JADX INFO: loaded from: classes2.dex */
public interface Logger {
    /* JADX INFO: renamed from: d */
    void mo537d(String str, String str2);

    /* JADX INFO: renamed from: d */
    void mo538d(String str, String str2, Throwable th);

    /* JADX INFO: renamed from: e */
    void mo539e(String str, String str2);

    /* JADX INFO: renamed from: e */
    void mo540e(String str, String str2, Throwable th);

    /* JADX INFO: renamed from: i */
    void mo541i(String str, String str2);

    boolean isLoggable(String str, int i);

    void log(int i, String str, String str2);

    void log(int i, String str, String str2, boolean z);

    /* JADX INFO: renamed from: v */
    void mo543v(String str, String str2);

    /* JADX INFO: renamed from: w */
    void mo545w(String str, String str2);

    /* JADX INFO: renamed from: w */
    void mo546w(String str, String str2, Throwable th);
}
