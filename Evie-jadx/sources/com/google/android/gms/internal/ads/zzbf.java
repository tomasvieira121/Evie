package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbf extends zzbfc<zzbf> {
    public Long zzgl = null;
    private String zzgt = null;
    private byte[] zzgu = null;

    public zzbf() {
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
                this.zzgl = Long.valueOf(zzbezVar.zzacd());
            } else if (iZzabk == 26) {
                this.zzgt = zzbezVar.readString();
            } else if (iZzabk == 34) {
                this.zzgu = zzbezVar.readBytes();
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Long l = this.zzgl;
        if (l != null) {
            zzbfaVar.zzi(1, l.longValue());
        }
        String str = this.zzgt;
        if (str != null) {
            zzbfaVar.zzf(3, str);
        }
        byte[] bArr = this.zzgu;
        if (bArr != null) {
            zzbfaVar.zza(4, bArr);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Long l = this.zzgl;
        if (l != null) {
            iZzr += zzbfa.zzd(1, l.longValue());
        }
        String str = this.zzgt;
        if (str != null) {
            iZzr += zzbfa.zzg(3, str);
        }
        byte[] bArr = this.zzgu;
        return bArr != null ? iZzr + zzbfa.zzb(4, bArr) : iZzr;
    }
}
