package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzga extends zzza<zzga> {
    private static volatile zzga[] zzawa;
    public String name = null;
    public Boolean zzawb = null;
    public Boolean zzawc = null;
    public Integer zzawd = null;

    public static zzga[] zzmm() {
        if (zzawa == null) {
            synchronized (zzze.zzcfl) {
                if (zzawa == null) {
                    zzawa = new zzga[0];
                }
            }
        }
        return zzawa;
    }

    public zzga() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzga)) {
            return false;
        }
        zzga zzgaVar = (zzga) obj;
        String str = this.name;
        if (str == null) {
            if (zzgaVar.name != null) {
                return false;
            }
        } else if (!str.equals(zzgaVar.name)) {
            return false;
        }
        Boolean bool = this.zzawb;
        if (bool == null) {
            if (zzgaVar.zzawb != null) {
                return false;
            }
        } else if (!bool.equals(zzgaVar.zzawb)) {
            return false;
        }
        Boolean bool2 = this.zzawc;
        if (bool2 == null) {
            if (zzgaVar.zzawc != null) {
                return false;
            }
        } else if (!bool2.equals(zzgaVar.zzawc)) {
            return false;
        }
        Integer num = this.zzawd;
        if (num == null) {
            if (zzgaVar.zzawd != null) {
                return false;
            }
        } else if (!num.equals(zzgaVar.zzawd)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgaVar.zzcfc == null || zzgaVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgaVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.name;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.zzawb;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.zzawc;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num = this.zzawd;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        String str = this.name;
        if (str != null) {
            zzyyVar.zzb(1, str);
        }
        Boolean bool = this.zzawb;
        if (bool != null) {
            zzyyVar.zzb(2, bool.booleanValue());
        }
        Boolean bool2 = this.zzawc;
        if (bool2 != null) {
            zzyyVar.zzb(3, bool2.booleanValue());
        }
        Integer num = this.zzawd;
        if (num != null) {
            zzyyVar.zzd(4, num.intValue());
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
        Boolean bool = this.zzawb;
        if (bool != null) {
            bool.booleanValue();
            iZzf += zzyy.zzbb(2) + 1;
        }
        Boolean bool2 = this.zzawc;
        if (bool2 != null) {
            bool2.booleanValue();
            iZzf += zzyy.zzbb(3) + 1;
        }
        Integer num = this.zzawd;
        return num != null ? iZzf + zzyy.zzh(4, num.intValue()) : iZzf;
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
            } else if (iZzug == 16) {
                this.zzawb = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug == 24) {
                this.zzawc = Boolean.valueOf(zzyxVar.zzum());
            } else if (iZzug != 32) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzawd = Integer.valueOf(zzyxVar.zzuy());
            }
        }
    }
}
