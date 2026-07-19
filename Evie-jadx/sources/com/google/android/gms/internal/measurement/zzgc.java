package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgc extends zzza<zzgc> {
    private static volatile zzgc[] zzawk;
    public String zzoj = null;
    public String value = null;

    public static zzgc[] zzmn() {
        if (zzawk == null) {
            synchronized (zzze.zzcfl) {
                if (zzawk == null) {
                    zzawk = new zzgc[0];
                }
            }
        }
        return zzawk;
    }

    public zzgc() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgc)) {
            return false;
        }
        zzgc zzgcVar = (zzgc) obj;
        String str = this.zzoj;
        if (str == null) {
            if (zzgcVar.zzoj != null) {
                return false;
            }
        } else if (!str.equals(zzgcVar.zzoj)) {
            return false;
        }
        String str2 = this.value;
        if (str2 == null) {
            if (zzgcVar.value != null) {
                return false;
            }
        } else if (!str2.equals(zzgcVar.value)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgcVar.zzcfc == null || zzgcVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgcVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.zzoj;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.value;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode4 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        String str = this.zzoj;
        if (str != null) {
            zzyyVar.zzb(1, str);
        }
        String str2 = this.value;
        if (str2 != null) {
            zzyyVar.zzb(2, str2);
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        String str = this.zzoj;
        if (str != null) {
            iZzf += zzyy.zzc(1, str);
        }
        String str2 = this.value;
        return str2 != null ? iZzf + zzyy.zzc(2, str2) : iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 10) {
                this.zzoj = zzyxVar.readString();
            } else if (iZzug != 18) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.value = zzyxVar.readString();
            }
        }
    }
}
