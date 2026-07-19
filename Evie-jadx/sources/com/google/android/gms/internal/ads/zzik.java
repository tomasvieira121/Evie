package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzik extends zzbfc<zzik> {
    private Integer zzanu = null;
    private int[] zzans = zzbfl.zzeby;

    public zzik() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final zzik zza(zzbez zzbezVar) throws IOException {
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
            } else if (iZzabk == 16) {
                int iZzb = zzbfl.zzb(zzbezVar, 16);
                int[] iArr = this.zzans;
                int length = iArr == null ? 0 : iArr.length;
                int[] iArr2 = new int[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzans, 0, iArr2, 0, length);
                }
                while (length < iArr2.length - 1) {
                    iArr2[length] = zzbezVar.zzacc();
                    zzbezVar.zzabk();
                    length++;
                }
                iArr2[length] = zzbezVar.zzacc();
                this.zzans = iArr2;
            } else if (iZzabk == 18) {
                int iZzbr = zzbezVar.zzbr(zzbezVar.zzacc());
                int position2 = zzbezVar.getPosition();
                int i = 0;
                while (zzbezVar.zzagn() > 0) {
                    zzbezVar.zzacc();
                    i++;
                }
                zzbezVar.zzdc(position2);
                int[] iArr3 = this.zzans;
                int length2 = iArr3 == null ? 0 : iArr3.length;
                int[] iArr4 = new int[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzans, 0, iArr4, 0, length2);
                }
                while (length2 < iArr4.length) {
                    iArr4[length2] = zzbezVar.zzacc();
                    length2++;
                }
                this.zzans = iArr4;
                zzbezVar.zzbs(iZzbr);
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
        int[] iArr = this.zzans;
        if (iArr != null && iArr.length > 0) {
            int i = 0;
            while (true) {
                int[] iArr2 = this.zzans;
                if (i >= iArr2.length) {
                    break;
                }
                zzbfaVar.zzm(2, iArr2[i]);
                i++;
            }
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
        int[] iArr = this.zzans;
        if (iArr == null || iArr.length <= 0) {
            return iZzr;
        }
        int i = 0;
        int iZzce = 0;
        while (true) {
            int[] iArr2 = this.zzans;
            if (i >= iArr2.length) {
                return iZzr + iZzce + (iArr2.length * 1);
            }
            iZzce += zzbfa.zzce(iArr2[i]);
            i++;
        }
    }
}
