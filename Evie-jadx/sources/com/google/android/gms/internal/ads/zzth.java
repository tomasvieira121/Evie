package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class zzth implements zzts {
    zzth(zztg zztgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzts
    public final void zzb(zztt zzttVar) throws RemoteException {
        if (zzttVar.zzbog != null) {
            zzttVar.zzbog.onAdClicked();
        }
    }
}
