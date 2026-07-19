package com.facebook.common.logging;

/* JADX INFO: loaded from: classes.dex */
public class FLog {
    private static LoggingDelegate sHandler = FLogDefaultLoggingDelegate.getInstance();

    public static boolean isLoggable(int i) {
        return sHandler.isLoggable(i);
    }

    /* JADX INFO: renamed from: v */
    public static void m326v(Class<?> cls, String str) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo344v(getTag(cls), str);
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m327v(Class<?> cls, String str, Object obj) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo344v(getTag(cls), formatString(str, obj));
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m328v(Class<?> cls, String str, Object obj, Object obj2) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo344v(getTag(cls), formatString(str, obj, obj2));
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m329v(Class<?> cls, String str, Object obj, Object obj2, Object obj3) {
        if (isLoggable(2)) {
            m326v(cls, formatString(str, obj, obj2, obj3));
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m330v(Class<?> cls, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo344v(getTag(cls), formatString(str, obj, obj2, obj3, obj4));
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m332v(String str, String str2, Object... objArr) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo344v(str, formatString(str2, objArr));
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m331v(Class<?> cls, String str, Object... objArr) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo344v(getTag(cls), formatString(str, objArr));
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m317d(Class<?> cls, String str, Object obj) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo340d(getTag(cls), formatString(str, obj));
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m325i(Class<?> cls, String str) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo343i(getTag(cls), str);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m333w(Class<?> cls, String str) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo345w(getTag(cls), str);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m338w(String str, String str2, Object... objArr) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo345w(str, formatString(str2, objArr));
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m339w(String str, Throwable th, String str2, Object... objArr) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo346w(str, formatString(str2, objArr), th);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m335w(Class<?> cls, String str, Object... objArr) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo345w(getTag(cls), formatString(str, objArr));
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m336w(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (isLoggable(5)) {
            m334w(cls, formatString(str, objArr), th);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m337w(String str, String str2, Throwable th) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo346w(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m334w(Class<?> cls, String str, Throwable th) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo346w(getTag(cls), str, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m322e(String str, String str2) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo341e(str, str2);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m318e(Class<?> cls, String str) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo341e(getTag(cls), str);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m324e(String str, Throwable th, String str2, Object... objArr) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo342e(str, formatString(str2, objArr), th);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m320e(Class<?> cls, String str, Object... objArr) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo341e(getTag(cls), formatString(str, objArr));
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m321e(Class<?> cls, Throwable th, String str, Object... objArr) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo342e(getTag(cls), formatString(str, objArr), th);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m323e(String str, String str2, Throwable th) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo342e(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m319e(Class<?> cls, String str, Throwable th) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo342e(getTag(cls), str, th);
        }
    }

    public static void wtf(String str, String str2, Object... objArr) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(str, formatString(str2, objArr));
        }
    }

    public static void wtf(Class<?> cls, String str, Object... objArr) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(getTag(cls), formatString(str, objArr));
        }
    }

    public static void wtf(Class<?> cls, String str, Throwable th) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(getTag(cls), str, th);
        }
    }

    private static String formatString(String str, Object... objArr) {
        return String.format(null, str, objArr);
    }

    private static String getTag(Class<?> cls) {
        return cls.getSimpleName();
    }
}
