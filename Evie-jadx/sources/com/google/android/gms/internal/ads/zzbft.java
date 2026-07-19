package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbft extends zzbfc<zzbft> {
    public Integer zzamf = null;
    public String mimeType = null;
    public byte[] zzedl = null;

    public zzbft() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzab, reason: merged with bridge method [inline-methods] */
    public final zzbft zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 8) {
                int position = zzbezVar.getPosition();
                try {
                    int iZzabn = zzbezVar.zzabn();
                    if (iZzabn < 0 || iZzabn > 1) {
                        StringBuilder sb = new StringBuilder(36);
                        sb.append(iZzabn);
                        sb.append(" is not a valid enum Type");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.zzamf = Integer.valueOf(iZzabn);
                } catch (IllegalArgumentException unused) {
                    zzbezVar.zzdc(position);
                    zza(zzbezVar, iZzabk);
                }
            } else if (iZzabk == 18) {
                this.mimeType = zzbezVar.readString();
            } else if (iZzabk == 26) {
                this.zzedl = zzbezVar.readBytes();
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzamf;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        String str = this.mimeType;
        if (str != null) {
            zzbfaVar.zzf(2, str);
        }
        byte[] bArr = this.zzedl;
        if (bArr != null) {
            zzbfaVar.zza(3, bArr);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzamf;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        String str = this.mimeType;
        if (str != null) {
            iZzr += zzbfa.zzg(2, str);
        }
        byte[] bArr = this.zzedl;
        return bArr != null ? iZzr + zzbfa.zzb(3, bArr) : iZzr;
    }
}
