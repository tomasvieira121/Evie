package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzge extends zzza<zzge> {
    private static volatile zzge[] zzawp;
    public Integer zzawq = null;
    public Long zzawr = null;

    public static zzge[] zzmp() {
        if (zzawp == null) {
            synchronized (zzze.zzcfl) {
                if (zzawp == null) {
                    zzawp = new zzge[0];
                }
            }
        }
        return zzawp;
    }

    public zzge() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzge)) {
            return false;
        }
        zzge zzgeVar = (zzge) obj;
        Integer num = this.zzawq;
        if (num == null) {
            if (zzgeVar.zzawq != null) {
                return false;
            }
        } else if (!num.equals(zzgeVar.zzawq)) {
            return false;
        }
        Long l = this.zzawr;
        if (l == null) {
            if (zzgeVar.zzawr != null) {
                return false;
            }
        } else if (!l.equals(zzgeVar.zzawr)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgeVar.zzcfc == null || zzgeVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgeVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzawq;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Long l = this.zzawr;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode4 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzawq;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        Long l = this.zzawr;
        if (l != null) {
            zzyyVar.zzi(2, l.longValue());
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
        Long l = this.zzawr;
        return l != null ? iZzf + zzyy.zzd(2, l.longValue()) : iZzf;
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
            } else if (iZzug != 16) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzawr = Long.valueOf(zzyxVar.zzuz());
            }
        }
    }
}
