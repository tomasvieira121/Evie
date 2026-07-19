package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzzg {
    protected volatile int zzcfm = -1;

    public abstract zzzg zza(zzyx zzyxVar) throws IOException;

    public void zza(zzyy zzyyVar) throws IOException {
    }

    protected int zzf() {
        return 0;
    }

    public final int zzza() {
        if (this.zzcfm < 0) {
            zzvu();
        }
        return this.zzcfm;
    }

    public final int zzvu() {
        int iZzf = zzf();
        this.zzcfm = iZzf;
        return iZzf;
    }

    public String toString() {
        return zzzh.zzc(this);
    }

    @Override // 
    /* JADX INFO: renamed from: zzyu, reason: merged with bridge method [inline-methods] */
    public zzzg clone() throws CloneNotSupportedException {
        return (zzzg) super.clone();
    }
}
