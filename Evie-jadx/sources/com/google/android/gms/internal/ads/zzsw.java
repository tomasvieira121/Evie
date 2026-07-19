package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzsw implements zzts {
    private final /* synthetic */ int zzbnx;

    zzsw(zzsu zzsuVar, int i) {
        this.zzbnx = i;
    }

    @Override // com.google.android.gms.internal.ads.zzts
    public final void zzb(zztt zzttVar) throws RemoteException {
        if (zzttVar.zzxs != null) {
            zzttVar.zzxs.onAdFailedToLoad(this.zzbnx);
        }
    }
}
