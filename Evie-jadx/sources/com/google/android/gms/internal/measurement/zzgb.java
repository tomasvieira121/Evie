package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgb extends zzza<zzgb> {
    public Long zzawe = null;
    public String zzafx = null;
    private Integer zzawf = null;
    public zzgc[] zzawg = zzgc.zzmn();
    public zzga[] zzawh = zzga.zzmm();
    public zzfu[] zzawi = zzfu.zzmi();
    private String zzawj = null;

    public zzgb() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgb)) {
            return false;
        }
        zzgb zzgbVar = (zzgb) obj;
        Long l = this.zzawe;
        if (l == null) {
            if (zzgbVar.zzawe != null) {
                return false;
            }
        } else if (!l.equals(zzgbVar.zzawe)) {
            return false;
        }
        String str = this.zzafx;
        if (str == null) {
            if (zzgbVar.zzafx != null) {
                return false;
            }
        } else if (!str.equals(zzgbVar.zzafx)) {
            return false;
        }
        Integer num = this.zzawf;
        if (num == null) {
            if (zzgbVar.zzawf != null) {
                return false;
            }
        } else if (!num.equals(zzgbVar.zzawf)) {
            return false;
        }
        if (!zzze.equals(this.zzawg, zzgbVar.zzawg) || !zzze.equals(this.zzawh, zzgbVar.zzawh) || !zzze.equals(this.zzawi, zzgbVar.zzawi)) {
            return false;
        }
        String str2 = this.zzawj;
        if (str2 == null) {
            if (zzgbVar.zzawj != null) {
                return false;
            }
        } else if (!str2.equals(zzgbVar.zzawj)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzgbVar.zzcfc == null || zzgbVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzgbVar.zzcfc);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Long l = this.zzawe;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.zzafx;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.zzawf;
        int iHashCode5 = (((((((iHashCode4 + (num == null ? 0 : num.hashCode())) * 31) + zzze.hashCode(this.zzawg)) * 31) + zzze.hashCode(this.zzawh)) * 31) + zzze.hashCode(this.zzawi)) * 31;
        String str2 = this.zzawj;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        if (this.zzcfc != null && !this.zzcfc.isEmpty()) {
            iHashCode2 = this.zzcfc.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        Long l = this.zzawe;
        if (l != null) {
            zzyyVar.zzi(1, l.longValue());
        }
        String str = this.zzafx;
        if (str != null) {
            zzyyVar.zzb(2, str);
        }
        Integer num = this.zzawf;
        if (num != null) {
            zzyyVar.zzd(3, num.intValue());
        }
        zzgc[] zzgcVarArr = this.zzawg;
        int i = 0;
        if (zzgcVarArr != null && zzgcVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzgc[] zzgcVarArr2 = this.zzawg;
                if (i2 >= zzgcVarArr2.length) {
                    break;
                }
                zzgc zzgcVar = zzgcVarArr2[i2];
                if (zzgcVar != null) {
                    zzyyVar.zza(4, zzgcVar);
                }
                i2++;
            }
        }
        zzga[] zzgaVarArr = this.zzawh;
        if (zzgaVarArr != null && zzgaVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                zzga[] zzgaVarArr2 = this.zzawh;
                if (i3 >= zzgaVarArr2.length) {
                    break;
                }
                zzga zzgaVar = zzgaVarArr2[i3];
                if (zzgaVar != null) {
                    zzyyVar.zza(5, zzgaVar);
                }
                i3++;
            }
        }
        zzfu[] zzfuVarArr = this.zzawi;
        if (zzfuVarArr != null && zzfuVarArr.length > 0) {
            while (true) {
                zzfu[] zzfuVarArr2 = this.zzawi;
                if (i >= zzfuVarArr2.length) {
                    break;
                }
                zzfu zzfuVar = zzfuVarArr2[i];
                if (zzfuVar != null) {
                    zzyyVar.zza(6, zzfuVar);
                }
                i++;
            }
        }
        String str2 = this.zzawj;
        if (str2 != null) {
            zzyyVar.zzb(7, str2);
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        Long l = this.zzawe;
        if (l != null) {
            iZzf += zzyy.zzd(1, l.longValue());
        }
        String str = this.zzafx;
        if (str != null) {
            iZzf += zzyy.zzc(2, str);
        }
        Integer num = this.zzawf;
        if (num != null) {
            iZzf += zzyy.zzh(3, num.intValue());
        }
        zzgc[] zzgcVarArr = this.zzawg;
        int i = 0;
        if (zzgcVarArr != null && zzgcVarArr.length > 0) {
            int iZzb = iZzf;
            int i2 = 0;
            while (true) {
                zzgc[] zzgcVarArr2 = this.zzawg;
                if (i2 >= zzgcVarArr2.length) {
                    break;
                }
                zzgc zzgcVar = zzgcVarArr2[i2];
                if (zzgcVar != null) {
                    iZzb += zzyy.zzb(4, zzgcVar);
                }
                i2++;
            }
            iZzf = iZzb;
        }
        zzga[] zzgaVarArr = this.zzawh;
        if (zzgaVarArr != null && zzgaVarArr.length > 0) {
            int iZzb2 = iZzf;
            int i3 = 0;
            while (true) {
                zzga[] zzgaVarArr2 = this.zzawh;
                if (i3 >= zzgaVarArr2.length) {
                    break;
                }
                zzga zzgaVar = zzgaVarArr2[i3];
                if (zzgaVar != null) {
                    iZzb2 += zzyy.zzb(5, zzgaVar);
                }
                i3++;
            }
            iZzf = iZzb2;
        }
        zzfu[] zzfuVarArr = this.zzawi;
        if (zzfuVarArr != null && zzfuVarArr.length > 0) {
            while (true) {
                zzfu[] zzfuVarArr2 = this.zzawi;
                if (i >= zzfuVarArr2.length) {
                    break;
                }
                zzfu zzfuVar = zzfuVarArr2[i];
                if (zzfuVar != null) {
                    iZzf += zzyy.zzb(6, zzfuVar);
                }
                i++;
            }
        }
        String str2 = this.zzawj;
        return str2 != null ? iZzf + zzyy.zzc(7, str2) : iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug == 8) {
                this.zzawe = Long.valueOf(zzyxVar.zzuz());
            } else if (iZzug == 18) {
                this.zzafx = zzyxVar.readString();
            } else if (iZzug == 24) {
                this.zzawf = Integer.valueOf(zzyxVar.zzuy());
            } else if (iZzug == 34) {
                int iZzb = zzzj.zzb(zzyxVar, 34);
                zzgc[] zzgcVarArr = this.zzawg;
                int length = zzgcVarArr == null ? 0 : zzgcVarArr.length;
                zzgc[] zzgcVarArr2 = new zzgc[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzawg, 0, zzgcVarArr2, 0, length);
                }
                while (length < zzgcVarArr2.length - 1) {
                    zzgcVarArr2[length] = new zzgc();
                    zzyxVar.zza(zzgcVarArr2[length]);
                    zzyxVar.zzug();
                    length++;
                }
                zzgcVarArr2[length] = new zzgc();
                zzyxVar.zza(zzgcVarArr2[length]);
                this.zzawg = zzgcVarArr2;
            } else if (iZzug == 42) {
                int iZzb2 = zzzj.zzb(zzyxVar, 42);
                zzga[] zzgaVarArr = this.zzawh;
                int length2 = zzgaVarArr == null ? 0 : zzgaVarArr.length;
                zzga[] zzgaVarArr2 = new zzga[iZzb2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzawh, 0, zzgaVarArr2, 0, length2);
                }
                while (length2 < zzgaVarArr2.length - 1) {
                    zzgaVarArr2[length2] = new zzga();
                    zzyxVar.zza(zzgaVarArr2[length2]);
                    zzyxVar.zzug();
                    length2++;
                }
                zzgaVarArr2[length2] = new zzga();
                zzyxVar.zza(zzgaVarArr2[length2]);
                this.zzawh = zzgaVarArr2;
            } else if (iZzug == 50) {
                int iZzb3 = zzzj.zzb(zzyxVar, 50);
                zzfu[] zzfuVarArr = this.zzawi;
                int length3 = zzfuVarArr == null ? 0 : zzfuVarArr.length;
                zzfu[] zzfuVarArr2 = new zzfu[iZzb3 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.zzawi, 0, zzfuVarArr2, 0, length3);
                }
                while (length3 < zzfuVarArr2.length - 1) {
                    zzfuVarArr2[length3] = new zzfu();
                    zzyxVar.zza(zzfuVarArr2[length3]);
                    zzyxVar.zzug();
                    length3++;
                }
                zzfuVarArr2[length3] = new zzfu();
                zzyxVar.zza(zzfuVarArr2[length3]);
                this.zzawi = zzfuVarArr2;
            } else if (iZzug != 58) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                this.zzawj = zzyxVar.readString();
            }
        }
    }
}
