package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zziq extends zzbfc<zziq> {
    private Integer zzaon = null;
    private Integer zzaoo = null;

    public zziq() {
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
                this.zzaon = Integer.valueOf(zzbezVar.zzacc());
            } else if (iZzabk == 16) {
                this.zzaoo = Integer.valueOf(zzbezVar.zzacc());
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzaon;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        Integer num2 = this.zzaoo;
        if (num2 != null) {
            zzbfaVar.zzm(2, num2.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzaon;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        Integer num2 = this.zzaoo;
        return num2 != null ? iZzr + zzbfa.zzq(2, num2.intValue()) : iZzr;
    }
}
