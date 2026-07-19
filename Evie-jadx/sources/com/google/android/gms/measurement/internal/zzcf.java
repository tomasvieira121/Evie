package com.google.android.gms.measurement.internal;

import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes.dex */
final class zzcf implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzbv zzaqo;

    zzcf(zzbv zzbvVar, zzh zzhVar) {
        this.zzaqo = zzbvVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws PackageManager.NameNotFoundException {
        this.zzaqo.zzamz.zzly();
        this.zzaqo.zzamz.zzd(this.zzaqn);
    }
}
