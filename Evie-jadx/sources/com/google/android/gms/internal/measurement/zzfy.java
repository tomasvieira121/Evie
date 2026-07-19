package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzfy extends zzza<zzfy> {
    private static volatile zzfy[] zzavt;
    public Integer zzave = null;
    public String zzavu = null;
    public zzfw zzavv = null;
    public Boolean zzavb = null;
    public Boolean zzavc = null;

    public static zzfy[] zzml() {
        if (zzavt == null) {
            synchronized (zzze.zzcfl) {
                if (zzavt == null) {
                    zzavt = new zzfy[0];
                }
            }
        }
        return zzavt;
    }

    public zzfy() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfy)) {
            return false;
        }
        zzfy zzfyVar = (zzfy) obj;
        Integer num = this.zzave;
        if (num == null) {
            if (zzfyVar.zzave != null) {
                return false;
            }
        } else if (!num.equals(zzfyVar.zzave)) {
            return false;
        }
        String str = this.zzavu;
        if (str == null) {
            if (zzfyVar.zzavu != null) {
                return false;
            }
        } else if (!str.equals(zzfyVar.zzavu)) {
            return false;
        }
        zzfw zzfwVar = this.zzavv;
        if (zzfwVar == null) {
            if (zzfyVar.zzavv != null) {
                return false;
            }
        } else if (!zzfwVar.equals(zzfyVar.zzavv)) {
            return false;
        }
        Boolean bool = this.zzavb;
        if (bool == null) {
            if (zzfyVar.zzavb != null) {
                return false;
            }
        } else if (!bool.equals(zzfyVar.zzavb)) {
            return false;
        }
        Boolean bool2 = this.zzavc;
        if (bool2 == null) {
            if (zzfyVar.zzavc != null) {
                return false;
            }
        } else if (!bool2.equals(zzfyVar.zzavc)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzfyVar.zzcfc == null || zzfyVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzfyVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzave;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.zzavu;
        int iHashCode4 = iHashCode3 + (str == null ? 0 : str.hashCode());
        zzfw zzfwVar = this.zzavv;
        int iHashCode5 = ((iHashCode4 * 31) + (zzfwVar == null ? 0 : zzfwVar.hashCode())) * 31;
        Boolean bool = this.zzavb;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.zzavc;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode7 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzave;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        String str = this.zzavu;
        if (str != null) {
            zzyyVar.zzb(2, str);
        }
        zzfw zzfwVar = this.zzavv;
        if (zzfwVar != null) {
            zzyyVar.zza(3, zzfwVar);
        }
        Boolean bool = this.zzavb;
        if (bool != null) {
            zzyyVar.zzb(4, bool.booleanValue());
        }
        Boolean bool2 = this.zzavc;
        if (bool2 != null) {
            zzyyVar.zzb(5, bool2.booleanValue());
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Integer num = this.zzave;
        if (num != null) {
            iZzf += zzyy.zzh(1, num.intValue());
        }
        String str = this.zzavu;
        if (str != null) {
            iZzf += zzyy.zzc(2, str);
        }
        zzfw zzfwVar = this.zzavv;
        if (zzfwVar != null) {
            iZzf += zzyy.zzb(3, zzfwVar);
        }
        Boolean bool = this.zzavb;
        if (bool != null) {
            bool.booleanValue();
            iZzf += zzyy.zzbb(4) + 1;
        }
        Boolean bool2 = this.zzavc;
        if (bool2 == null) {
            return iZzf;
        }
        bool2.booleanValue();
        return iZzf + zzyy.zzbb(5) + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                this.zzave = Integer.valueOf(zzyxVar.zzuy());
            } else if (iZzug == 18) {
                this.zzavu = zzyxVar.readString();
            } else if (iZzug == 26) {
                if (this.zzavv == null) {
                    this.zzavv = new zzfw();
                }
                zzyxVar.zza(this.zzavv);
            } else if (iZzug == 32) {
                this.zzavb = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug != 40) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzavc = Boolean.valueOf(zzyxVar.zzum());
            }
        }
    }
}
