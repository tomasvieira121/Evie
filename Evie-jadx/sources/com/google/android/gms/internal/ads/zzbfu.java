package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfu extends zzbfc<zzbfu> {
    private static volatile zzbfu[] zzedm;
    public Integer zzedn = null;
    public String url = null;
    public zzbfp zzedo = null;
    private zzbfr zzedp = null;
    private Integer zzedq = null;
    private int[] zzedr = zzbfl.zzeby;
    private String zzeds = null;
    public Integer zzedt = null;
    public String[] zzedu = zzbfl.zzecd;

    public zzbfu() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public final zzbfu zza(zzbez zzbezVar) throws IOException {
        zzbfi zzbfiVar;
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            switch (iZzabk) {
                case 0:
                    return this;
                case 8:
                    this.zzedn = Integer.valueOf(zzbezVar.zzabn());
                    continue;
                case 18:
                    this.url = zzbezVar.readString();
                    continue;
                case 26:
                    if (this.zzedo == null) {
                        this.zzedo = new zzbfp();
                    }
                    zzbfiVar = this.zzedo;
                    break;
                case 34:
                    if (this.zzedp == null) {
                        this.zzedp = new zzbfr();
                    }
                    zzbfiVar = this.zzedp;
                    break;
                case 40:
                    this.zzedq = Integer.valueOf(zzbezVar.zzabn());
                    continue;
                case 48:
                    int iZzb = zzbfl.zzb(zzbezVar, 48);
                    int[] iArr = this.zzedr;
                    int length = iArr == null ? 0 : iArr.length;
                    int[] iArr2 = new int[iZzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzedr, 0, iArr2, 0, length);
                    }
                    while (length < iArr2.length - 1) {
                        iArr2[length] = zzbezVar.zzabn();
                        zzbezVar.zzabk();
                        length++;
                    }
                    iArr2[length] = zzbezVar.zzabn();
                    this.zzedr = iArr2;
                    continue;
                case 50:
                    int iZzbr = zzbezVar.zzbr(zzbezVar.zzacc());
                    int position = zzbezVar.getPosition();
                    int i = 0;
                    while (zzbezVar.zzagn() > 0) {
                        zzbezVar.zzabn();
                        i++;
                    }
                    zzbezVar.zzdc(position);
                    int[] iArr3 = this.zzedr;
                    int length2 = iArr3 == null ? 0 : iArr3.length;
                    int[] iArr4 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzedr, 0, iArr4, 0, length2);
                    }
                    while (length2 < iArr4.length) {
                        iArr4[length2] = zzbezVar.zzabn();
                        length2++;
                    }
                    this.zzedr = iArr4;
                    zzbezVar.zzbs(iZzbr);
                    continue;
                case 58:
                    this.zzeds = zzbezVar.readString();
                    continue;
                case 64:
                    int position2 = zzbezVar.getPosition();
                    try {
                        int iZzabn = zzbezVar.zzabn();
                        if (iZzabn < 0 || iZzabn > 3) {
                            StringBuilder sb = new StringBuilder(46);
                            sb.append(iZzabn);
                            sb.append(" is not a valid enum AdResourceType");
                            throw new IllegalArgumentException(sb.toString());
                        }
                        this.zzedt = Integer.valueOf(iZzabn);
                        continue;
                    } catch (IllegalArgumentException unused) {
                        zzbezVar.zzdc(position2);
                        zza(zzbezVar, iZzabk);
                    }
                    break;
                case 74:
                    int iZzb2 = zzbfl.zzb(zzbezVar, 74);
                    String[] strArr = this.zzedu;
                    int length3 = strArr == null ? 0 : strArr.length;
                    String[] strArr2 = new String[iZzb2 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzedu, 0, strArr2, 0, length3);
                    }
                    while (length3 < strArr2.length - 1) {
                        strArr2[length3] = zzbezVar.readString();
                        zzbezVar.zzabk();
                        length3++;
                    }
                    strArr2[length3] = zzbezVar.readString();
                    this.zzedu = strArr2;
                    continue;
                default:
                    if (!super.zza(zzbezVar, iZzabk)) {
                        return this;
                    }
                    continue;
                    break;
            }
            zzbezVar.zza(zzbfiVar);
        }
    }

    public static zzbfu[] zzagu() {
        if (zzedm == null) {
            synchronized (zzbfg.zzebs) {
                if (zzedm == null) {
                    zzedm = new zzbfu[0];
                }
            }
        }
        return zzedm;
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        zzbfaVar.zzm(1, this.zzedn.intValue());
        String str = this.url;
        if (str != null) {
            zzbfaVar.zzf(2, str);
        }
        zzbfp zzbfpVar = this.zzedo;
        if (zzbfpVar != null) {
            zzbfaVar.zza(3, zzbfpVar);
        }
        zzbfr zzbfrVar = this.zzedp;
        if (zzbfrVar != null) {
            zzbfaVar.zza(4, zzbfrVar);
        }
        Integer num = this.zzedq;
        if (num != null) {
            zzbfaVar.zzm(5, num.intValue());
        }
        int[] iArr = this.zzedr;
        int i = 0;
        if (iArr != null && iArr.length > 0) {
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.zzedr;
                if (i2 >= iArr2.length) {
                    break;
                }
                zzbfaVar.zzm(6, iArr2[i2]);
                i2++;
            }
        }
        String str2 = this.zzeds;
        if (str2 != null) {
            zzbfaVar.zzf(7, str2);
        }
        Integer num2 = this.zzedt;
        if (num2 != null) {
            zzbfaVar.zzm(8, num2.intValue());
        }
        String[] strArr = this.zzedu;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.zzedu;
                if (i >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i];
                if (str3 != null) {
                    zzbfaVar.zzf(9, str3);
                }
                i++;
            }
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int[] iArr;
        int iZzr = super.zzr() + zzbfa.zzq(1, this.zzedn.intValue());
        String str = this.url;
        if (str != null) {
            iZzr += zzbfa.zzg(2, str);
        }
        zzbfp zzbfpVar = this.zzedo;
        if (zzbfpVar != null) {
            iZzr += zzbfa.zzb(3, zzbfpVar);
        }
        zzbfr zzbfrVar = this.zzedp;
        if (zzbfrVar != null) {
            iZzr += zzbfa.zzb(4, zzbfrVar);
        }
        Integer num = this.zzedq;
        if (num != null) {
            iZzr += zzbfa.zzq(5, num.intValue());
        }
        int[] iArr2 = this.zzedr;
        int i = 0;
        if (iArr2 != null && iArr2.length > 0) {
            int i2 = 0;
            int iZzce = 0;
            while (true) {
                iArr = this.zzedr;
                if (i2 >= iArr.length) {
                    break;
                }
                iZzce += zzbfa.zzce(iArr[i2]);
                i2++;
            }
            iZzr = iZzr + iZzce + (iArr.length * 1);
        }
        String str2 = this.zzeds;
        if (str2 != null) {
            iZzr += zzbfa.zzg(7, str2);
        }
        Integer num2 = this.zzedt;
        if (num2 != null) {
            iZzr += zzbfa.zzq(8, num2.intValue());
        }
        String[] strArr = this.zzedu;
        if (strArr == null || strArr.length <= 0) {
            return iZzr;
        }
        int iZzeo = 0;
        int i3 = 0;
        while (true) {
            String[] strArr2 = this.zzedu;
            if (i >= strArr2.length) {
                return iZzr + iZzeo + (i3 * 1);
            }
            String str3 = strArr2[i];
            if (str3 != null) {
                i3++;
                iZzeo += zzbfa.zzeo(str3);
            }
            i++;
        }
    }
}
