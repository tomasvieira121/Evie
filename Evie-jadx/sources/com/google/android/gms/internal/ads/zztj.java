package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zztj implements zzts {
    zztj(zzti zztiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzts
    public final void zzb(zztt zzttVar) throws RemoteException {
        if (zzttVar.zzboh != null) {
            zzttVar.zzboh.onRewardedVideoAdLoaded();
        }
    }
}
