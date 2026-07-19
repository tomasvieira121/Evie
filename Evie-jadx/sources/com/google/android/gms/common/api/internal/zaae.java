package com.google.android.gms.common.api.internal;

import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
public class zaae extends zal {
    private GoogleApiManager zabm;
    private final ArraySet<zai<?>> zafo;

    @Override // com.google.android.gms.common.api.internal.zal, com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        zaak();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onResume() {
        super.onResume();
        zaak();
    }

    @Override // com.google.android.gms.common.api.internal.zal, com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.zabm.zab(this);
    }

    @Override // com.google.android.gms.common.api.internal.zal
    protected final void zaa(ConnectionResult connectionResult, int i) {
        this.zabm.zaa(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.zal
    protected final void zao() {
        this.zabm.zao();
    }

    final ArraySet<zai<?>> zaaj() {
        return this.zafo;
    }

    private final void zaak() {
        if (this.zafo.isEmpty()) {
            return;
        }
        this.zabm.zaa(this);
    }
}
