package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzid extends zzbfc<zzid> {
    private String zzacp = null;
    private zzic[] zzamh = zzic.zzhr();
    private Integer zzami = null;

    public zzid() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzid zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 10) {
                this.zzacp = zzbezVar.readString();
            } else if (iZzabk == 18) {
                int iZzb = zzbfl.zzb(zzbezVar, 18);
                zzic[] zzicVarArr = this.zzamh;
                int length = zzicVarArr == null ? 0 : zzicVarArr.length;
                zzic[] zzicVarArr2 = new zzic[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzamh, 0, zzicVarArr2, 0, length);
                }
                while (length < zzicVarArr2.length - 1) {
                    zzicVarArr2[length] = new zzic();
                    zzbezVar.zza(zzicVarArr2[length]);
                    zzbezVar.zzabk();
                    length++;
                }
                zzicVarArr2[length] = new zzic();
                zzbezVar.zza(zzicVarArr2[length]);
                this.zzamh = zzicVarArr2;
            } else if (iZzabk == 24) {
                int position = zzbezVar.getPosition();
                try {
                    this.zzami = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
                } catch (IllegalArgumentException unused) {
                    zzbezVar.zzdc(position);
                    zza(zzbezVar, iZzabk);
                }
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        String str = this.zzacp;
        if (str != null) {
            zzbfaVar.zzf(1, str);
        }
        zzic[] zzicVarArr = this.zzamh;
        if (zzicVarArr != null && zzicVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzic[] zzicVarArr2 = this.zzamh;
                if (i >= zzicVarArr2.length) {
                    break;
                }
                zzic zzicVar = zzicVarArr2[i];
                if (zzicVar != null) {
                    zzbfaVar.zza(2, zzicVar);
                }
                i++;
            }
        }
        Integer num = this.zzami;
        if (num != null) {
            zzbfaVar.zzm(3, num.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        String str = this.zzacp;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        zzic[] zzicVarArr = this.zzamh;
        if (zzicVarArr != null && zzicVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzic[] zzicVarArr2 = this.zzamh;
                if (i >= zzicVarArr2.length) {
                    break;
                }
                zzic zzicVar = zzicVarArr2[i];
                if (zzicVar != null) {
                    iZzr += zzbfa.zzb(2, zzicVar);
                }
                i++;
            }
        }
        Integer num = this.zzami;
        return num != null ? iZzr + zzbfa.zzq(3, num.intValue()) : iZzr;
    }
}
