package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgj extends zzza<zzgj> {
    public long[] zzaye = zzzj.zzcfr;
    public long[] zzayf = zzzj.zzcfr;
    public zzge[] zzayg = zzge.zzmp();
    public zzgk[] zzayh = zzgk.zzmt();

    public zzgj() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgj)) {
            return false;
        }
        zzgj zzgjVar = (zzgj) obj;
        if (!zzze.equals(this.zzaye, zzgjVar.zzaye) || !zzze.equals(this.zzayf, zzgjVar.zzayf) || !zzze.equals(this.zzayg, zzgjVar.zzayg) || !zzze.equals(this.zzayh, zzgjVar.zzayh)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgjVar.zzcfc == null || zzgjVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgjVar.zzcfc);
    }

    public final int hashCode() {
        return ((((((((((getClass().getName().hashCode() + 527) * 31) + zzze.hashCode(this.zzaye)) * 31) + zzze.hashCode(this.zzayf)) * 31) + zzze.hashCode(this.zzayg)) * 31) + zzze.hashCode(this.zzayh)) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        long[] jArr = this.zzaye;
        int i = 0;
        if (jArr != null && jArr.length > 0) {
            int i2 = 0;
            while (true) {
                long[] jArr2 = this.zzaye;
                if (i2 >= jArr2.length) {
                    break;
                }
                zzyyVar.zza(1, jArr2[i2]);
                i2++;
            }
        }
        long[] jArr3 = this.zzayf;
        if (jArr3 != null && jArr3.length > 0) {
            int i3 = 0;
            while (true) {
                long[] jArr4 = this.zzayf;
                if (i3 >= jArr4.length) {
                    break;
                }
                zzyyVar.zza(2, jArr4[i3]);
                i3++;
            }
        }
        zzge[] zzgeVarArr = this.zzayg;
        if (zzgeVarArr != null && zzgeVarArr.length > 0) {
            int i4 = 0;
            while (true) {
                zzge[] zzgeVarArr2 = this.zzayg;
                if (i4 >= zzgeVarArr2.length) {
                    break;
                }
                zzge zzgeVar = zzgeVarArr2[i4];
                if (zzgeVar != null) {
                    zzyyVar.zza(3, zzgeVar);
                }
                i4++;
            }
        }
        zzgk[] zzgkVarArr = this.zzayh;
        if (zzgkVarArr != null && zzgkVarArr.length > 0) {
            while (true) {
                zzgk[] zzgkVarArr2 = this.zzayh;
                if (i >= zzgkVarArr2.length) {
                    break;
                }
                zzgk zzgkVar = zzgkVarArr2[i];
                if (zzgkVar != null) {
                    zzyyVar.zza(4, zzgkVar);
                }
                i++;
            }
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        long[] jArr;
        long[] jArr2;
        int iZzf = super.zzf();
        long[] jArr3 = this.zzaye;
        int i = 0;
        if (jArr3 != null && jArr3.length > 0) {
            int i2 = 0;
            int iZzbi = 0;
            while (true) {
                jArr2 = this.zzaye;
                if (i2 >= jArr2.length) {
                    break;
                }
                iZzbi += zzyy.zzbi(jArr2[i2]);
                i2++;
            }
            iZzf = iZzf + iZzbi + (jArr2.length * 1);
        }
        long[] jArr4 = this.zzayf;
        if (jArr4 != null && jArr4.length > 0) {
            int i3 = 0;
            int iZzbi2 = 0;
            while (true) {
                jArr = this.zzayf;
                if (i3 >= jArr.length) {
                    break;
                }
                iZzbi2 += zzyy.zzbi(jArr[i3]);
                i3++;
            }
            iZzf = iZzf + iZzbi2 + (jArr.length * 1);
        }
        zzge[] zzgeVarArr = this.zzayg;
        if (zzgeVarArr != null && zzgeVarArr.length > 0) {
            int iZzb = iZzf;
            int i4 = 0;
            while (true) {
                zzge[] zzgeVarArr2 = this.zzayg;
                if (i4 >= zzgeVarArr2.length) {
                    break;
                }
                zzge zzgeVar = zzgeVarArr2[i4];
                if (zzgeVar != null) {
                    iZzb += zzyy.zzb(3, zzgeVar);
                }
                i4++;
            }
            iZzf = iZzb;
        }
        zzgk[] zzgkVarArr = this.zzayh;
        if (zzgkVarArr != null && zzgkVarArr.length > 0) {
            while (true) {
                zzgk[] zzgkVarArr2 = this.zzayh;
                if (i >= zzgkVarArr2.length) {
                    break;
                }
                zzgk zzgkVar = zzgkVarArr2[i];
                if (zzgkVar != null) {
                    iZzf += zzyy.zzb(4, zzgkVar);
                }
                i++;
            }
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                int iZzb = zzzj.zzb(zzyxVar, 8);
                long[] jArr = this.zzaye;
                int length = jArr == null ? 0 : jArr.length;
                long[] jArr2 = new long[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzaye, 0, jArr2, 0, length);
                }
                while (length < jArr2.length - 1) {
                    jArr2[length] = zzyxVar.zzuz();
                    zzyxVar.zzug();
                    length++;
                }
                jArr2[length] = zzyxVar.zzuz();
                this.zzaye = jArr2;
            } else if (iZzug == 10) {
                int iZzaq = zzyxVar.zzaq(zzyxVar.zzuy());
                int position = zzyxVar.getPosition();
                int i = 0;
                while (zzyxVar.zzyr() > 0) {
                    zzyxVar.zzuz();
                    i++;
                }
                zzyxVar.zzby(position);
                long[] jArr3 = this.zzaye;
                int length2 = jArr3 == null ? 0 : jArr3.length;
                long[] jArr4 = new long[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzaye, 0, jArr4, 0, length2);
                }
                while (length2 < jArr4.length) {
                    jArr4[length2] = zzyxVar.zzuz();
                    length2++;
                }
                this.zzaye = jArr4;
                zzyxVar.zzar(iZzaq);
            } else if (iZzug == 16) {
                int iZzb2 = zzzj.zzb(zzyxVar, 16);
                long[] jArr5 = this.zzayf;
                int length3 = jArr5 == null ? 0 : jArr5.length;
                long[] jArr6 = new long[iZzb2 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.zzayf, 0, jArr6, 0, length3);
                }
                while (length3 < jArr6.length - 1) {
                    jArr6[length3] = zzyxVar.zzuz();
                    zzyxVar.zzug();
                    length3++;
                }
                jArr6[length3] = zzyxVar.zzuz();
                this.zzayf = jArr6;
            } else if (iZzug == 18) {
                int iZzaq2 = zzyxVar.zzaq(zzyxVar.zzuy());
                int position2 = zzyxVar.getPosition();
                int i2 = 0;
                while (zzyxVar.zzyr() > 0) {
                    zzyxVar.zzuz();
                    i2++;
                }
                zzyxVar.zzby(position2);
                long[] jArr7 = this.zzayf;
                int length4 = jArr7 == null ? 0 : jArr7.length;
                long[] jArr8 = new long[i2 + length4];
                if (length4 != 0) {
                    System.arraycopy(this.zzayf, 0, jArr8, 0, length4);
                }
                while (length4 < jArr8.length) {
                    jArr8[length4] = zzyxVar.zzuz();
                    length4++;
                }
                this.zzayf = jArr8;
                zzyxVar.zzar(iZzaq2);
            } else if (iZzug == 26) {
                int iZzb3 = zzzj.zzb(zzyxVar, 26);
                zzge[] zzgeVarArr = this.zzayg;
                int length5 = zzgeVarArr == null ? 0 : zzgeVarArr.length;
                zzge[] zzgeVarArr2 = new zzge[iZzb3 + length5];
                if (length5 != 0) {
                    System.arraycopy(this.zzayg, 0, zzgeVarArr2, 0, length5);
                }
                while (length5 < zzgeVarArr2.length - 1) {
                    zzgeVarArr2[length5] = new zzge();
                    zzyxVar.zza(zzgeVarArr2[length5]);
                    zzyxVar.zzug();
                    length5++;
                }
                zzgeVarArr2[length5] = new zzge();
                zzyxVar.zza(zzgeVarArr2[length5]);
                this.zzayg = zzgeVarArr2;
            } else if (iZzug != 34) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                int iZzb4 = zzzj.zzb(zzyxVar, 34);
                zzgk[] zzgkVarArr = this.zzayh;
                int length6 = zzgkVarArr == null ? 0 : zzgkVarArr.length;
                zzgk[] zzgkVarArr2 = new zzgk[iZzb4 + length6];
                if (length6 != 0) {
                    System.arraycopy(this.zzayh, 0, zzgkVarArr2, 0, length6);
                }
                while (length6 < zzgkVarArr2.length - 1) {
                    zzgkVarArr2[length6] = new zzgk();
                    zzyxVar.zza(zzgkVarArr2[length6]);
                    zzyxVar.zzug();
                    length6++;
                }
                zzgkVarArr2[length6] = new zzgk();
                zzyxVar.zza(zzgkVarArr2[length6]);
                this.zzayh = zzgkVarArr2;
            }
        }
    }
}
