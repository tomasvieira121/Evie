package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
final class zze {
    private final ConcurrentHashMap<zzf, List<Throwable>> zze = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzf = new ReferenceQueue<>();

    zze() {
    }

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> referencePoll = this.zzf.poll();
        while (referencePoll != null) {
            this.zze.remove(referencePoll);
            referencePoll = this.zzf.poll();
        }
        List<Throwable> list = this.zze.get(new zzf(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> listPutIfAbsent = this.zze.putIfAbsent(new zzf(th, this.zzf), vector);
        return listPutIfAbsent == null ? vector : listPutIfAbsent;
    }
}
