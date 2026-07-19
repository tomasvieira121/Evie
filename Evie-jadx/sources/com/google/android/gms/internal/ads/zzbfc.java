package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbfc;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzbfc<M extends zzbfc<M>> extends zzbfi {
    protected zzbfe zzebk;

    @Override // com.google.android.gms.internal.ads.zzbfi
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzbfc zzbfcVar = (zzbfc) super.clone();
        zzbfg.zza(this, zzbfcVar);
        return zzbfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    public void zza(zzbfa zzbfaVar) throws IOException {
        if (this.zzebk == null) {
            return;
        }
        for (int i = 0; i < this.zzebk.size(); i++) {
            this.zzebk.zzdg(i).zza(zzbfaVar);
        }
    }

    protected final boolean zza(zzbez zzbezVar, int i) throws IOException {
        int position = zzbezVar.getPosition();
        if (!zzbezVar.zzbq(i)) {
            return false;
        }
        int i2 = i >>> 3;
        zzbfk zzbfkVar = new zzbfk(i, zzbezVar.zzab(position, zzbezVar.getPosition() - position));
        zzbff zzbffVarZzdf = null;
        zzbfe zzbfeVar = this.zzebk;
        if (zzbfeVar == null) {
            this.zzebk = new zzbfe();
        } else {
            zzbffVarZzdf = zzbfeVar.zzdf(i2);
        }
        if (zzbffVarZzdf == null) {
            zzbffVarZzdf = new zzbff();
            this.zzebk.zza(i2, zzbffVarZzdf);
        }
        zzbffVarZzdf.zza(zzbfkVar);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    /* JADX INFO: renamed from: zzago */
    public final /* synthetic */ zzbfi clone() throws CloneNotSupportedException {
        return (zzbfc) clone();
    }

    @Override // com.google.android.gms.internal.ads.zzbfi
    protected int zzr() {
        if (this.zzebk == null) {
            return 0;
        }
        int iZzr = 0;
        for (int i = 0; i < this.zzebk.size(); i++) {
            iZzr += this.zzebk.zzdg(i).zzr();
        }
        return iZzr;
    }
}
