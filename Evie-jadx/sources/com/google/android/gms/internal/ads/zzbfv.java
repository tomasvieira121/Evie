package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfv extends zzbfc<zzbfv> {
    public String zzedv = null;
    public Long zzedw = null;
    public Boolean zzedx = null;

    public zzbfv() {
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
            if (iZzabk == 10) {
                this.zzedv = zzbezVar.readString();
            } else if (iZzabk == 16) {
                this.zzedw = Long.valueOf(zzbezVar.zzabm());
            } else if (iZzabk == 24) {
                this.zzedx = Boolean.valueOf(zzbezVar.zzabq());
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        String str = this.zzedv;
        if (str != null) {
            zzbfaVar.zzf(1, str);
        }
        Long l = this.zzedw;
        if (l != null) {
            zzbfaVar.zzi(2, l.longValue());
        }
        Boolean bool = this.zzedx;
        if (bool != null) {
            zzbfaVar.zzf(3, bool.booleanValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        String str = this.zzedv;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        Long l = this.zzedw;
        if (l != null) {
            iZzr += zzbfa.zzd(2, l.longValue());
        }
        Boolean bool = this.zzedx;
        if (bool == null) {
            return iZzr;
        }
        bool.booleanValue();
        return iZzr + zzbfa.zzcd(3) + 1;
    }
}
