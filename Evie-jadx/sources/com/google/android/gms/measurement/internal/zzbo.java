package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class zzbo extends zzcp {
    private static final AtomicLong zzape = new AtomicLong(Long.MIN_VALUE);
    private zzbs zzaov;
    private zzbs zzaow;
    private final PriorityBlockingQueue<zzbr<?>> zzaox;
    private final BlockingQueue<zzbr<?>> zzaoy;
    private final Thread.UncaughtExceptionHandler zzaoz;
    private final Thread.UncaughtExceptionHandler zzapa;
    private final Object zzapb;
    private final Semaphore zzapc;
    private volatile boolean zzapd;

    zzbo(zzbt zzbtVar) {
        super(zzbtVar);
        this.zzapb = new Object();
        this.zzapc = new Semaphore(2);
        this.zzaox = new PriorityBlockingQueue<>();
        this.zzaoy = new LinkedBlockingQueue();
        this.zzaoz = new zzbq(this, "Thread death: Uncaught exception on worker thread");
        this.zzapa = new zzbq(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    protected final boolean zzgt() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final void zzaf() {
        if (Thread.currentThread() != this.zzaov) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final void zzgc() {
        if (Thread.currentThread() != this.zzaow) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final boolean zzkb() {
        return Thread.currentThread() == this.zzaov;
    }

    public final <V> Future<V> zzb(Callable<V> callable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(callable);
        zzbr<?> zzbrVar = new zzbr<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzaov) {
            if (!this.zzaox.isEmpty()) {
                zzgo().zzjg().zzbx("Callable skipped the worker queue.");
            }
            zzbrVar.run();
        } else {
            zza(zzbrVar);
        }
        return zzbrVar;
    }

    public final <V> Future<V> zzc(Callable<V> callable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(callable);
        zzbr<?> zzbrVar = new zzbr<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzaov) {
            zzbrVar.run();
        } else {
            zza(zzbrVar);
        }
        return zzbrVar;
    }

    public final void zzc(Runnable runnable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(runnable);
        zza(new zzbr<>(this, runnable, false, "Task exception on worker thread"));
    }

    private final void zza(zzbr<?> zzbrVar) {
        synchronized (this.zzapb) {
            this.zzaox.add(zzbrVar);
            if (this.zzaov == null) {
                this.zzaov = new zzbs(this, "Measurement Worker", this.zzaox);
                this.zzaov.setUncaughtExceptionHandler(this.zzaoz);
                this.zzaov.start();
            } else {
                this.zzaov.zzke();
            }
        }
    }

    public final void zzd(Runnable runnable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(runnable);
        zzbr<?> zzbrVar = new zzbr<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.zzapb) {
            this.zzaoy.add(zzbrVar);
            if (this.zzaow == null) {
                this.zzaow = new zzbs(this, "Measurement Network", this.zzaoy);
                this.zzaow.setUncaughtExceptionHandler(this.zzapa);
                this.zzaow.start();
            } else {
                this.zzaow.zzke();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    static /* synthetic */ zzbs zza(zzbo zzboVar, zzbs zzbsVar) {
        zzboVar.zzaov = null;
        return null;
    }

    static /* synthetic */ zzbs zzb(zzbo zzboVar, zzbs zzbsVar) {
        zzboVar.zzaow = null;
        return null;
    }
}
