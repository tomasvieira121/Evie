package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes.dex */
final class zzdq extends zzea {
    private final /* synthetic */ boolean zzfy;
    private final /* synthetic */ zzdp zzgo;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzeo) ((zzaw) anyClient).getService()).zza(new zzek(this.zzgo.zzk, this.zzfy), new zzdy(this));
    }
}
