package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzadh;
import com.google.android.gms.internal.ads.zzmu;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class VideoOptions {
    private final boolean zzuz;
    private final boolean zzva;
    private final boolean zzvb;

    public VideoOptions(zzmu zzmuVar) {
        this.zzuz = zzmuVar.zzato;
        this.zzva = zzmuVar.zzatp;
        this.zzvb = zzmuVar.zzatq;
    }

    public final boolean getClickToExpandRequested() {
        return this.zzvb;
    }

    public final boolean getCustomControlsRequested() {
        return this.zzva;
    }

    public final boolean getStartMuted() {
        return this.zzuz;
    }
}
