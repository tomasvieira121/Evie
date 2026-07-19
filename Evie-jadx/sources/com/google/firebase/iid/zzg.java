package com.google.firebase.iid;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class zzg implements Runnable {
    private final /* synthetic */ zzd zzv;
    private final /* synthetic */ zzf zzw;

    zzg(zzf zzfVar, zzd zzdVar) {
        this.zzw = zzfVar;
        this.zzv = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        this.zzw.zzu.zzd(this.zzv.intent);
        this.zzv.finish();
    }
}
