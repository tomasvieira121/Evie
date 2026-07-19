package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzij extends zzbfc<zzij> {
    private String zzanq = null;
    private Integer zzanr = null;
    private int[] zzans = zzbfl.zzeby;
    private zzis zzant = null;

    public zzij() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzl, reason: merged with bridge method [inline-methods] */
    public final zzij zza(zzbez zzbezVar) throws IOException {
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
            } else if (iZzabk == 24) {
                int iZzb = zzbfl.zzb(zzbezVar, 24);
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
            } else if (iZzabk == 26) {
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
            } else if (iZzabk == 34) {
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
        int[] iArr = this.zzans;
        if (iArr != null && iArr.length > 0) {
            int i = 0;
            while (true) {
                int[] iArr2 = this.zzans;
                if (i >= iArr2.length) {
                    break;
                }
                zzbfaVar.zzm(3, iArr2[i]);
                i++;
            }
        }
        zzis zzisVar = this.zzant;
        if (zzisVar != null) {
            zzbfaVar.zza(4, zzisVar);
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int[] iArr;
        int iZzr = super.zzr();
        String str = this.zzanq;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        Integer num = this.zzanr;
        if (num != null) {
            iZzr += zzbfa.zzq(2, num.intValue());
        }
        int[] iArr2 = this.zzans;
        if (iArr2 != null && iArr2.length > 0) {
            int i = 0;
            int iZzce = 0;
            while (true) {
                iArr = this.zzans;
                if (i >= iArr.length) {
                    break;
                }
                iZzce += zzbfa.zzce(iArr[i]);
                i++;
            }
            iZzr = iZzr + iZzce + (iArr.length * 1);
        }
        zzis zzisVar = this.zzant;
        return zzisVar != null ? iZzr + zzbfa.zzb(4, zzisVar) : iZzr;
    }
}
