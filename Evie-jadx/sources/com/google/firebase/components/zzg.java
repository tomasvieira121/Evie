package com.google.firebase.components;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzg {
    private final Component<?> zza;
    private final Set<zzg> zzb = new HashSet();
    private final Set<zzg> zzc = new HashSet();

    zzg(Component<?> component) {
        this.zza = component;
    }

    final void zza(zzg zzgVar) {
        this.zzb.add(zzgVar);
    }

    final void zzb(zzg zzgVar) {
        this.zzc.add(zzgVar);
    }

    final Set<zzg> zza() {
        return this.zzb;
    }

    final void zzc(zzg zzgVar) {
        this.zzc.remove(zzgVar);
    }

    final Component<?> zzb() {
        return this.zza;
    }

    final boolean zzc() {
        return this.zzc.isEmpty();
    }

    final boolean zzd() {
        return this.zzb.isEmpty();
    }
}
