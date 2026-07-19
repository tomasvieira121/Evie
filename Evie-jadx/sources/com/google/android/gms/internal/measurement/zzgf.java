package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgf extends zzza<zzgf> {
    private static volatile zzgf[] zzaws;
    public zzgg[] zzawt = zzgg.zzmr();
    public String name = null;
    public Long zzawu = null;
    public Long zzawv = null;
    public Integer count = null;

    public static zzgf[] zzmq() {
        if (zzaws == null) {
            synchronized (zzze.zzcfl) {
                if (zzaws == null) {
                    zzaws = new zzgf[0];
                }
            }
        }
        return zzaws;
    }

    public zzgf() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgf)) {
            return false;
        }
        zzgf zzgfVar = (zzgf) obj;
        if (!zzze.equals(this.zzawt, zzgfVar.zzawt)) {
            return false;
        }
        String str = this.name;
        if (str == null) {
            if (zzgfVar.name != null) {
                return false;
            }
        } else if (!str.equals(zzgfVar.name)) {
            return false;
        }
        Long l = this.zzawu;
        if (l == null) {
            if (zzgfVar.zzawu != null) {
                return false;
            }
        } else if (!l.equals(zzgfVar.zzawu)) {
            return false;
        }
        Long l2 = this.zzawv;
        if (l2 == null) {
            if (zzgfVar.zzawv != null) {
                return false;
            }
        } else if (!l2.equals(zzgfVar.zzawv)) {
            return false;
        }
        Integer num = this.count;
        if (num == null) {
            if (zzgfVar.count != null) {
                return false;
            }
        } else if (!num.equals(zzgfVar.count)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgfVar.zzcfc == null || zzgfVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgfVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (((getClass().getName().hashCode() + 527) * 31) + zzze.hashCode(this.zzawt)) * 31;
        String str = this.name;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.zzawu;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.zzawv;
        int iHashCode5 = (iHashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Integer num = this.count;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        zzgg[] zzggVarArr = this.zzawt;
        if (zzggVarArr != null && zzggVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzgg[] zzggVarArr2 = this.zzawt;
                if (i >= zzggVarArr2.length) {
                    break;
                }
                zzgg zzggVar = zzggVarArr2[i];
                if (zzggVar != null) {
                    zzyyVar.zza(1, zzggVar);
                }
                i++;
            }
        }
        String str = this.name;
        if (str != null) {
            zzyyVar.zzb(2, str);
        }
        Long l = this.zzawu;
        if (l != null) {
            zzyyVar.zzi(3, l.longValue());
        }
        Long l2 = this.zzawv;
        if (l2 != null) {
            zzyyVar.zzi(4, l2.longValue());
        }
        Integer num = this.count;
        if (num != null) {
            zzyyVar.zzd(5, num.intValue());
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        zzgg[] zzggVarArr = this.zzawt;
        if (zzggVarArr != null && zzggVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzgg[] zzggVarArr2 = this.zzawt;
                if (i >= zzggVarArr2.length) {
                    break;
                }
                zzgg zzggVar = zzggVarArr2[i];
                if (zzggVar != null) {
                    iZzf += zzyy.zzb(1, zzggVar);
                }
                i++;
            }
        }
        String str = this.name;
        if (str != null) {
            iZzf += zzyy.zzc(2, str);
        }
        Long l = this.zzawu;
        if (l != null) {
            iZzf += zzyy.zzd(3, l.longValue());
        }
        Long l2 = this.zzawv;
        if (l2 != null) {
            iZzf += zzyy.zzd(4, l2.longValue());
        }
        Integer num = this.count;
        return num != null ? iZzf + zzyy.zzh(5, num.intValue()) : iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 10) {
                int iZzb = zzzj.zzb(zzyxVar, 10);
                zzgg[] zzggVarArr = this.zzawt;
                int length = zzggVarArr == null ? 0 : zzggVarArr.length;
                zzgg[] zzggVarArr2 = new zzgg[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzawt, 0, zzggVarArr2, 0, length);
                }
                while (length < zzggVarArr2.length - 1) {
                    zzggVarArr2[length] = new zzgg();
                    zzyxVar.zza(zzggVarArr2[length]);
                    zzyxVar.zzug();
                    length++;
                }
                zzggVarArr2[length] = new zzgg();
                zzyxVar.zza(zzggVarArr2[length]);
                this.zzawt = zzggVarArr2;
            } else if (iZzug == 18) {
                this.name = zzyxVar.readString();
            } else if (iZzug == 24) {
                this.zzawu = Long.valueOf(zzyxVar.zzuz());
            } else if (iZzug == 32) {
                this.zzawv = Long.valueOf(zzyxVar.zzuz());
            } else if (iZzug != 40) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.count = Integer.valueOf(zzyxVar.zzuy());
            }
        }
    }
}
