package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzim extends zzbfc<zzim> {
    private Integer zzamf = null;
    private Integer zzanx = null;

    public zzim() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public final zzim zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 8) {
                zzbezVar.getPosition();
                int iZzacc = zzbezVar.zzacc();
                if (iZzacc < 0 || iZzacc > 2) {
                    StringBuilder sb = new StringBuilder(43);
                    sb.append(iZzacc);
                    sb.append(" is not a valid enum NetworkType");
                    throw new IllegalArgumentException(sb.toString());
                }
                this.zzamf = Integer.valueOf(iZzacc);
            } else if (iZzabk == 16) {
                try {
                    int iZzacc2 = zzbezVar.zzacc();
                    if ((iZzacc2 < 0 || iZzacc2 > 2) && (iZzacc2 < 4 || iZzacc2 > 4)) {
                        StringBuilder sb2 = new StringBuilder(51);
                        sb2.append(iZzacc2);
                        sb2.append(" is not a valid enum CellularNetworkType");
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    this.zzanx = Integer.valueOf(iZzacc2);
                } catch (IllegalArgumentException unused) {
                    zzbezVar.zzdc(zzbezVar.getPosition());
                    zza(zzbezVar, iZzabk);
                }
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Integer num = this.zzamf;
        if (num != null) {
            zzbfaVar.zzm(1, num.intValue());
        }
        Integer num2 = this.zzanx;
        if (num2 != null) {
            zzbfaVar.zzm(2, num2.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        Integer num = this.zzamf;
        if (num != null) {
            iZzr += zzbfa.zzq(1, num.intValue());
        }
        Integer num2 = this.zzanx;
        return num2 != null ? iZzr + zzbfa.zzq(2, num2.intValue()) : iZzr;
    }
}
