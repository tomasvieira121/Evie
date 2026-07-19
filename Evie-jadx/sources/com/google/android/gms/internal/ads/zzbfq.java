package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfq extends zzbfc<zzbfq> {
    private byte[] zzede = null;
    private byte[] zzedf = null;
    private byte[] zzedg = null;

    public zzbfq() {
        this.zzebk = null;
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
                this.zzede = zzbezVar.readBytes();
            } else if (iZzabk == 18) {
                this.zzedf = zzbezVar.readBytes();
            } else if (iZzabk == 26) {
                this.zzedg = zzbezVar.readBytes();
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        byte[] bArr = this.zzede;
        if (bArr != null) {
            zzbfaVar.zza(1, bArr);
        }
        byte[] bArr2 = this.zzedf;
        if (bArr2 != null) {
            zzbfaVar.zza(2, bArr2);
        }
        byte[] bArr3 = this.zzedg;
        if (bArr3 != null) {
            zzbfaVar.zza(3, bArr3);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        byte[] bArr = this.zzede;
        if (bArr != null) {
            iZzr += zzbfa.zzb(1, bArr);
        }
        byte[] bArr2 = this.zzedf;
        if (bArr2 != null) {
            iZzr += zzbfa.zzb(2, bArr2);
        }
        byte[] bArr3 = this.zzedg;
        return bArr3 != null ? iZzr + zzbfa.zzb(3, bArr3) : iZzr;
    }
}
