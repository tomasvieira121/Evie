package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfm extends zzbfc<zzbfm> {
    public Integer zzamf = null;
    private Integer zzecg = null;
    public String url = null;
    public String zzech = null;
    private String zzeci = null;
    public zzbfn zzecj = null;
    public zzbfu[] zzeck = zzbfu.zzagu();
    public String zzecl = null;
    public zzbft zzecm = null;
    private Boolean zzecn = null;
    private String[] zzeco = zzbfl.zzecd;
    private String zzecp = null;
    private Boolean zzecq = null;
    private Boolean zzecr = null;
    private byte[] zzecs = null;
    public zzbfv zzect = null;
    public String[] zzecu = zzbfl.zzecd;
    public String[] zzecv = zzbfl.zzecd;

    public zzbfm() {
        this.zzebk = null;
        this.zzebt = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzaa, reason: merged with bridge method [inline-methods] */
    public final zzbfm zza(zzbez zzbezVar) throws IOException {
        zzbfi zzbfiVar;
        while (true) {
            int iZzabk = zzbezVar.zzabk();
            switch (iZzabk) {
                case 0:
                    return this;
                case 10:
                    this.url = zzbezVar.readString();
                    continue;
                case 18:
                    this.zzech = zzbezVar.readString();
                    continue;
                case 26:
                    this.zzeci = zzbezVar.readString();
                    continue;
                case 34:
                    int iZzb = zzbfl.zzb(zzbezVar, 34);
                    zzbfu[] zzbfuVarArr = this.zzeck;
                    int length = zzbfuVarArr == null ? 0 : zzbfuVarArr.length;
                    zzbfu[] zzbfuVarArr2 = new zzbfu[iZzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzeck, 0, zzbfuVarArr2, 0, length);
                    }
                    while (length < zzbfuVarArr2.length - 1) {
                        zzbfuVarArr2[length] = new zzbfu();
                        zzbezVar.zza(zzbfuVarArr2[length]);
                        zzbezVar.zzabk();
                        length++;
                    }
                    zzbfuVarArr2[length] = new zzbfu();
                    zzbezVar.zza(zzbfuVarArr2[length]);
                    this.zzeck = zzbfuVarArr2;
                    continue;
                case 40:
                    this.zzecn = Boolean.valueOf(zzbezVar.zzabq());
                    continue;
                case 50:
                    int iZzb2 = zzbfl.zzb(zzbezVar, 50);
                    String[] strArr = this.zzeco;
                    int length2 = strArr == null ? 0 : strArr.length;
                    String[] strArr2 = new String[iZzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzeco, 0, strArr2, 0, length2);
                    }
                    while (length2 < strArr2.length - 1) {
                        strArr2[length2] = zzbezVar.readString();
                        zzbezVar.zzabk();
                        length2++;
                    }
                    strArr2[length2] = zzbezVar.readString();
                    this.zzeco = strArr2;
                    continue;
                case 58:
                    this.zzecp = zzbezVar.readString();
                    continue;
                case 64:
                    this.zzecq = Boolean.valueOf(zzbezVar.zzabq());
                    continue;
                case 72:
                    this.zzecr = Boolean.valueOf(zzbezVar.zzabq());
                    continue;
                case 80:
                    zzbezVar.getPosition();
                    int iZzabn = zzbezVar.zzabn();
                    if (iZzabn < 0 || iZzabn > 9) {
                        StringBuilder sb = new StringBuilder(42);
                        sb.append(iZzabn);
                        sb.append(" is not a valid enum ReportType");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.zzamf = Integer.valueOf(iZzabn);
                    continue;
                case 88:
                    try {
                        int iZzabn2 = zzbezVar.zzabn();
                        if (iZzabn2 < 0 || iZzabn2 > 4) {
                            StringBuilder sb2 = new StringBuilder(39);
                            sb2.append(iZzabn2);
                            sb2.append(" is not a valid enum Verdict");
                            throw new IllegalArgumentException(sb2.toString());
                        }
                        this.zzecg = Integer.valueOf(iZzabn2);
                        continue;
                    } catch (IllegalArgumentException unused) {
                        zzbezVar.zzdc(zzbezVar.getPosition());
                        zza(zzbezVar, iZzabk);
                    }
                    break;
                case 98:
                    if (this.zzecj == null) {
                        this.zzecj = new zzbfn();
                    }
                    zzbfiVar = this.zzecj;
                    break;
                case 106:
                    this.zzecl = zzbezVar.readString();
                    continue;
                case 114:
                    if (this.zzecm == null) {
                        this.zzecm = new zzbft();
                    }
                    zzbfiVar = this.zzecm;
                    break;
                case 122:
                    this.zzecs = zzbezVar.readBytes();
                    continue;
                case 138:
                    if (this.zzect == null) {
                        this.zzect = new zzbfv();
                    }
                    zzbfiVar = this.zzect;
                    break;
                case 162:
                    int iZzb3 = zzbfl.zzb(zzbezVar, 162);
                    String[] strArr3 = this.zzecu;
                    int length3 = strArr3 == null ? 0 : strArr3.length;
                    String[] strArr4 = new String[iZzb3 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzecu, 0, strArr4, 0, length3);
                    }
                    while (length3 < strArr4.length - 1) {
                        strArr4[length3] = zzbezVar.readString();
                        zzbezVar.zzabk();
                        length3++;
                    }
                    strArr4[length3] = zzbezVar.readString();
                    this.zzecu = strArr4;
                    continue;
                case 170:
                    int iZzb4 = zzbfl.zzb(zzbezVar, 170);
                    String[] strArr5 = this.zzecv;
                    int length4 = strArr5 == null ? 0 : strArr5.length;
                    String[] strArr6 = new String[iZzb4 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzecv, 0, strArr6, 0, length4);
                    }
                    while (length4 < strArr6.length - 1) {
                        strArr6[length4] = zzbezVar.readString();
                        zzbezVar.zzabk();
                        length4++;
                    }
                    strArr6[length4] = zzbezVar.readString();
                    this.zzecv = strArr6;
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

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    public final void zza(zzbfa zzbfaVar) throws IOException {
        String str = this.url;
        if (str != null) {
            zzbfaVar.zzf(1, str);
        }
        String str2 = this.zzech;
        if (str2 != null) {
            zzbfaVar.zzf(2, str2);
        }
        String str3 = this.zzeci;
        if (str3 != null) {
            zzbfaVar.zzf(3, str3);
        }
        zzbfu[] zzbfuVarArr = this.zzeck;
        int i = 0;
        if (zzbfuVarArr != null && zzbfuVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzbfu[] zzbfuVarArr2 = this.zzeck;
                if (i2 >= zzbfuVarArr2.length) {
                    break;
                }
                zzbfu zzbfuVar = zzbfuVarArr2[i2];
                if (zzbfuVar != null) {
                    zzbfaVar.zza(4, zzbfuVar);
                }
                i2++;
            }
        }
        Boolean bool = this.zzecn;
        if (bool != null) {
            zzbfaVar.zzf(5, bool.booleanValue());
        }
        String[] strArr = this.zzeco;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.zzeco;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str4 = strArr2[i3];
                if (str4 != null) {
                    zzbfaVar.zzf(6, str4);
                }
                i3++;
            }
        }
        String str5 = this.zzecp;
        if (str5 != null) {
            zzbfaVar.zzf(7, str5);
        }
        Boolean bool2 = this.zzecq;
        if (bool2 != null) {
            zzbfaVar.zzf(8, bool2.booleanValue());
        }
        Boolean bool3 = this.zzecr;
        if (bool3 != null) {
            zzbfaVar.zzf(9, bool3.booleanValue());
        }
        Integer num = this.zzamf;
        if (num != null) {
            zzbfaVar.zzm(10, num.intValue());
        }
        Integer num2 = this.zzecg;
        if (num2 != null) {
            zzbfaVar.zzm(11, num2.intValue());
        }
        zzbfn zzbfnVar = this.zzecj;
        if (zzbfnVar != null) {
            zzbfaVar.zza(12, zzbfnVar);
        }
        String str6 = this.zzecl;
        if (str6 != null) {
            zzbfaVar.zzf(13, str6);
        }
        zzbft zzbftVar = this.zzecm;
        if (zzbftVar != null) {
            zzbfaVar.zza(14, zzbftVar);
        }
        byte[] bArr = this.zzecs;
        if (bArr != null) {
            zzbfaVar.zza(15, bArr);
        }
        zzbfv zzbfvVar = this.zzect;
        if (zzbfvVar != null) {
            zzbfaVar.zza(17, zzbfvVar);
        }
        String[] strArr3 = this.zzecu;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr4 = this.zzecu;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str7 = strArr4[i4];
                if (str7 != null) {
                    zzbfaVar.zzf(20, str7);
                }
                i4++;
            }
        }
        String[] strArr5 = this.zzecv;
        if (strArr5 != null && strArr5.length > 0) {
            while (true) {
                String[] strArr6 = this.zzecv;
                if (i >= strArr6.length) {
                    break;
                }
                String str8 = strArr6[i];
                if (str8 != null) {
                    zzbfaVar.zzf(21, str8);
                }
                i++;
            }
        }
        super.zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfc, com.google.android.gms.internal.ads.zzbfi
    protected final int zzr() {
        int iZzr = super.zzr();
        String str = this.url;
        if (str != null) {
            iZzr += zzbfa.zzg(1, str);
        }
        String str2 = this.zzech;
        if (str2 != null) {
            iZzr += zzbfa.zzg(2, str2);
        }
        String str3 = this.zzeci;
        if (str3 != null) {
            iZzr += zzbfa.zzg(3, str3);
        }
        zzbfu[] zzbfuVarArr = this.zzeck;
        int i = 0;
        if (zzbfuVarArr != null && zzbfuVarArr.length > 0) {
            int iZzb = iZzr;
            int i2 = 0;
            while (true) {
                zzbfu[] zzbfuVarArr2 = this.zzeck;
                if (i2 >= zzbfuVarArr2.length) {
                    break;
                }
                zzbfu zzbfuVar = zzbfuVarArr2[i2];
                if (zzbfuVar != null) {
                    iZzb += zzbfa.zzb(4, zzbfuVar);
                }
                i2++;
            }
            iZzr = iZzb;
        }
        Boolean bool = this.zzecn;
        if (bool != null) {
            bool.booleanValue();
            iZzr += zzbfa.zzcd(5) + 1;
        }
        String[] strArr = this.zzeco;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            int iZzeo = 0;
            int i4 = 0;
            while (true) {
                String[] strArr2 = this.zzeco;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str4 = strArr2[i3];
                if (str4 != null) {
                    i4++;
                    iZzeo += zzbfa.zzeo(str4);
                }
                i3++;
            }
            iZzr = iZzr + iZzeo + (i4 * 1);
        }
        String str5 = this.zzecp;
        if (str5 != null) {
            iZzr += zzbfa.zzg(7, str5);
        }
        Boolean bool2 = this.zzecq;
        if (bool2 != null) {
            bool2.booleanValue();
            iZzr += zzbfa.zzcd(8) + 1;
        }
        Boolean bool3 = this.zzecr;
        if (bool3 != null) {
            bool3.booleanValue();
            iZzr += zzbfa.zzcd(9) + 1;
        }
        Integer num = this.zzamf;
        if (num != null) {
            iZzr += zzbfa.zzq(10, num.intValue());
        }
        Integer num2 = this.zzecg;
        if (num2 != null) {
            iZzr += zzbfa.zzq(11, num2.intValue());
        }
        zzbfn zzbfnVar = this.zzecj;
        if (zzbfnVar != null) {
            iZzr += zzbfa.zzb(12, zzbfnVar);
        }
        String str6 = this.zzecl;
        if (str6 != null) {
            iZzr += zzbfa.zzg(13, str6);
        }
        zzbft zzbftVar = this.zzecm;
        if (zzbftVar != null) {
            iZzr += zzbfa.zzb(14, zzbftVar);
        }
        byte[] bArr = this.zzecs;
        if (bArr != null) {
            iZzr += zzbfa.zzb(15, bArr);
        }
        zzbfv zzbfvVar = this.zzect;
        if (zzbfvVar != null) {
            iZzr += zzbfa.zzb(17, zzbfvVar);
        }
        String[] strArr3 = this.zzecu;
        if (strArr3 != null && strArr3.length > 0) {
            int i5 = 0;
            int iZzeo2 = 0;
            int i6 = 0;
            while (true) {
                String[] strArr4 = this.zzecu;
                if (i5 >= strArr4.length) {
                    break;
                }
                String str7 = strArr4[i5];
                if (str7 != null) {
                    i6++;
                    iZzeo2 += zzbfa.zzeo(str7);
                }
                i5++;
            }
            iZzr = iZzr + iZzeo2 + (i6 * 2);
        }
        String[] strArr5 = this.zzecv;
        if (strArr5 == null || strArr5.length <= 0) {
            return iZzr;
        }
        int iZzeo3 = 0;
        int i7 = 0;
        while (true) {
            String[] strArr6 = this.zzecv;
            if (i >= strArr6.length) {
                return iZzr + iZzeo3 + (i7 * 2);
            }
            String str8 = strArr6[i];
            if (str8 != null) {
                i7++;
                iZzeo3 += zzbfa.zzeo(str8);
            }
            i++;
        }
    }
}
