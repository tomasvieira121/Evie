package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzih extends zzbfc<zzih> {
    private Integer zzanc = null;
    private zzit zzand = null;
    private String zzane = null;
    private String zzanf = null;

    public zzih() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzj, reason: merged with bridge method [inline-methods] */
    public final zzih zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 40) {
                int position = zzbezVar.getPosition();
                try {
                    int iZzacc = zzbezVar.zzacc();
                    if (iZzacc < 0 || iZzacc > 2) {
                        StringBuilder sb = new StringBuilder(40);
                        sb.append(iZzacc);
                        sb.append(" is not a valid enum Platform");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.zzanc = Integer.valueOf(iZzacc);
                } catch (IllegalArgumentException unused) {
                    zzbezVar.zzdc(position);
                    zza(zzbezVar, iZzabk);
                }
            } else if (iZzabk == 50) {
                if (this.zzand == null) {
                    this.zzand = new zzit();
                }
                zzbezVar.zza(this.zzand);
            } else if (iZzabk == 58) {
                this.zzane = zzbezVar.readString();
            } else if (iZzabk == 66) {
                this.zzanf = zzbezVar.readString();
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzanc;
        if (num != null) {
            zzbfaVar.zzm(5, num.intValue());
        }
        zzit zzitVar = this.zzand;
        if (zzitVar != null) {
            zzbfaVar.zza(6, zzitVar);
        }
        String str = this.zzane;
        if (str != null) {
            zzbfaVar.zzf(7, str);
        }
        String str2 = this.zzanf;
        if (str2 != null) {
            zzbfaVar.zzf(8, str2);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzanc;
        if (num != null) {
            iZzr += zzbfa.zzq(5, num.intValue());
        }
        zzit zzitVar = this.zzand;
        if (zzitVar != null) {
            iZzr += zzbfa.zzb(6, zzitVar);
        }
        String str = this.zzane;
        if (str != null) {
            iZzr += zzbfa.zzg(7, str);
        }
        String str2 = this.zzanf;
        return str2 != null ? iZzr + zzbfa.zzg(8, str2) : iZzr;
    }
}
