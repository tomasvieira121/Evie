package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zztn implements zzts {
    private final /* synthetic */ zzagu zzboa;

    zztn(zzti zztiVar, zzagu zzaguVar) {
        this.zzboa = zzaguVar;
    }

    @Override // com.google.android.gms.internal.ads.zzts
    public final void zzb(zztt zzttVar) throws RemoteException {
        if (zzttVar.zzboh != null) {
            zzttVar.zzboh.zza(this.zzboa);
        }
    }
}
