package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzfv extends zzza<zzfv> {
    private static volatile zzfv[] zzavd;
    public Integer zzave = null;
    public String zzavf = null;
    public zzfw[] zzavg = zzfw.zzmk();
    private Boolean zzavh = null;
    public zzfx zzavi = null;
    public Boolean zzavb = null;
    public Boolean zzavc = null;

    public static zzfv[] zzmj() {
        if (zzavd == null) {
            synchronized (zzze.zzcfl) {
                if (zzavd == null) {
                    zzavd = new zzfv[0];
                }
            }
        }
        return zzavd;
    }

    public zzfv() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfv)) {
            return false;
        }
        zzfv zzfvVar = (zzfv) obj;
        Integer num = this.zzave;
        if (num == null) {
            if (zzfvVar.zzave != null) {
                return false;
            }
        } else if (!num.equals(zzfvVar.zzave)) {
            return false;
        }
        String str = this.zzavf;
        if (str == null) {
            if (zzfvVar.zzavf != null) {
                return false;
            }
        } else if (!str.equals(zzfvVar.zzavf)) {
            return false;
        }
        if (!zzze.equals(this.zzavg, zzfvVar.zzavg)) {
            return false;
        }
        Boolean bool = this.zzavh;
        if (bool == null) {
            if (zzfvVar.zzavh != null) {
                return false;
            }
        } else if (!bool.equals(zzfvVar.zzavh)) {
            return false;
        }
        zzfx zzfxVar = this.zzavi;
        if (zzfxVar == null) {
            if (zzfvVar.zzavi != null) {
                return false;
            }
        } else if (!zzfxVar.equals(zzfvVar.zzavi)) {
            return false;
        }
        Boolean bool2 = this.zzavb;
        if (bool2 == null) {
            if (zzfvVar.zzavb != null) {
                return false;
            }
        } else if (!bool2.equals(zzfvVar.zzavb)) {
            return false;
        }
        Boolean bool3 = this.zzavc;
        if (bool3 == null) {
            if (zzfvVar.zzavc != null) {
                return false;
            }
        } else if (!bool3.equals(zzfvVar.zzavc)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzfvVar.zzcfc == null || zzfvVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzfvVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzave;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.zzavf;
        int iHashCode4 = (((iHashCode3 + (str == null ? 0 : str.hashCode())) * 31) + zzze.hashCode(this.zzavg)) * 31;
        Boolean bool = this.zzavh;
        int iHashCode5 = iHashCode4 + (bool == null ? 0 : bool.hashCode());
        zzfx zzfxVar = this.zzavi;
        int iHashCode6 = ((iHashCode5 * 31) + (zzfxVar == null ? 0 : zzfxVar.hashCode())) * 31;
        Boolean bool2 = this.zzavb;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.zzavc;
        int iHashCode8 = (iHashCode7 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode8 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzave;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        String str = this.zzavf;
        if (str != null) {
            zzyyVar.zzb(2, str);
        }
        zzfw[] zzfwVarArr = this.zzavg;
        if (zzfwVarArr != null && zzfwVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzfw[] zzfwVarArr2 = this.zzavg;
                if (i >= zzfwVarArr2.length) {
                    break;
                }
                zzfw zzfwVar = zzfwVarArr2[i];
                if (zzfwVar != null) {
                    zzyyVar.zza(3, zzfwVar);
                }
                i++;
            }
        }
        Boolean bool = this.zzavh;
        if (bool != null) {
            zzyyVar.zzb(4, bool.booleanValue());
        }
        zzfx zzfxVar = this.zzavi;
        if (zzfxVar != null) {
            zzyyVar.zza(5, zzfxVar);
        }
        Boolean bool2 = this.zzavb;
        if (bool2 != null) {
            zzyyVar.zzb(6, bool2.booleanValue());
        }
        Boolean bool3 = this.zzavc;
        if (bool3 != null) {
            zzyyVar.zzb(7, bool3.booleanValue());
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
        String str = this.zzavf;
        if (str != null) {
            iZzf += zzyy.zzc(2, str);
        }
        zzfw[] zzfwVarArr = this.zzavg;
        if (zzfwVarArr != null && zzfwVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzfw[] zzfwVarArr2 = this.zzavg;
                if (i >= zzfwVarArr2.length) {
                    break;
                }
                zzfw zzfwVar = zzfwVarArr2[i];
                if (zzfwVar != null) {
                    iZzf += zzyy.zzb(3, zzfwVar);
                }
                i++;
            }
        }
        Boolean bool = this.zzavh;
        if (bool != null) {
            bool.booleanValue();
            iZzf += zzyy.zzbb(4) + 1;
        }
        zzfx zzfxVar = this.zzavi;
        if (zzfxVar != null) {
            iZzf += zzyy.zzb(5, zzfxVar);
        }
        Boolean bool2 = this.zzavb;
        if (bool2 != null) {
            bool2.booleanValue();
            iZzf += zzyy.zzbb(6) + 1;
        }
        Boolean bool3 = this.zzavc;
        if (bool3 == null) {
            return iZzf;
        }
        bool3.booleanValue();
        return iZzf + zzyy.zzbb(7) + 1;
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
                this.zzavf = zzyxVar.readString();
            } else if (iZzug == 26) {
                int iZzb = zzzj.zzb(zzyxVar, 26);
                zzfw[] zzfwVarArr = this.zzavg;
                int length = zzfwVarArr == null ? 0 : zzfwVarArr.length;
                zzfw[] zzfwVarArr2 = new zzfw[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzavg, 0, zzfwVarArr2, 0, length);
                }
                while (length < zzfwVarArr2.length - 1) {
                    zzfwVarArr2[length] = new zzfw();
                    zzyxVar.zza(zzfwVarArr2[length]);
                    zzyxVar.zzug();
                    length++;
                }
                zzfwVarArr2[length] = new zzfw();
                zzyxVar.zza(zzfwVarArr2[length]);
                this.zzavg = zzfwVarArr2;
            } else if (iZzug == 32) {
                this.zzavh = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug == 42) {
                if (this.zzavi == null) {
                    this.zzavi = new zzfx();
                }
                zzyxVar.zza(this.zzavi);
            } else if (iZzug == 48) {
                this.zzavb = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug != 56) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzavc = Boolean.valueOf(zzyxVar.zzum());
            }
        }
    }
}
