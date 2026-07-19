package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgd extends zzza<zzgd> {
    private static volatile zzgd[] zzawl;
    public Integer zzauy = null;
    public zzgj zzawm = null;
    public zzgj zzawn = null;
    public Boolean zzawo = null;

    public static zzgd[] zzmo() {
        if (zzawl == null) {
            synchronized (zzze.zzcfl) {
                if (zzawl == null) {
                    zzawl = new zzgd[0];
                }
            }
        }
        return zzawl;
    }

    public zzgd() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgd)) {
            return false;
        }
        zzgd zzgdVar = (zzgd) obj;
        Integer num = this.zzauy;
        if (num == null) {
            if (zzgdVar.zzauy != null) {
                return false;
            }
        } else if (!num.equals(zzgdVar.zzauy)) {
            return false;
        }
        zzgj zzgjVar = this.zzawm;
        if (zzgjVar == null) {
            if (zzgdVar.zzawm != null) {
                return false;
            }
        } else if (!zzgjVar.equals(zzgdVar.zzawm)) {
            return false;
        }
        zzgj zzgjVar2 = this.zzawn;
        if (zzgjVar2 == null) {
            if (zzgdVar.zzawn != null) {
                return false;
            }
        } else if (!zzgjVar2.equals(zzgdVar.zzawn)) {
            return false;
        }
        Boolean bool = this.zzawo;
        if (bool == null) {
            if (zzgdVar.zzawo != null) {
                return false;
            }
        } else if (!bool.equals(zzgdVar.zzawo)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgdVar.zzcfc == null || zzgdVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgdVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzauy;
        int iHashCode2 = 0;
        int iHashCode3 = iHashCode + (num == null ? 0 : num.hashCode());
        zzgj zzgjVar = this.zzawm;
        int iHashCode4 = (iHashCode3 * 31) + (zzgjVar == null ? 0 : zzgjVar.hashCode());
        zzgj zzgjVar2 = this.zzawn;
        int iHashCode5 = ((iHashCode4 * 31) + (zzgjVar2 == null ? 0 : zzgjVar2.hashCode())) * 31;
        Boolean bool = this.zzawo;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzauy;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        zzgj zzgjVar = this.zzawm;
        if (zzgjVar != null) {
            zzyyVar.zza(2, zzgjVar);
        }
        zzgj zzgjVar2 = this.zzawn;
        if (zzgjVar2 != null) {
            zzyyVar.zza(3, zzgjVar2);
        }
        Boolean bool = this.zzawo;
        if (bool != null) {
            zzyyVar.zzb(4, bool.booleanValue());
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Integer num = this.zzauy;
        if (num != null) {
            iZzf += zzyy.zzh(1, num.intValue());
        }
        zzgj zzgjVar = this.zzawm;
        if (zzgjVar != null) {
            iZzf += zzyy.zzb(2, zzgjVar);
        }
        zzgj zzgjVar2 = this.zzawn;
        if (zzgjVar2 != null) {
            iZzf += zzyy.zzb(3, zzgjVar2);
        }
        Boolean bool = this.zzawo;
        if (bool == null) {
            return iZzf;
        }
        bool.booleanValue();
        return iZzf + zzyy.zzbb(4) + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                this.zzauy = Integer.valueOf(zzyxVar.zzuy());
            } else if (iZzug == 18) {
                if (this.zzawm == null) {
                    this.zzawm = new zzgj();
                }
                zzyxVar.zza(this.zzawm);
            } else if (iZzug == 26) {
                if (this.zzawn == null) {
                    this.zzawn = new zzgj();
                }
                zzyxVar.zza(this.zzawn);
            } else if (iZzug != 32) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzawo = Boolean.valueOf(zzyxVar.zzum());
            }
        }
    }
}
