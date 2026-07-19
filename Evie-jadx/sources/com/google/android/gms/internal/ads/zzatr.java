package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzatr implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final String packageName;
    private zzats zzdgz;
    private final String zzdha;
    private final LinkedBlockingQueue<zzba> zzdhb;
    private final HandlerThread zzdhc = new HandlerThread("GassClient");

    public zzatr(Context context, String str, String str2) {
        this.packageName = str;
        this.zzdha = str2;
        this.zzdhc.start();
        this.zzdgz = new zzats(context, this.zzdhc.getLooper(), this, this);
        this.zzdhb = new LinkedBlockingQueue<>();
        this.zzdgz.checkAvailabilityAndConnect();
    }

    private final void zznz() {
        zzats zzatsVar = this.zzdgz;
        if (zzatsVar != null) {
            if (zzatsVar.isConnected() || this.zzdgz.isConnecting()) {
                this.zzdgz.disconnect();
            }
        }
    }

    private final zzatx zzwb() {
        try {
            return this.zzdgz.zzwd();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    private static zzba zzwc() {
        zzba zzbaVar = new zzba();
        zzbaVar.zzdu = 32768L;
        return zzbaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzatx zzatxVarZzwb = zzwb();
        try {
            if (zzatxVarZzwb != null) {
                try {
                    try {
                        this.zzdhb.put(zzatxVarZzwb.zza(new zzatt(this.packageName, this.zzdha)).zzwe());
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable unused2) {
                    this.zzdhb.put(zzwc());
                }
            }
        } finally {
            zznz();
            this.zzdhc.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzdhb.put(zzwc());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.zzdhb.put(zzwc());
        } catch (InterruptedException unused) {
        }
    }

    public final zzba zzak(int i) {
        zzba zzbaVarPoll;
        try {
            zzbaVarPoll = this.zzdhb.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzbaVarPoll = null;
        }
        return zzbaVarPoll == null ? zzwc() : zzbaVarPoll;
    }
}
