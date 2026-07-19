package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzfu extends zzza<zzfu> {
    private static volatile zzfu[] zzaux;
    public Integer zzauy = null;
    public zzfy[] zzauz = zzfy.zzml();
    public zzfv[] zzava = zzfv.zzmj();
    private Boolean zzavb = null;
    private Boolean zzavc = null;

    public static zzfu[] zzmi() {
        if (zzaux == null) {
            synchronized (zzze.zzcfl) {
                if (zzaux == null) {
                    zzaux = new zzfu[0];
                }
            }
        }
        return zzaux;
    }

    public zzfu() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfu)) {
            return false;
        }
        zzfu zzfuVar = (zzfu) obj;
        Integer num = this.zzauy;
        if (num == null) {
            if (zzfuVar.zzauy != null) {
                return false;
            }
        } else if (!num.equals(zzfuVar.zzauy)) {
            return false;
        }
        if (!zzze.equals(this.zzauz, zzfuVar.zzauz) || !zzze.equals(this.zzava, zzfuVar.zzava)) {
            return false;
        }
        Boolean bool = this.zzavb;
        if (bool == null) {
            if (zzfuVar.zzavb != null) {
                return false;
            }
        } else if (!bool.equals(zzfuVar.zzavb)) {
            return false;
        }
        Boolean bool2 = this.zzavc;
        if (bool2 == null) {
            if (zzfuVar.zzavc != null) {
                return false;
            }
        } else if (!bool2.equals(zzfuVar.zzavc)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzfuVar.zzcfc == null || zzfuVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzfuVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzauy;
        int iHashCode2 = 0;
        int iHashCode3 = (((((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + zzze.hashCode(this.zzauz)) * 31) + zzze.hashCode(this.zzava)) * 31;
        Boolean bool = this.zzavb;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.zzavc;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode5 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzauy;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        zzfy[] zzfyVarArr = this.zzauz;
        int i = 0;
        if (zzfyVarArr != null && zzfyVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzfy[] zzfyVarArr2 = this.zzauz;
                if (i2 >= zzfyVarArr2.length) {
                    break;
                }
                zzfy zzfyVar = zzfyVarArr2[i2];
                if (zzfyVar != null) {
                    zzyyVar.zza(2, zzfyVar);
                }
                i2++;
            }
        }
        zzfv[] zzfvVarArr = this.zzava;
        if (zzfvVarArr != null && zzfvVarArr.length > 0) {
            while (true) {
                zzfv[] zzfvVarArr2 = this.zzava;
                if (i >= zzfvVarArr2.length) {
                    break;
                }
                zzfv zzfvVar = zzfvVarArr2[i];
                if (zzfvVar != null) {
                    zzyyVar.zza(3, zzfvVar);
                }
                i++;
            }
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
        Integer num = this.zzauy;
        if (num != null) {
            iZzf += zzyy.zzh(1, num.intValue());
        }
        zzfy[] zzfyVarArr = this.zzauz;
        int i = 0;
        if (zzfyVarArr != null && zzfyVarArr.length > 0) {
            int iZzb = iZzf;
            int i2 = 0;
            while (true) {
                zzfy[] zzfyVarArr2 = this.zzauz;
                if (i2 >= zzfyVarArr2.length) {
                    break;
                }
                zzfy zzfyVar = zzfyVarArr2[i2];
                if (zzfyVar != null) {
                    iZzb += zzyy.zzb(2, zzfyVar);
                }
                i2++;
            }
            iZzf = iZzb;
        }
        zzfv[] zzfvVarArr = this.zzava;
        if (zzfvVarArr != null && zzfvVarArr.length > 0) {
            while (true) {
                zzfv[] zzfvVarArr2 = this.zzava;
                if (i >= zzfvVarArr2.length) {
                    break;
                }
                zzfv zzfvVar = zzfvVarArr2[i];
                if (zzfvVar != null) {
                    iZzf += zzyy.zzb(3, zzfvVar);
                }
                i++;
            }
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
                this.zzauy = Integer.valueOf(zzyxVar.zzuy());
            } else if (iZzug == 18) {
                int iZzb = zzzj.zzb(zzyxVar, 18);
                zzfy[] zzfyVarArr = this.zzauz;
                int length = zzfyVarArr == null ? 0 : zzfyVarArr.length;
                zzfy[] zzfyVarArr2 = new zzfy[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzauz, 0, zzfyVarArr2, 0, length);
                }
                while (length < zzfyVarArr2.length - 1) {
                    zzfyVarArr2[length] = new zzfy();
                    zzyxVar.zza(zzfyVarArr2[length]);
                    zzyxVar.zzug();
                    length++;
                }
                zzfyVarArr2[length] = new zzfy();
                zzyxVar.zza(zzfyVarArr2[length]);
                this.zzauz = zzfyVarArr2;
            } else if (iZzug == 26) {
                int iZzb2 = zzzj.zzb(zzyxVar, 26);
                zzfv[] zzfvVarArr = this.zzava;
                int length2 = zzfvVarArr == null ? 0 : zzfvVarArr.length;
                zzfv[] zzfvVarArr2 = new zzfv[iZzb2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzava, 0, zzfvVarArr2, 0, length2);
                }
                while (length2 < zzfvVarArr2.length - 1) {
                    zzfvVarArr2[length2] = new zzfv();
                    zzyxVar.zza(zzfvVarArr2[length2]);
                    zzyxVar.zzug();
                    length2++;
                }
                zzfvVarArr2[length2] = new zzfv();
                zzyxVar.zza(zzfvVarArr2[length2]);
                this.zzava = zzfvVarArr2;
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
