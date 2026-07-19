package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzfz extends zzza<zzfz> {
    public Integer zzavw = null;
    public String zzavx = null;
    public Boolean zzavy = null;
    public String[] zzavz = zzzj.zzcfv;

    public zzfz() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfz)) {
            return false;
        }
        zzfz zzfzVar = (zzfz) obj;
        Integer num = this.zzavw;
        if (num == null) {
            if (zzfzVar.zzavw != null) {
                return false;
            }
        } else if (!num.equals(zzfzVar.zzavw)) {
            return false;
        }
        String str = this.zzavx;
        if (str == null) {
            if (zzfzVar.zzavx != null) {
                return false;
            }
        } else if (!str.equals(zzfzVar.zzavx)) {
            return false;
        }
        Boolean bool = this.zzavy;
        if (bool == null) {
            if (zzfzVar.zzavy != null) {
                return false;
            }
        } else if (!bool.equals(zzfzVar.zzavy)) {
            return false;
        }
        if (!zzze.equals(this.zzavz, zzfzVar.zzavz)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzfzVar.zzcfc == null || zzfzVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzfzVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzavw;
        int iHashCode2 = 0;
        int iIntValue = (iHashCode + (num == null ? 0 : num.intValue())) * 31;
        String str = this.zzavx;
        int iHashCode3 = (iIntValue + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.zzavy;
        int iHashCode4 = (((iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31) + zzze.hashCode(this.zzavz)) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode4 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzavw;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        String str = this.zzavx;
        if (str != null) {
            zzyyVar.zzb(2, str);
        }
        Boolean bool = this.zzavy;
        if (bool != null) {
            zzyyVar.zzb(3, bool.booleanValue());
        }
        String[] strArr = this.zzavz;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.zzavz;
                if (i >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i];
                if (str2 != null) {
                    zzyyVar.zzb(4, str2);
                }
                i++;
            }
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Integer num = this.zzavw;
        if (num != null) {
            iZzf += zzyy.zzh(1, num.intValue());
        }
        String str = this.zzavx;
        if (str != null) {
            iZzf += zzyy.zzc(2, str);
        }
        Boolean bool = this.zzavy;
        if (bool != null) {
            bool.booleanValue();
            iZzf += zzyy.zzbb(3) + 1;
        }
        String[] strArr = this.zzavz;
        if (strArr == null || strArr.length <= 0) {
            return iZzf;
        }
        int i = 0;
        int iZzfx = 0;
        int i2 = 0;
        while (true) {
            String[] strArr2 = this.zzavz;
            if (i >= strArr2.length) {
                return iZzf + iZzfx + (i2 * 1);
            }
            String str2 = strArr2[i];
            if (str2 != null) {
                i2++;
                iZzfx += zzyy.zzfx(str2);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzzg
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzfz zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                int position = zzyxVar.getPosition();
                try {
                    int iZzuy = zzyxVar.zzuy();
                    if (iZzuy < 0 || iZzuy > 6) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append(iZzuy);
                        sb.append(" is not a valid enum MatchType");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.zzavw = Integer.valueOf(iZzuy);
                } catch (IllegalArgumentException unused) {
                    zzyxVar.zzby(position);
                    zza(zzyxVar, iZzug);
                }
            } else if (iZzug == 18) {
                this.zzavx = zzyxVar.readString();
            } else if (iZzug == 24) {
                this.zzavy = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug != 34) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                int iZzb = zzzj.zzb(zzyxVar, 34);
                String[] strArr = this.zzavz;
                int length = strArr == null ? 0 : strArr.length;
                String[] strArr2 = new String[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzavz, 0, strArr2, 0, length);
                }
                while (length < strArr2.length - 1) {
                    strArr2[length] = zzyxVar.readString();
                    zzyxVar.zzug();
                    length++;
                }
                strArr2[length] = zzyxVar.readString();
                this.zzavz = strArr2;
            }
        }
    }
}
