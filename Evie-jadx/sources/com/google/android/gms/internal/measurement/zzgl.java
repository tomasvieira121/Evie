package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgl extends zzza<zzgl> {
    private static volatile zzgl[] zzayk;
    public Long zzayl = null;
    public String name = null;
    public String zzamp = null;
    public Long zzawx = null;
    private Float zzaug = null;
    public Double zzauh = null;

    public static zzgl[] zzmu() {
        if (zzayk == null) {
            synchronized (zzze.zzcfl) {
                if (zzayk == null) {
                    zzayk = new zzgl[0];
                }
            }
        }
        return zzayk;
    }

    public zzgl() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgl)) {
            return false;
        }
        zzgl zzglVar = (zzgl) obj;
        Long l = this.zzayl;
        if (l == null) {
            if (zzglVar.zzayl != null) {
                return false;
            }
        } else if (!l.equals(zzglVar.zzayl)) {
            return false;
        }
        String str = this.name;
        if (str == null) {
            if (zzglVar.name != null) {
                return false;
            }
        } else if (!str.equals(zzglVar.name)) {
            return false;
        }
        String str2 = this.zzamp;
        if (str2 == null) {
            if (zzglVar.zzamp != null) {
                return false;
            }
        } else if (!str2.equals(zzglVar.zzamp)) {
            return false;
        }
        Long l2 = this.zzawx;
        if (l2 == null) {
            if (zzglVar.zzawx != null) {
                return false;
            }
        } else if (!l2.equals(zzglVar.zzawx)) {
            return false;
        }
        Float f = this.zzaug;
        if (f == null) {
            if (zzglVar.zzaug != null) {
                return false;
            }
        } else if (!f.equals(zzglVar.zzaug)) {
            return false;
        }
        Double d = this.zzauh;
        if (d == null) {
            if (zzglVar.zzauh != null) {
                return false;
            }
        } else if (!d.equals(zzglVar.zzauh)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzglVar.zzcfc == null || zzglVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzglVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Long l = this.zzayl;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.name;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzamp;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l2 = this.zzawx;
        int iHashCode6 = (iHashCode5 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Float f = this.zzaug;
        int iHashCode7 = (iHashCode6 + (f == null ? 0 : f.hashCode())) * 31;
        Double d = this.zzauh;
        int iHashCode8 = (iHashCode7 + (d == null ? 0 : d.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode8 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Long l = this.zzayl;
        if (l != null) {
            zzyyVar.zzi(1, l.longValue());
        }
        String str = this.name;
        if (str != null) {
            zzyyVar.zzb(2, str);
        }
        String str2 = this.zzamp;
        if (str2 != null) {
            zzyyVar.zzb(3, str2);
        }
        Long l2 = this.zzawx;
        if (l2 != null) {
            zzyyVar.zzi(4, l2.longValue());
        }
        Float f = this.zzaug;
        if (f != null) {
            zzyyVar.zza(5, f.floatValue());
        }
        Double d = this.zzauh;
        if (d != null) {
            zzyyVar.zza(6, d.doubleValue());
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Long l = this.zzayl;
        if (l != null) {
            iZzf += zzyy.zzd(1, l.longValue());
        }
        String str = this.name;
        if (str != null) {
            iZzf += zzyy.zzc(2, str);
        }
        String str2 = this.zzamp;
        if (str2 != null) {
            iZzf += zzyy.zzc(3, str2);
        }
        Long l2 = this.zzawx;
        if (l2 != null) {
            iZzf += zzyy.zzd(4, l2.longValue());
        }
        Float f = this.zzaug;
        if (f != null) {
            f.floatValue();
            iZzf += zzyy.zzbb(5) + 4;
        }
        Double d = this.zzauh;
        if (d == null) {
            return iZzf;
        }
        d.doubleValue();
        return iZzf + zzyy.zzbb(6) + 8;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                this.zzayl = Long.valueOf(zzyxVar.zzuz());
            } else if (iZzug == 18) {
                this.name = zzyxVar.readString();
            } else if (iZzug == 26) {
                this.zzamp = zzyxVar.readString();
            } else if (iZzug == 32) {
                this.zzawx = Long.valueOf(zzyxVar.zzuz());
            } else if (iZzug == 45) {
                this.zzaug = Float.valueOf(Float.intBitsToFloat(zzyxVar.zzva()));
            } else if (iZzug != 49) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzauh = Double.valueOf(Double.longBitsToDouble(zzyxVar.zzvb()));
            }
        }
    }
}
