package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzay implements Runnable {
    private final zzan zzan;
    private final zzba zzaq;
    private final long zzdh;
    private final PowerManager.WakeLock zzdi = ((PowerManager) getContext().getSystemService("power")).newWakeLock(1, "fiid-sync");
    private final FirebaseInstanceId zzdj;

    zzay(FirebaseInstanceId firebaseInstanceId, zzan zzanVar, zzba zzbaVar, long j) {
        this.zzdj = firebaseInstanceId;
        this.zzan = zzanVar;
        this.zzaq = zzbaVar;
        this.zzdh = j;
        this.zzdi.setReferenceCounted(false);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdi.acquire();
        try {
            this.zzdj.zza(true);
            if (!this.zzdj.zzn()) {
                this.zzdj.zza(false);
                return;
            }
            if (!zzao()) {
                new zzaz(this).zzap();
                return;
            }
            if (zzam() && zzan() && this.zzaq.zzc(this.zzdj)) {
                this.zzdj.zza(false);
            } else {
                this.zzdj.zza(this.zzdh);
            }
        } finally {
            this.zzdi.release();
        }
    }

    private final boolean zzam() {
        try {
            if (this.zzdj.zzo()) {
                return true;
            }
            this.zzdj.zzp();
            return true;
        } catch (IOException e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Build channel failed: ".concat(strValueOf) : new String("Build channel failed: "));
            return false;
        }
    }

    private final boolean zzan() {
        zzax zzaxVarZzj = this.zzdj.zzj();
        if (zzaxVarZzj != null && !zzaxVarZzj.zzj(this.zzan.zzad())) {
            return true;
        }
        try {
            String strZzk = this.zzdj.zzk();
            if (strZzk == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
            }
            if (zzaxVarZzj == null || (zzaxVarZzj != null && !strZzk.equals(zzaxVarZzj.zzbq))) {
                Context context = getContext();
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", strZzk);
                zzav.zzc(context, intent);
                zzav.zzb(context, new Intent("com.google.firebase.iid.TOKEN_REFRESH"));
            }
            return true;
        } catch (IOException | SecurityException e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Token retrieval failed: ".concat(strValueOf) : new String("Token retrieval failed: "));
            return false;
        }
    }

    final Context getContext() {
        return this.zzdj.zzh().getApplicationContext();
    }

    final boolean zzao() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
