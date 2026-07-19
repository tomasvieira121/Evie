package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzagd implements Callable<zzaga> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzagc zzckk;

    zzagd(zzagc zzagcVar, Context context) {
        this.zzckk = zzagcVar;
        this.val$context = context;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0054  */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzaga call() throws Exception {
        zzaga zzagaVarZzoo;
        zzage zzageVar = (zzage) this.zzckk.zzckj.get(this.val$context);
        if (zzageVar != null) {
            if (zzageVar.zzckl + ((Long) zzkb.zzik().zzd(zznk.zzazw)).longValue() < com.google.android.gms.ads.internal.zzbv.zzer().currentTimeMillis()) {
                zzagaVarZzoo = new zzagb(this.val$context).zzoo();
            } else {
                if (((Boolean) zzkb.zzik().zzd(zznk.zzazv)).booleanValue()) {
                    zzagaVarZzoo = new zzagb(this.val$context, zzageVar.zzckm).zzoo();
                } else {
                    zzagaVarZzoo = new zzagb(this.val$context).zzoo();
                }
            }
        } else {
            zzagaVarZzoo = new zzagb(this.val$context).zzoo();
        }
        this.zzckk.zzckj.put(this.val$context, new zzage(this.zzckk, zzagaVarZzoo));
        return zzagaVarZzoo;
    }
}
