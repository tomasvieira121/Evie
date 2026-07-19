package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class zzavg implements zzauf {
    private final /* synthetic */ zzaum zzdhy;

    zzavg(zzaum zzaumVar) {
        this.zzdhy = zzaumVar;
    }

    @Override // com.google.android.gms.internal.ads.zzauf
    public final byte[] zzc(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzayk.zza(this.zzdhy.zzwh().zzwj(), ((zzauf) this.zzdhy.zzwh().zzwi()).zzc(bArr, bArr2));
    }
}
