package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzig extends zzbfc<zzig> {
    public String zzamu = null;
    private zzis zzamv = null;
    private Integer zzamw = null;
    public zzit zzamx = null;
    private Integer zzamy = null;
    private Integer zzamz = null;
    private Integer zzana = null;
    private Integer zzanb = null;

    public zzig() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final zzig zza(zzbez zzbezVar) throws IOException {
        zzbfi zzbfiVar;
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            if (iZzabk == 0) {
                return this;
            }
            if (iZzabk != 10) {
                if (iZzabk == 18) {
                    if (this.zzamv == null) {
                        this.zzamv = new zzis();
                    }
                    zzbfiVar = this.zzamv;
                } else if (iZzabk == 24) {
                    this.zzamw = Integer.valueOf(zzbezVar.zzacc());
                } else if (iZzabk == 34) {
                    if (this.zzamx == null) {
                        this.zzamx = new zzit();
                    }
                    zzbfiVar = this.zzamx;
                } else if (iZzabk == 40) {
                    this.zzamy = Integer.valueOf(zzbezVar.zzacc());
                } else if (iZzabk == 48) {
                    zzbezVar.getPosition();
                    this.zzamz = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
                } else if (iZzabk == 56) {
                    zzbezVar.getPosition();
                    this.zzana = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
                } else if (iZzabk == 64) {
                    int position = zzbezVar.getPosition();
                    try {
                        this.zzanb = Integer.valueOf(zzia.zzd(zzbezVar.zzacc()));
                    } catch (IllegalArgumentException unused) {
                        zzbezVar.zzdc(position);
                        zza(zzbezVar, iZzabk);
                    }
                } else if (!super.zza(zzbezVar, iZzabk)) {
                    return this;
                }
                zzbezVar.zza(zzbfiVar);
            } else {
                this.zzamu = zzbezVar.readString();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        String str = this.zzamu;
        if (str != null) {
            zzbfaVar.zzf(1, str);
        }
        zzis zzisVar = this.zzamv;
        if (zzisVar != null) {
            zzbfaVar.zza(2, zzisVar);
        }
        Integer num = this.zzamw;
        if (num != null) {
            zzbfaVar.zzm(3, num.intValue());
        }
        zzit zzitVar = this.zzamx;
        if (zzitVar != null) {
            zzbfaVar.zza(4, zzitVar);
        }
        Integer num2 = this.zzamy;
        if (num2 != null) {
            zzbfaVar.zzm(5, num2.intValue());
        }
        Integer num3 = this.zzamz;
        if (num3 != null) {
            zzbfaVar.zzm(6, num3.intValue());
        }
        Integer num4 = this.zzana;
        if (num4 != null) {
            zzbfaVar.zzm(7, num4.intValue());
        }
        Integer num5 = this.zzanb;
        if (num5 != null) {
            zzbfaVar.zzm(8, num5.intValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        String str = this.zzamu;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        zzis zzisVar = this.zzamv;
        if (zzisVar != null) {
            iZzr += zzbfa.zzb(2, zzisVar);
        }
        Integer num = this.zzamw;
        if (num != null) {
            iZzr += zzbfa.zzq(3, num.intValue());
        }
        zzit zzitVar = this.zzamx;
        if (zzitVar != null) {
            iZzr += zzbfa.zzb(4, zzitVar);
        }
        Integer num2 = this.zzamy;
        if (num2 != null) {
            iZzr += zzbfa.zzq(5, num2.intValue());
        }
        Integer num3 = this.zzamz;
        if (num3 != null) {
            iZzr += zzbfa.zzq(6, num3.intValue());
        }
        Integer num4 = this.zzana;
        if (num4 != null) {
            iZzr += zzbfa.zzq(7, num4.intValue());
        }
        Integer num5 = this.zzanb;
        return num5 != null ? iZzr + zzbfa.zzq(8, num5.intValue()) : iZzr;
    }
}
