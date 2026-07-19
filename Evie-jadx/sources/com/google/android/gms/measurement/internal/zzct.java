package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
final class zzct implements Runnable {
    private final /* synthetic */ AtomicReference zzarb;
    private final /* synthetic */ zzcs zzarc;

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzarb) {
            try {
                this.zzarb.set(Boolean.valueOf(this.zzarc.zzgq().zzba(this.zzarc.zzgf().zzal())));
                this.zzarb.notify();
            } catch (Throwable th) {
                this.zzarb.notify();
                throw th;
            }
        }
    }
}
