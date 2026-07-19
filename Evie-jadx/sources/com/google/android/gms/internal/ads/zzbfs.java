package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfs extends zzbfc<zzbfs> {
    private Integer zzedj = null;
    private byte[] zzedk = null;
    private byte[] zzedg = null;

    public zzbfs() {
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
            if (iZzabk == 8) {
                this.zzedj = Integer.valueOf(zzbezVar.zzabn());
            } else if (iZzabk == 18) {
                this.zzedk = zzbezVar.readBytes();
            } else if (iZzabk == 26) {
                this.zzedg = zzbezVar.readBytes();
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzedj;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        byte[] bArr = this.zzedk;
        if (bArr != null) {
            zzbfaVar.zza(2, bArr);
        }
        byte[] bArr2 = this.zzedg;
        if (bArr2 != null) {
            zzbfaVar.zza(3, bArr2);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzedj;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        byte[] bArr = this.zzedk;
        if (bArr != null) {
            iZzr += zzbfa.zzb(2, bArr);
        }
        byte[] bArr2 = this.zzedg;
        return bArr2 != null ? iZzr + zzbfa.zzb(3, bArr2) : iZzr;
    }
}
