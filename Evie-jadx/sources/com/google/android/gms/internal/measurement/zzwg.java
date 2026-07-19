package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzwg extends zzwd {
    private zzwg() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final <L> List<L> zza(Object obj, long j) {
        zzvs zzvsVarZzd = zzd(obj, j);
        if (zzvsVarZzd.zztw()) {
            return zzvsVarZzd;
        }
        int size = zzvsVarZzd.size();
        zzvs zzvsVarZzak = zzvsVarZzd.zzak(size == 0 ? 10 : size << 1);
        zzyh.zza(obj, j, zzvsVarZzak);
        return zzvsVarZzak;
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final void zzb(Object obj, long j) {
        zzd(obj, j).zzsm();
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    final <E> void zza(Object obj, Object obj2, long j) {
        zzvs zzvsVarZzd = zzd(obj, j);
        zzvs zzvsVarZzd2 = zzd(obj2, j);
        int size = zzvsVarZzd.size();
        int size2 = zzvsVarZzd2.size();
        if (size > 0 && size2 > 0) {
            if (!zzvsVarZzd.zztw()) {
                zzvsVarZzd = zzvsVarZzd.zzak(size2 + size);
            }
            zzvsVarZzd.addAll(zzvsVarZzd2);
        }
        if (size > 0) {
            zzvsVarZzd2 = zzvsVarZzd;
        }
        zzyh.zza(obj, j, zzvsVarZzd2);
    }

    private static <E> zzvs<E> zzd(Object obj, long j) {
        return (zzvs) zzyh.zzp(obj, j);
    }
}
