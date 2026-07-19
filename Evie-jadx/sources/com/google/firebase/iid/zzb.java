package com.google.firebase.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzb extends Service {
    private final Object lock;
    final ExecutorService zzi;
    private Binder zzj;
    private int zzk;
    private int zzl;

    public zzb() {
        String strValueOf = String.valueOf(getClass().getSimpleName());
        this.zzi = Executors.newSingleThreadExecutor(new NamedThreadFactory(strValueOf.length() != 0 ? "Firebase-".concat(strValueOf) : new String("Firebase-")));
        this.lock = new Object();
        this.zzl = 0;
    }

    protected Intent zzb(Intent intent) {
        return intent;
    }

    public boolean zzc(Intent intent) {
        return false;
    }

    public abstract void zzd(Intent intent);

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.zzj == null) {
            this.zzj = new zzf(this);
        }
        return this.zzj;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.zzk = i2;
            this.zzl++;
        }
        Intent intentZzb = zzb(intent);
        if (intentZzb == null) {
            zza(intent);
            return 2;
        }
        if (zzc(intentZzb)) {
            zza(intent);
            return 2;
        }
        this.zzi.execute(new zzc(this, intentZzb, intent));
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            this.zzl--;
            if (this.zzl == 0) {
                stopSelfResult(this.zzk);
            }
        }
    }
}
