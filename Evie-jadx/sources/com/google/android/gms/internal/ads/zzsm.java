package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzsm implements zzm {
    private final Context mContext;
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private zzsf zzbnl;

    @GuardedBy("mLock")
    private boolean zzbnm;

    public zzsm(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        synchronized (this.mLock) {
            if (this.zzbnl == null) {
                return;
            }
            this.zzbnl.disconnect();
            this.zzbnl = null;
            Binder.flushPendingCommands();
        }
    }

    static /* synthetic */ boolean zza(zzsm zzsmVar, boolean z) {
        zzsmVar.zzbnm = true;
        return true;
    }

    private final Future<ParcelFileDescriptor> zzb(zzsg zzsgVar) {
        zzsn zzsnVar = new zzsn(this);
        zzso zzsoVar = new zzso(this, zzsnVar, zzsgVar);
        zzsr zzsrVar = new zzsr(this, zzsnVar);
        synchronized (this.mLock) {
            this.zzbnl = new zzsf(this.mContext, com.google.android.gms.ads.internal.zzbv.zzez().zzsa(), zzsoVar, zzsrVar);
            this.zzbnl.checkAvailabilityAndConnect();
        }
        return zzsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzm
    public final zzp zzc(zzr<?> zzrVar) throws zzae {
        zzp zzpVar;
        zzsg zzsgVarZzh = zzsg.zzh(zzrVar);
        long jIntValue = ((Integer) zzkb.zzik().zzd(zznk.zzbdx)).intValue();
        long jElapsedRealtime = com.google.android.gms.ads.internal.zzbv.zzer().elapsedRealtime();
        try {
            try {
                zzsi zzsiVar = (zzsi) new zzaev(zzb(zzsgVarZzh).get(jIntValue, TimeUnit.MILLISECONDS)).zza(zzsi.CREATOR);
                if (zzsiVar.zzbnj) {
                    throw new zzae(zzsiVar.zzbnk);
                }
                if (zzsiVar.zzbnh.length != zzsiVar.zzbni.length) {
                    zzpVar = null;
                } else {
                    HashMap map = new HashMap();
                    for (int i = 0; i < zzsiVar.zzbnh.length; i++) {
                        map.put(zzsiVar.zzbnh[i], zzsiVar.zzbni[i]);
                    }
                    zzpVar = new zzp(zzsiVar.statusCode, zzsiVar.data, map, zzsiVar.zzac, zzsiVar.zzad);
                }
                long jElapsedRealtime2 = com.google.android.gms.ads.internal.zzbv.zzer().elapsedRealtime() - jElapsedRealtime;
                StringBuilder sb = new StringBuilder(52);
                sb.append("Http assets remote cache took ");
                sb.append(jElapsedRealtime2);
                sb.append("ms");
                zzakb.m358v(sb.toString());
                return zzpVar;
            } catch (Throwable th) {
                long jElapsedRealtime3 = com.google.android.gms.ads.internal.zzbv.zzer().elapsedRealtime() - jElapsedRealtime;
                StringBuilder sb2 = new StringBuilder(52);
                sb2.append("Http assets remote cache took ");
                sb2.append(jElapsedRealtime3);
                sb2.append("ms");
                zzakb.m358v(sb2.toString());
                throw th;
            }
        } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            long jElapsedRealtime4 = com.google.android.gms.ads.internal.zzbv.zzer().elapsedRealtime() - jElapsedRealtime;
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(jElapsedRealtime4);
            sb3.append("ms");
            zzakb.m358v(sb3.toString());
            return null;
        }
    }
}
