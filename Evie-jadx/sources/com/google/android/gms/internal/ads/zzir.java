package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzir extends zzbfc<zzir> {
    private static volatile zzir[] zzaop;
    private String zzanq = null;
    private Integer zzanr = null;
    private zzis zzant = null;

    public zzir() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    public static zzir[] zzhs() {
        if (zzaop == null) {
            synchronized (zzbfg.zzebs) {
                if (zzaop == null) {
                    zzaop = new zzir[0];
                }
            }
        }
        return zzaop;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public final zzir zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 10) {
                this.zzanq = zzbezVar.readString();
            } else if (iZzabk == 16) {
                int position = zzbezVar.getPosition();
                try {
                    this.zzanr = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
                } catch (IllegalArgumentException unused) {
                    zzbezVar.zzdc(position);
                    zza(zzbezVar, iZzabk);
                }
            } else if (iZzabk == 26) {
                if (this.zzant == null) {
                    this.zzant = new zzis();
                }
                zzbezVar.zza(this.zzant);
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        String str = this.zzanq;
        if (str != null) {
            zzbfaVar.zzf(1, str);
        }
        Integer num = this.zzanr;
        if (num != null) {
            zzbfaVar.zzm(2, num.intValue());
        }
        zzis zzisVar = this.zzant;
        if (zzisVar != null) {
            zzbfaVar.zza(3, zzisVar);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        String str = this.zzanq;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        Integer num = this.zzanr;
        if (num != null) {
            iZzr += zzbfa.zzq(2, num.intValue());
        }
        zzis zzisVar = this.zzant;
        return zzisVar != null ? iZzr + zzbfa.zzb(3, zzisVar) : iZzr;
    }
}
