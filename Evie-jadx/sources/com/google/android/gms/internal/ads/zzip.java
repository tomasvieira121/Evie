package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzip extends zzbfc<zzip> {
    private Integer zzaol = null;
    private Integer zzaom = null;

    public zzip() {
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
                this.zzaol = Integer.valueOf(zzbezVar.zzacc());
            } else if (iZzabk == 16) {
                this.zzaom = Integer.valueOf(zzbezVar.zzacc());
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzaol;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        Integer num2 = this.zzaom;
        if (num2 != null) {
            zzbfaVar.zzm(2, num2.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzaol;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        Integer num2 = this.zzaom;
        return num2 != null ? iZzr + zzbfa.zzq(2, num2.intValue()) : iZzr;
    }
}
