package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzie extends zzbfc<zzie> {
    private String zzamj = null;
    private zzic[] zzamk = zzic.zzhr();
    private Integer zzaml = null;
    private Integer zzamm = null;
    private Integer zzamn = null;

    public zzie() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzie zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 10) {
                this.zzamj = zzbezVar.readString();
            } else if (iZzabk == 18) {
                int iZzb = zzbfl.zzb(zzbezVar, 18);
                zzic[] zzicVarArr = this.zzamk;
                int length = zzicVarArr == null ? 0 : zzicVarArr.length;
                zzic[] zzicVarArr2 = new zzic[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzamk, 0, zzicVarArr2, 0, length);
                }
                while (length < zzicVarArr2.length - 1) {
                    zzicVarArr2[length] = new zzic();
                    zzbezVar.zza(zzicVarArr2[length]);
                    zzbezVar.zzabk();
                    length++;
                }
                zzicVarArr2[length] = new zzic();
                zzbezVar.zza(zzicVarArr2[length]);
                this.zzamk = zzicVarArr2;
            } else if (iZzabk == 24) {
                zzbezVar.getPosition();
                this.zzaml = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
            } else if (iZzabk == 32) {
                zzbezVar.getPosition();
                this.zzamm = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
            } else if (iZzabk == 40) {
                int position = zzbezVar.getPosition();
                try {
                    this.zzamn = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
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
        String str = this.zzamj;
        if (str != null) {
            zzbfaVar.zzf(1, str);
        }
        zzic[] zzicVarArr = this.zzamk;
        if (zzicVarArr != null && zzicVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzic[] zzicVarArr2 = this.zzamk;
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
        Integer num = this.zzaml;
        if (num != null) {
            zzbfaVar.zzm(3, num.intValue());
        }
        Integer num2 = this.zzamm;
        if (num2 != null) {
            zzbfaVar.zzm(4, num2.intValue());
        }
        Integer num3 = this.zzamn;
        if (num3 != null) {
            zzbfaVar.zzm(5, num3.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        String str = this.zzamj;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        zzic[] zzicVarArr = this.zzamk;
        if (zzicVarArr != null && zzicVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzic[] zzicVarArr2 = this.zzamk;
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
        Integer num = this.zzaml;
        if (num != null) {
            iZzr += zzbfa.zzq(3, num.intValue());
        }
        Integer num2 = this.zzamm;
        if (num2 != null) {
            iZzr += zzbfa.zzq(4, num2.intValue());
        }
        Integer num3 = this.zzamn;
        return num3 != null ? iZzr + zzbfa.zzq(5, num3.intValue()) : iZzr;
    }
}
