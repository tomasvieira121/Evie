package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzadd implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ zzadb zzccb;
    private final /* synthetic */ Thread.UncaughtExceptionHandler zzccc;

    zzadd(zzadb zzadbVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzccb = zzadbVar;
        this.zzccc = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.zzccb.zza(thread, th);
        } catch (Throwable unused) {
            zzane.m359e("AdMob exception reporter failed reporting the exception.");
        } finally {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zzccc;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        }
    }
}
