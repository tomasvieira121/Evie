package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzay extends zzbfc<zzay> {
    public String zzcx;
    private String zzcy;
    private String zzcz;
    private String zzda;
    private String zzdb;

    @Override // com.google.android.gms.internal.ads.zzbfi
    public final /* synthetic */ zzbfi zza(zzbez zzbezVar) throws IOException {
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk == 10) {
                this.zzcx = zzbezVar.readString();
            } else if (iZzabk == 18) {
                this.zzcy = zzbezVar.readString();
            } else if (iZzabk == 26) {
                this.zzcz = zzbezVar.readString();
            } else if (iZzabk == 34) {
                this.zzda = zzbezVar.readString();
            } else if (iZzabk == 42) {
                this.zzdb = zzbezVar.readString();
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        String str = this.zzcx;
        if (str != null) {
            zzbfaVar.zzf(1, str);
        }
        String str2 = this.zzcy;
        if (str2 != null) {
            zzbfaVar.zzf(2, str2);
        }
        String str3 = this.zzcz;
        if (str3 != null) {
            zzbfaVar.zzf(3, str3);
        }
        String str4 = this.zzda;
        if (str4 != null) {
            zzbfaVar.zzf(4, str4);
        }
        String str5 = this.zzdb;
        if (str5 != null) {
            zzbfaVar.zzf(5, str5);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        String str = this.zzcx;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        String str2 = this.zzcy;
        if (str2 != null) {
            iZzr += zzbfa.zzg(2, str2);
        }
        String str3 = this.zzcz;
        if (str3 != null) {
            iZzr += zzbfa.zzg(3, str3);
        }
        String str4 = this.zzda;
        if (str4 != null) {
            iZzr += zzbfa.zzg(4, str4);
        }
        String str5 = this.zzdb;
        return str5 != null ? iZzr + zzbfa.zzg(5, str5) : iZzr;
    }
}
