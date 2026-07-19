package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class zzlx {
    private String zzaqr;
    private String zzaqt;
    private String zzaqx;
    private boolean zzaqz;
    private Date zzhl;
    private Location zzhp;
    private final HashSet<String> zzasp = new HashSet<>();
    private final Bundle zzask = new Bundle();
    private final HashMap<Class<? extends Object>, Object> zzasq = new HashMap<>();
    private final HashSet<String> zzasr = new HashSet<>();
    private final Bundle zzaqv = new Bundle();
    private final HashSet<String> zzass = new HashSet<>();
    private int zzaqn = -1;
    private boolean zzvm = false;
    private int zzaqq = -1;

    public final void zza(Class<? extends MediationAdapter> cls, Bundle bundle) {
        this.zzask.putBundle(cls.getName(), bundle);
    }

    public final void zza(Date date) {
        this.zzhl = date;
    }

    public final void zzac(String str) {
        this.zzasp.add(str);
    }

    public final void zzad(String str) {
        this.zzasr.add(str);
    }

    public final void zzae(String str) {
        this.zzasr.remove(str);
    }

    public final void zzb(Location location) {
        this.zzhp = location;
    }

    public final void zzj(boolean z) {
        this.zzaqq = z ? 1 : 0;
    }

    public final void zzk(boolean z) {
        this.zzaqz = z;
    }

    public final void zzt(int i) {
        this.zzaqn = i;
    }
}
