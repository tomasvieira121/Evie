package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbd extends zzbfc<zzbd> {
    private Long zzgl = null;
    private Integer zzgm = null;
    private Boolean zzgn = null;
    private int[] zzgo = zzbfl.zzeby;
    private Long zzgp = null;

    public zzbd() {
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
                this.zzgl = Long.valueOf(zzbezVar.zzacd());
            } else if (iZzabk == 16) {
                this.zzgm = Integer.valueOf(zzbezVar.zzacc());
            } else if (iZzabk == 24) {
                this.zzgn = Boolean.valueOf(zzbezVar.zzabq());
            } else if (iZzabk == 32) {
                int iZzb = zzbfl.zzb(zzbezVar, 32);
                int[] iArr = this.zzgo;
                int length = iArr == null ? 0 : iArr.length;
                int[] iArr2 = new int[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzgo, 0, iArr2, 0, length);
                }
                while (length < iArr2.length - 1) {
                    iArr2[length] = zzbezVar.zzacc();
                    zzbezVar.zzabk();
                    length++;
                }
                iArr2[length] = zzbezVar.zzacc();
                this.zzgo = iArr2;
            } else if (iZzabk == 34) {
                int iZzbr = zzbezVar.zzbr(zzbezVar.zzacc());
                int position = zzbezVar.getPosition();
                int i = 0;
                while (zzbezVar.zzagn() > 0) {
                    zzbezVar.zzacc();
                    i++;
                }
                zzbezVar.zzdc(position);
                int[] iArr3 = this.zzgo;
                int length2 = iArr3 == null ? 0 : iArr3.length;
                int[] iArr4 = new int[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzgo, 0, iArr4, 0, length2);
                }
                while (length2 < iArr4.length) {
                    iArr4[length2] = zzbezVar.zzacc();
                    length2++;
                }
                this.zzgo = iArr4;
                zzbezVar.zzbs(iZzbr);
            } else if (iZzabk == 40) {
                this.zzgp = Long.valueOf(zzbezVar.zzacd());
            } else if (!super.zza(zzbezVar, iZzabk)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        Long l = this.zzgl;
        if (l != null) {
            zzbfaVar.zzi(1, l.longValue());
        }
        Integer num = this.zzgm;
        if (num != null) {
            zzbfaVar.zzm(2, num.intValue());
        }
        Boolean bool = this.zzgn;
        if (bool != null) {
            zzbfaVar.zzf(3, bool.booleanValue());
        }
        int[] iArr = this.zzgo;
        if (iArr != null && iArr.length > 0) {
            int i = 0;
            while (true) {
                int[] iArr2 = this.zzgo;
                if (i >= iArr2.length) {
                    break;
                }
                zzbfaVar.zzm(4, iArr2[i]);
                i++;
            }
        }
        Long l2 = this.zzgp;
        if (l2 != null) {
            zzbfaVar.zza(5, l2.longValue());
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int[] iArr;
        int iZzr = super.zzr();
        Long l = this.zzgl;
        if (l != null) {
            iZzr += zzbfa.zzd(1, l.longValue());
        }
        Integer num = this.zzgm;
        if (num != null) {
            iZzr += zzbfa.zzq(2, num.intValue());
        }
        Boolean bool = this.zzgn;
        if (bool != null) {
            bool.booleanValue();
            iZzr += zzbfa.zzcd(3) + 1;
        }
        int[] iArr2 = this.zzgo;
        if (iArr2 != null && iArr2.length > 0) {
            int i = 0;
            int iZzce = 0;
            while (true) {
                iArr = this.zzgo;
                if (i >= iArr.length) {
                    break;
                }
                iZzce += zzbfa.zzce(iArr[i]);
                i++;
            }
            iZzr = iZzr + iZzce + (iArr.length * 1);
        }
        Long l2 = this.zzgp;
        return l2 != null ? iZzr + zzbfa.zze(5, l2.longValue()) : iZzr;
    }
}
