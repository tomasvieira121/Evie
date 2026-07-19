package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgg extends zzza<zzgg> {
    private static volatile zzgg[] zzaww;
    public String name = null;
    public String zzamp = null;
    public Long zzawx = null;
    private Float zzaug = null;
    public Double zzauh = null;

    public static zzgg[] zzmr() {
        if (zzaww == null) {
            synchronized (zzze.zzcfl) {
                if (zzaww == null) {
                    zzaww = new zzgg[0];
                }
            }
        }
        return zzaww;
    }

    public zzgg() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgg)) {
            return false;
        }
        zzgg zzggVar = (zzgg) obj;
        String str = this.name;
        if (str == null) {
            if (zzggVar.name != null) {
                return false;
            }
        } else if (!str.equals(zzggVar.name)) {
            return false;
        }
        String str2 = this.zzamp;
        if (str2 == null) {
            if (zzggVar.zzamp != null) {
                return false;
            }
        } else if (!str2.equals(zzggVar.zzamp)) {
            return false;
        }
        Long l = this.zzawx;
        if (l == null) {
            if (zzggVar.zzawx != null) {
                return false;
            }
        } else if (!l.equals(zzggVar.zzawx)) {
            return false;
        }
        Float f = this.zzaug;
        if (f == null) {
            if (zzggVar.zzaug != null) {
                return false;
            }
        } else if (!f.equals(zzggVar.zzaug)) {
            return false;
        }
        Double d = this.zzauh;
        if (d == null) {
            if (zzggVar.zzauh != null) {
                return false;
            }
        } else if (!d.equals(zzggVar.zzauh)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzggVar.zzcfc == null || zzggVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzggVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.name;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzamp;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.zzawx;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        Float f = this.zzaug;
        int iHashCode6 = (iHashCode5 + (f == null ? 0 : f.hashCode())) * 31;
        Double d = this.zzauh;
        int iHashCode7 = (iHashCode6 + (d == null ? 0 : d.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode7 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        String str = this.name;
        if (str != null) {
            zzyyVar.zzb(1, str);
        }
        String str2 = this.zzamp;
        if (str2 != null) {
            zzyyVar.zzb(2, str2);
        }
        Long l = this.zzawx;
        if (l != null) {
            zzyyVar.zzi(3, l.longValue());
        }
        Float f = this.zzaug;
        if (f != null) {
            zzyyVar.zza(4, f.floatValue());
        }
        Double d = this.zzauh;
        if (d != null) {
            zzyyVar.zza(5, d.doubleValue());
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        String str = this.name;
        if (str != null) {
            iZzf += zzyy.zzc(1, str);
        }
        String str2 = this.zzamp;
        if (str2 != null) {
            iZzf += zzyy.zzc(2, str2);
        }
        Long l = this.zzawx;
        if (l != null) {
            iZzf += zzyy.zzd(3, l.longValue());
        }
        Float f = this.zzaug;
        if (f != null) {
            f.floatValue();
            iZzf += zzyy.zzbb(4) + 4;
        }
        Double d = this.zzauh;
        if (d == null) {
            return iZzf;
        }
        d.doubleValue();
        return iZzf + zzyy.zzbb(5) + 8;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 10) {
                this.name = zzyxVar.readString();
            } else if (iZzug == 18) {
                this.zzamp = zzyxVar.readString();
            } else if (iZzug == 24) {
                this.zzawx = Long.valueOf(zzyxVar.zzuz());
            } else if (iZzug == 37) {
                this.zzaug = Float.valueOf(Float.intBitsToFloat(zzyxVar.zzva()));
            } else if (iZzug != 41) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzauh = Double.valueOf(Double.longBitsToDouble(zzyxVar.zzvb()));
            }
        }
    }
}
