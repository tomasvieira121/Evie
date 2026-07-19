package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public final class zacm<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final Object zadn;
    private final WeakReference<GoogleApiClient> zadp;
    private ResultTransform<? super R, ? extends Result> zakn;
    private zacm<? extends Result> zako;
    private volatile ResultCallbacks<? super R> zakp;
    private PendingResult<R> zakq;
    private Status zakr;
    private final zaco zaks;
    private boolean zakt;

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r) {
        synchronized (this.zadn) {
            if (r.getStatus().isSuccess()) {
                if (this.zakn != null) {
                    zacc.zabb().submit(new zacn(this, r));
                } else if (zabw()) {
                    this.zakp.onSuccess(r);
                }
            } else {
                zad(r.getStatus());
                zab(r);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zaa(PendingResult<?> pendingResult) {
        synchronized (this.zadn) {
            this.zakq = pendingResult;
            zabu();
        }
    }

    @GuardedBy("mSyncToken")
    private final void zabu() {
        if (this.zakn == null && this.zakp == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.zadp.get();
        if (!this.zakt && this.zakn != null && googleApiClient != null) {
            googleApiClient.zaa(this);
            this.zakt = true;
        }
        Status status = this.zakr;
        if (status != null) {
            zae(status);
            return;
        }
        PendingResult<R> pendingResult = this.zakq;
        if (pendingResult != null) {
            pendingResult.setResultCallback(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zad(Status status) {
        synchronized (this.zadn) {
            this.zakr = status;
            zae(this.zakr);
        }
    }

    private final void zae(Status status) {
        synchronized (this.zadn) {
            if (this.zakn != null) {
                Status statusOnFailure = this.zakn.onFailure(status);
                Preconditions.checkNotNull(statusOnFailure, "onFailure must not return null");
                this.zako.zad(statusOnFailure);
            } else if (zabw()) {
                this.zakp.onFailure(status);
            }
        }
    }

    final void zabv() {
        this.zakp = null;
    }

    @GuardedBy("mSyncToken")
    private final boolean zabw() {
        return (this.zakp == null || this.zadp.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zab(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String strValueOf = String.valueOf(result);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(strValueOf);
                Log.w("TransformedResultImpl", sb.toString(), e);
            }
        }
    }
}
