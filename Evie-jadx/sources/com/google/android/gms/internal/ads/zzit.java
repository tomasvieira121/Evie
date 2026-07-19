package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzit extends zzbfc<zzit> {
    public Integer zzaot = null;
    public Integer zzaou = null;
    public Integer zzaov = null;

    public zzit() {
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
                this.zzaot = Integer.valueOf(zzbezVar.zzacc());
            } else if (iZzabk == 16) {
                this.zzaou = Integer.valueOf(zzbezVar.zzacc());
            } else if (iZzabk == 24) {
                this.zzaov = Integer.valueOf(zzbezVar.zzacc());
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzaot;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        Integer num2 = this.zzaou;
        if (num2 != null) {
            zzbfaVar.zzm(2, num2.intValue());
        }
        Integer num3 = this.zzaov;
        if (num3 != null) {
            zzbfaVar.zzm(3, num3.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzaot;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        Integer num2 = this.zzaou;
        if (num2 != null) {
            iZzr += zzbfa.zzq(2, num2.intValue());
        }
        Integer num3 = this.zzaov;
        return num3 != null ? iZzr + zzbfa.zzq(3, num3.intValue()) : iZzr;
    }
}
