package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbe extends zzbfc<zzbe> {
    public byte[] data = null;
    public byte[] zzgq = null;
    public byte[] zzgr = null;
    public byte[] zzgs = null;

    public zzbe() {
        this.zzebt = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final /* synthetic */ zzbfi zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 10) {
                this.data = zzbezVar.readBytes();
            } else if (iZzabk == 18) {
                this.zzgq = zzbezVar.readBytes();
            } else if (iZzabk == 26) {
                this.zzgr = zzbezVar.readBytes();
            } else if (iZzabk == 34) {
                this.zzgs = zzbezVar.readBytes();
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        byte[] bArr = this.data;
        if (bArr != null) {
            zzbfaVar.zza(1, bArr);
        }
        byte[] bArr2 = this.zzgq;
        if (bArr2 != null) {
            zzbfaVar.zza(2, bArr2);
        }
        byte[] bArr3 = this.zzgr;
        if (bArr3 != null) {
            zzbfaVar.zza(3, bArr3);
        }
        byte[] bArr4 = this.zzgs;
        if (bArr4 != null) {
            zzbfaVar.zza(4, bArr4);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        byte[] bArr = this.data;
        if (bArr != null) {
            iZzr += zzbfa.zzb(1, bArr);
        }
        byte[] bArr2 = this.zzgq;
        if (bArr2 != null) {
            iZzr += zzbfa.zzb(2, bArr2);
        }
        byte[] bArr3 = this.zzgr;
        if (bArr3 != null) {
            iZzr += zzbfa.zzb(3, bArr3);
        }
        byte[] bArr4 = this.zzgs;
        return bArr4 != null ? iZzr + zzbfa.zzb(4, bArr4) : iZzr;
    }
}
