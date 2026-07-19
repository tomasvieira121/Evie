package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzfx extends zzza<zzfx> {
    public Integer zzavo = null;
    public Boolean zzavp = null;
    public String zzavq = null;
    public String zzavr = null;
    public String zzavs = null;

    public zzfx() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfx)) {
            return false;
        }
        zzfx zzfxVar = (zzfx) obj;
        Integer num = this.zzavo;
        if (num == null) {
            if (zzfxVar.zzavo != null) {
                return false;
            }
        } else if (!num.equals(zzfxVar.zzavo)) {
            return false;
        }
        Boolean bool = this.zzavp;
        if (bool == null) {
            if (zzfxVar.zzavp != null) {
                return false;
            }
        } else if (!bool.equals(zzfxVar.zzavp)) {
            return false;
        }
        String str = this.zzavq;
        if (str == null) {
            if (zzfxVar.zzavq != null) {
                return false;
            }
        } else if (!str.equals(zzfxVar.zzavq)) {
            return false;
        }
        String str2 = this.zzavr;
        if (str2 == null) {
            if (zzfxVar.zzavr != null) {
                return false;
            }
        } else if (!str2.equals(zzfxVar.zzavr)) {
            return false;
        }
        String str3 = this.zzavs;
        if (str3 == null) {
            if (zzfxVar.zzavs != null) {
                return false;
            }
        } else if (!str3.equals(zzfxVar.zzavs)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzfxVar.zzcfc == null || zzfxVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzfxVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzavo;
        int iHashCode2 = 0;
        int iIntValue = (iHashCode + (num == null ? 0 : num.intValue())) * 31;
        Boolean bool = this.zzavp;
        int iHashCode3 = (iIntValue + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.zzavq;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzavr;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.zzavs;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Integer num = this.zzavo;
        if (num != null) {
            zzyyVar.zzd(1, num.intValue());
        }
        Boolean bool = this.zzavp;
        if (bool != null) {
            zzyyVar.zzb(2, bool.booleanValue());
        }
        String str = this.zzavq;
        if (str != null) {
            zzyyVar.zzb(3, str);
        }
        String str2 = this.zzavr;
        if (str2 != null) {
            zzyyVar.zzb(4, str2);
        }
        String str3 = this.zzavs;
        if (str3 != null) {
            zzyyVar.zzb(5, str3);
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Integer num = this.zzavo;
        if (num != null) {
            iZzf += zzyy.zzh(1, num.intValue());
        }
        Boolean bool = this.zzavp;
        if (bool != null) {
            bool.booleanValue();
            iZzf += zzyy.zzbb(2) + 1;
        }
        String str = this.zzavq;
        if (str != null) {
            iZzf += zzyy.zzc(3, str);
        }
        String str2 = this.zzavr;
        if (str2 != null) {
            iZzf += zzyy.zzc(4, str2);
        }
        String str3 = this.zzavs;
        return str3 != null ? iZzf + zzyy.zzc(5, str3) : iZzf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzzg
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzfx zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                int position = zzyxVar.getPosition();
                try {
                    int iZzuy = zzyxVar.zzuy();
                    if (iZzuy < 0 || iZzuy > 4) {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append(iZzuy);
                        sb.append(" is not a valid enum ComparisonType");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.zzavo = Integer.valueOf(iZzuy);
                } catch (IllegalArgumentException unused) {
                    zzyxVar.zzby(position);
                    zza(zzyxVar, iZzug);
                }
            } else if (iZzug == 16) {
                this.zzavp = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug == 26) {
                this.zzavq = zzyxVar.readString();
            } else if (iZzug == 34) {
                this.zzavr = zzyxVar.readString();
            } else if (iZzug != 42) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzavs = zzyxVar.readString();
            }
        }
    }
}
