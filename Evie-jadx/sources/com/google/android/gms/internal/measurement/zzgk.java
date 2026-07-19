package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgk extends zzza<zzgk> {
    private static volatile zzgk[] zzayi;
    public Integer zzawq = null;
    public long[] zzayj = zzzj.zzcfr;

    public static zzgk[] zzmt() {
        if (zzayi == null) {
            synchronized (zzze.zzcfl) {
                if (zzayi == null) {
                    zzayi = new zzgk[0];
                }
            }
        }
        return zzayi;
    }

    public zzgk() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgk)) {
            return false;
        }
        zzgk zzgkVar = (zzgk) obj;
        Integer num = this.zzawq;
        if (num == null) {
            if (zzgkVar.zzawq != null) {
                return false;
            }
        } else if (!num.equals(zzgkVar.zzawq)) {
            return false;
        }
        if (!zzze.equals(this.zzayj, zzgkVar.zzayj)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgkVar.zzcfc == null || zzgkVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgkVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzawq;
        int iHashCode2 = 0;
        int iHashCode3 = (((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + zzze.hashCode(this.zzayj)) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode3 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzawq;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        long[] jArr = this.zzayj;
        if (jArr != null && jArr.length > 0) {
            int i = 0;
            while (true) {
                long[] jArr2 = this.zzayj;
                if (i >= jArr2.length) {
                    break;
                }
                zzyyVar.zzi(2, jArr2[i]);
                i++;
            }
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Integer num = this.zzawq;
        if (num != null) {
            iZzf += zzyy.zzh(1, num.intValue());
        }
        long[] jArr = this.zzayj;
        if (jArr == null || jArr.length <= 0) {
            return iZzf;
        }
        int i = 0;
        int iZzbi = 0;
        while (true) {
            long[] jArr2 = this.zzayj;
            if (i < jArr2.length) {
                iZzbi += zzyy.zzbi(jArr2[i]);
                i++;
            } else {
                return iZzf + iZzbi + (jArr2.length * 1);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                this.zzawq = Integer.valueOf(zzyxVar.zzuy());
            } else if (iZzug == 16) {
                int iZzb = zzzj.zzb(zzyxVar, 16);
                long[] jArr = this.zzayj;
                int length = jArr == null ? 0 : jArr.length;
                long[] jArr2 = new long[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzayj, 0, jArr2, 0, length);
                }
                while (length < jArr2.length - 1) {
                    jArr2[length] = zzyxVar.zzuz();
                    zzyxVar.zzug();
                    length++;
                }
                jArr2[length] = zzyxVar.zzuz();
                this.zzayj = jArr2;
            } else if (iZzug != 18) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                int iZzaq = zzyxVar.zzaq(zzyxVar.zzuy());
                int position = zzyxVar.getPosition();
                int i = 0;
                while (zzyxVar.zzyr() > 0) {
                    zzyxVar.zzuz();
                    i++;
                }
                zzyxVar.zzby(position);
                long[] jArr3 = this.zzayj;
                int length2 = jArr3 == null ? 0 : jArr3.length;
                long[] jArr4 = new long[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzayj, 0, jArr4, 0, length2);
                }
                while (length2 < jArr4.length) {
                    jArr4[length2] = zzyxVar.zzuz();
                    length2++;
                }
                this.zzayj = jArr4;
                zzyxVar.zzar(iZzaq);
            }
        }
    }
}
