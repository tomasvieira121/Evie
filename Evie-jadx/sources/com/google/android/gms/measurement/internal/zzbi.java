package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;

/* JADX INFO: loaded from: classes.dex */
final class zzbi implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzu zzaof;
    private final /* synthetic */ ServiceConnection zzaog;
    private final /* synthetic */ zzbh zzaoh;

    zzbi(zzbh zzbhVar, com.google.android.gms.internal.measurement.zzu zzuVar, ServiceConnection serviceConnection) {
        this.zzaoh = zzbhVar;
        this.zzaof = zzuVar;
        this.zzaog = serviceConnection;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f7  */
    @Override // java.lang.Runnable
    public final void run() {
        zzbg zzbgVar = this.zzaoh.zzaoe;
        String str = this.zzaoh.packageName;
        com.google.android.gms.internal.measurement.zzu zzuVar = this.zzaof;
        ServiceConnection serviceConnection = this.zzaog;
        Bundle bundleZza = zzbgVar.zza(str, zzuVar);
        zzbgVar.zzadj.zzgn().zzaf();
        if (bundleZza != null) {
            long j = bundleZza.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzbgVar.zzadj.zzgo().zzjd().zzbx("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundleZza.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzbgVar.zzadj.zzgo().zzjd().zzbx("No referrer defined in install referrer response");
                } else {
                    zzbgVar.zzadj.zzgo().zzjl().zzg("InstallReferrer API result", string);
                    zzfk zzfkVarZzgm = zzbgVar.zzadj.zzgm();
                    String strValueOf = String.valueOf(string);
                    Bundle bundleZza2 = zzfkVarZzgm.zza(Uri.parse(strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?")));
                    if (bundleZza2 == null) {
                        zzbgVar.zzadj.zzgo().zzjd().zzbx("No campaign params defined in install referrer result");
                    } else {
                        String string2 = bundleZza2.getString("medium");
                        if ((string2 == null || "(not set)".equalsIgnoreCase(string2) || "organic".equalsIgnoreCase(string2)) ? false : true) {
                            long j2 = bundleZza.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                zzbgVar.zzadj.zzgo().zzjd().zzbx("Install Referrer is missing click timestamp for ad campaign");
                            } else {
                                bundleZza2.putLong("click_timestamp", j2);
                                if (j == zzbgVar.zzadj.zzgp().zzank.get()) {
                                    zzbgVar.zzadj.zzgr();
                                    zzbgVar.zzadj.zzgo().zzjl().zzbx("Campaign has already been logged");
                                } else {
                                    zzbgVar.zzadj.zzgp().zzank.set(j);
                                    zzbgVar.zzadj.zzgr();
                                    zzbgVar.zzadj.zzgo().zzjl().zzg("Logging Install Referrer campaign from sdk with ", "referrer API");
                                    bundleZza2.putString("_cis", "referrer API");
                                    zzbgVar.zzadj.zzge().logEvent("auto", "_cmp", bundleZza2);
                                }
                            }
                        } else if (j == zzbgVar.zzadj.zzgp().zzank.get()) {
                            zzbgVar.zzadj.zzgr();
                            zzbgVar.zzadj.zzgo().zzjl().zzbx("Campaign has already been logged");
                        } else {
                            zzbgVar.zzadj.zzgp().zzank.set(j);
                            zzbgVar.zzadj.zzgr();
                            zzbgVar.zzadj.zzgo().zzjl().zzg("Logging Install Referrer campaign from sdk with ", "referrer API");
                            bundleZza2.putString("_cis", "referrer API");
                            zzbgVar.zzadj.zzge().logEvent("auto", "_cmp", bundleZza2);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.getInstance().unbindService(zzbgVar.zzadj.getContext(), serviceConnection);
        }
    }
}
