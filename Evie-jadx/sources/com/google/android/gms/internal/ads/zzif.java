package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzif extends zzbfc<zzif> {
    private Integer zzamo = null;
    private zzis zzamp = null;
    private zzis zzamq = null;
    private zzis zzamr = null;
    private zzis[] zzams = zzis.zzht();
    private Integer zzamt = null;

    public zzif() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final /* synthetic */ zzbfi zza(zzbez zzbezVar) throws IOException {
        zzbfi zzbfiVar;
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk != 8) {
                if (iZzabk == 18) {
                    if (this.zzamp == null) {
                        this.zzamp = new zzis();
                    }
                    zzbfiVar = this.zzamp;
                } else if (iZzabk == 26) {
                    if (this.zzamq == null) {
                        this.zzamq = new zzis();
                    }
                    zzbfiVar = this.zzamq;
                } else if (iZzabk == 34) {
                    if (this.zzamr == null) {
                        this.zzamr = new zzis();
                    }
                    zzbfiVar = this.zzamr;
                } else if (iZzabk == 42) {
                    int iZzb = zzbfl.zzb(zzbezVar, 42);
                    zzis[] zzisVarArr = this.zzams;
                    int length = zzisVarArr == null ? 0 : zzisVarArr.length;
                    zzis[] zzisVarArr2 = new zzis[iZzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzams, 0, zzisVarArr2, 0, length);
                    }
                    while (length < zzisVarArr2.length - 1) {
                        zzisVarArr2[length] = new zzis();
                        zzbezVar.zza(zzisVarArr2[length]);
                        zzbezVar.zzabk();
                        length++;
                    }
                    zzisVarArr2[length] = new zzis();
                    zzbezVar.zza(zzisVarArr2[length]);
                    this.zzams = zzisVarArr2;
                } else if (iZzabk == 48) {
                    this.zzamt = Integer.valueOf(zzbezVar.zzacc());
                } else if (!super.zza(zzbezVar, iZzabk)) {
                    return this;
                }
                zzbezVar.zza(zzbfiVar);
            } else {
                this.zzamo = Integer.valueOf(zzbezVar.zzacc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzamo;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        zzis zzisVar = this.zzamp;
        if (zzisVar != null) {
            zzbfaVar.zza(2, zzisVar);
        }
        zzis zzisVar2 = this.zzamq;
        if (zzisVar2 != null) {
            zzbfaVar.zza(3, zzisVar2);
        }
        zzis zzisVar3 = this.zzamr;
        if (zzisVar3 != null) {
            zzbfaVar.zza(4, zzisVar3);
        }
        zzis[] zzisVarArr = this.zzams;
        if (zzisVarArr != null && zzisVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzis[] zzisVarArr2 = this.zzams;
                if (i >= zzisVarArr2.length) {
                    break;
                }
                zzis zzisVar4 = zzisVarArr2[i];
                if (zzisVar4 != null) {
                    zzbfaVar.zza(5, zzisVar4);
                }
                i++;
            }
        }
        Integer num2 = this.zzamt;
        if (num2 != null) {
            zzbfaVar.zzm(6, num2.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzamo;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        zzis zzisVar = this.zzamp;
        if (zzisVar != null) {
            iZzr += zzbfa.zzb(2, zzisVar);
        }
        zzis zzisVar2 = this.zzamq;
        if (zzisVar2 != null) {
            iZzr += zzbfa.zzb(3, zzisVar2);
        }
        zzis zzisVar3 = this.zzamr;
        if (zzisVar3 != null) {
            iZzr += zzbfa.zzb(4, zzisVar3);
        }
        zzis[] zzisVarArr = this.zzams;
        if (zzisVarArr != null && zzisVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzis[] zzisVarArr2 = this.zzams;
                if (i >= zzisVarArr2.length) {
                    break;
                }
                zzis zzisVar4 = zzisVarArr2[i];
                if (zzisVar4 != null) {
                    iZzr += zzbfa.zzb(5, zzisVar4);
                }
                i++;
            }
        }
        Integer num2 = this.zzamt;
        return num2 != null ? iZzr + zzbfa.zzq(6, num2.intValue()) : iZzr;
    }
}
