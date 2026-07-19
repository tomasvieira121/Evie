package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzil extends zzbfc<zzil> {
    private zzij zzanv = null;
    private zzir[] zzanw = zzir.zzhs();
    private Integer zzanu = null;
    private zzis zzant = null;

    public zzil() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzil zza(zzbez zzbezVar) throws IOException {
        zzbfi zzbfiVar;
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 10) {
                if (this.zzanv == null) {
                    this.zzanv = new zzij();
                }
                zzbfiVar = this.zzanv;
            } else if (iZzabk == 18) {
                int iZzb = zzbfl.zzb(zzbezVar, 18);
                zzir[] zzirVarArr = this.zzanw;
                int length = zzirVarArr == null ? 0 : zzirVarArr.length;
                zzir[] zzirVarArr2 = new zzir[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzanw, 0, zzirVarArr2, 0, length);
                }
                while (length < zzirVarArr2.length - 1) {
                    zzirVarArr2[length] = new zzir();
                    zzbezVar.zza(zzirVarArr2[length]);
                    zzbezVar.zzabk();
                    length++;
                }
                zzirVarArr2[length] = new zzir();
                zzbezVar.zza(zzirVarArr2[length]);
                this.zzanw = zzirVarArr2;
            } else if (iZzabk == 24) {
                int position = zzbezVar.getPosition();
                try {
                    this.zzanu = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
                } catch (IllegalArgumentException unused) {
                    zzbezVar.zzdc(position);
                    zza(zzbezVar, iZzabk);
                }
            } else if (iZzabk == 34) {
                if (this.zzant == null) {
                    this.zzant = new zzis();
                }
                zzbfiVar = this.zzant;
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
            zzbezVar.zza(zzbfiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        zzij zzijVar = this.zzanv;
        if (zzijVar != null) {
            zzbfaVar.zza(1, zzijVar);
        }
        zzir[] zzirVarArr = this.zzanw;
        if (zzirVarArr != null && zzirVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzir[] zzirVarArr2 = this.zzanw;
                if (i >= zzirVarArr2.length) {
                    break;
                }
                zzir zzirVar = zzirVarArr2[i];
                if (zzirVar != null) {
                    zzbfaVar.zza(2, zzirVar);
                }
                i++;
            }
        }
        Integer num = this.zzanu;
        if (num != null) {
            zzbfaVar.zzm(3, num.intValue());
        }
        zzis zzisVar = this.zzant;
        if (zzisVar != null) {
            zzbfaVar.zza(4, zzisVar);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        zzij zzijVar = this.zzanv;
        if (zzijVar != null) {
            iZzr += zzbfa.zzb(1, zzijVar);
        }
        zzir[] zzirVarArr = this.zzanw;
        if (zzirVarArr != null && zzirVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzir[] zzirVarArr2 = this.zzanw;
                if (i >= zzirVarArr2.length) {
                    break;
                }
                zzir zzirVar = zzirVarArr2[i];
                if (zzirVar != null) {
                    iZzr += zzbfa.zzb(2, zzirVar);
                }
                i++;
            }
        }
        Integer num = this.zzanu;
        if (num != null) {
            iZzr += zzbfa.zzq(3, num.intValue());
        }
        zzis zzisVar = this.zzant;
        return zzisVar != null ? iZzr + zzbfa.zzb(4, zzisVar) : iZzr;
    }
}
