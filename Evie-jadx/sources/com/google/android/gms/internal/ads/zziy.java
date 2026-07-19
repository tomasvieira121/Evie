package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zziy extends zzbfc<zziy> {
    private Integer zzanu = null;
    private zziw zzapn = null;
    private Integer zzape = null;
    private Integer zzapf = null;
    private Integer zzapr = null;

    public zziy() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public final zziy zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 8) {
                int position = zzbezVar.getPosition();
                try {
                    this.zzanu = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
                } catch (IllegalArgumentException unused) {
                    zzbezVar.zzdc(position);
                    zza(zzbezVar, iZzabk);
                }
            } else if (iZzabk == 18) {
                if (this.zzapn == null) {
                    this.zzapn = new zziw();
                }
                zzbezVar.zza(this.zzapn);
            } else if (iZzabk == 24) {
                this.zzape = Integer.valueOf(zzbezVar.zzacc());
            } else if (iZzabk == 32) {
                this.zzapf = Integer.valueOf(zzbezVar.zzacc());
            } else if (iZzabk == 40) {
                this.zzapr = Integer.valueOf(zzbezVar.zzacc());
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzanu;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        zziw zziwVar = this.zzapn;
        if (zziwVar != null) {
            zzbfaVar.zza(2, zziwVar);
        }
        Integer num2 = this.zzape;
        if (num2 != null) {
            zzbfaVar.zzm(3, num2.intValue());
        }
        Integer num3 = this.zzapf;
        if (num3 != null) {
            zzbfaVar.zzm(4, num3.intValue());
        }
        Integer num4 = this.zzapr;
        if (num4 != null) {
            zzbfaVar.zzm(5, num4.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzanu;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        zziw zziwVar = this.zzapn;
        if (zziwVar != null) {
            iZzr += zzbfa.zzb(2, zziwVar);
        }
        Integer num2 = this.zzape;
        if (num2 != null) {
            iZzr += zzbfa.zzq(3, num2.intValue());
        }
        Integer num3 = this.zzapf;
        if (num3 != null) {
            iZzr += zzbfa.zzq(4, num3.intValue());
        }
        Integer num4 = this.zzapr;
        return num4 != null ? iZzr + zzbfa.zzq(5, num4.intValue()) : iZzr;
    }
}
