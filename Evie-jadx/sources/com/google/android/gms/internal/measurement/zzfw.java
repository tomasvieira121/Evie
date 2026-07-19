package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzfw extends zzza<zzfw> {
    private static volatile zzfw[] zzavj;
    public zzfz zzavk = null;
    public zzfx zzavl = null;
    public Boolean zzavm = null;
    public String zzavn = null;

    public static zzfw[] zzmk() {
        if (zzavj == null) {
            synchronized (zzze.zzcfl) {
                if (zzavj == null) {
                    zzavj = new zzfw[0];
                }
            }
        }
        return zzavj;
    }

    public zzfw() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfw)) {
            return false;
        }
        zzfw zzfwVar = (zzfw) obj;
        zzfz zzfzVar = this.zzavk;
        if (zzfzVar == null) {
            if (zzfwVar.zzavk != null) {
                return false;
            }
        } else if (!zzfzVar.equals(zzfwVar.zzavk)) {
            return false;
        }
        zzfx zzfxVar = this.zzavl;
        if (zzfxVar == null) {
            if (zzfwVar.zzavl != null) {
                return false;
            }
        } else if (!zzfxVar.equals(zzfwVar.zzavl)) {
            return false;
        }
        Boolean bool = this.zzavm;
        if (bool == null) {
            if (zzfwVar.zzavm != null) {
                return false;
            }
        } else if (!bool.equals(zzfwVar.zzavm)) {
            return false;
        }
        String str = this.zzavn;
        if (str == null) {
            if (zzfwVar.zzavn != null) {
                return false;
            }
        } else if (!str.equals(zzfwVar.zzavn)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzfwVar.zzcfc == null || zzfwVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzfwVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = getClass().getName().hashCode() + 527;
        zzfz zzfzVar = this.zzavk;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode * 31) + (zzfzVar == null ? 0 : zzfzVar.hashCode());
        zzfx zzfxVar = this.zzavl;
        int iHashCode4 = ((iHashCode3 * 31) + (zzfxVar == null ? 0 : zzfxVar.hashCode())) * 31;
        Boolean bool = this.zzavm;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.zzavn;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        zzfz zzfzVar = this.zzavk;
        if (zzfzVar != null) {
            zzyyVar.zza(1, zzfzVar);
        }
        zzfx zzfxVar = this.zzavl;
        if (zzfxVar != null) {
            zzyyVar.zza(2, zzfxVar);
        }
        Boolean bool = this.zzavm;
        if (bool != null) {
            zzyyVar.zzb(3, bool.booleanValue());
        }
        String str = this.zzavn;
        if (str != null) {
            zzyyVar.zzb(4, str);
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        zzfz zzfzVar = this.zzavk;
        if (zzfzVar != null) {
            iZzf += zzyy.zzb(1, zzfzVar);
        }
        zzfx zzfxVar = this.zzavl;
        if (zzfxVar != null) {
            iZzf += zzyy.zzb(2, zzfxVar);
        }
        Boolean bool = this.zzavm;
        if (bool != null) {
            bool.booleanValue();
            iZzf += zzyy.zzbb(3) + 1;
        }
        String str = this.zzavn;
        return str != null ? iZzf + zzyy.zzc(4, str) : iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 10) {
                if (this.zzavk == null) {
                    this.zzavk = new zzfz();
                }
                zzyxVar.zza(this.zzavk);
            } else if (iZzug == 18) {
                if (this.zzavl == null) {
                    this.zzavl = new zzfx();
                }
                zzyxVar.zza(this.zzavl);
            } else if (iZzug == 24) {
                this.zzavm = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug != 34) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzavn = zzyxVar.readString();
            }
        }
    }
}
