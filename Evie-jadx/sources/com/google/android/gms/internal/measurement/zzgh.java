package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzgh extends zzza<zzgh> {
    public zzgi[] zzawy = zzgi.zzms();

    public zzgh() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgh)) {
            return false;
        }
        zzgh zzghVar = (zzgh) obj;
        if (!zzze.equals(this.zzawy, zzghVar.zzawy)) {
            return false;
        }
        if (this.zzcfc == null || this.zzcfc.isEmpty()) {
            return zzghVar.zzcfc == null || zzghVar.zzcfc.isEmpty();
        }
        return this.zzcfc.equals(zzghVar.zzcfc);
    }

    public final int hashCode() {
        return ((((getClass().getName().hashCode() + 527) * 31) + zzze.hashCode(this.zzawy)) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        zzgi[] zzgiVarArr = this.zzawy;
        if (zzgiVarArr != null && zzgiVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzgi[] zzgiVarArr2 = this.zzawy;
                if (i >= zzgiVarArr2.length) {
                    break;
                }
                zzgi zzgiVar = zzgiVarArr2[i];
                if (zzgiVar != null) {
                    zzyyVar.zza(1, zzgiVar);
                }
                i++;
            }
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int iZzf = super.zzf();
        zzgi[] zzgiVarArr = this.zzawy;
        if (zzgiVarArr != null && zzgiVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzgi[] zzgiVarArr2 = this.zzawy;
                if (i >= zzgiVarArr2.length) {
                    break;
                }
                zzgi zzgiVar = zzgiVarArr2[i];
                if (zzgiVar != null) {
                    iZzf += zzyy.zzb(1, zzgiVar);
                }
                i++;
            }
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int iZzug = zzyxVar.zzug();
            if (iZzug == 0) {
                return this;
            }
            if (iZzug != 10) {
                if (!super.zza(zzyxVar, iZzug)) {
                    return this;
                }
            } else {
                int iZzb = zzzj.zzb(zzyxVar, 10);
                zzgi[] zzgiVarArr = this.zzawy;
                int length = zzgiVarArr == null ? 0 : zzgiVarArr.length;
                zzgi[] zzgiVarArr2 = new zzgi[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzawy, 0, zzgiVarArr2, 0, length);
                }
                while (length < zzgiVarArr2.length - 1) {
                    zzgiVarArr2[length] = new zzgi();
                    zzyxVar.zza(zzgiVarArr2[length]);
                    zzyxVar.zzug();
                    length++;
                }
                zzgiVarArr2[length] = new zzgi();
                zzyxVar.zza(zzgiVarArr2[length]);
                this.zzawy = zzgiVarArr2;
            }
        }
    }
}
