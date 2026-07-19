package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
final class zzad implements ServiceConnection {

    @GuardedBy("this")
    int state;
    final Messenger zzbx;
    zzai zzby;

    @GuardedBy("this")
    final Queue<zzak<?>> zzbz;

    @GuardedBy("this")
    final SparseArray<zzak<?>> zzca;
    final /* synthetic */ zzab zzcb;

    private zzad(zzab zzabVar) {
        this.zzcb = zzabVar;
        this.state = 0;
        this.zzbx = new Messenger(new com.google.android.gms.internal.firebase_messaging.zza(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.zzae
            private final zzad zzcc;

            {
                this.zzcc = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzcc.zza(message);
            }
        }));
        this.zzbz = new ArrayDeque();
        this.zzca = new SparseArray<>();
    }

    final synchronized boolean zzb(zzak zzakVar) {
        switch (this.state) {
            case 0:
                this.zzbz.add(zzakVar);
                Preconditions.checkState(this.state == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.state = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                if (!ConnectionTracker.getInstance().bindService(this.zzcb.zzx, intent, this, 1)) {
                    zza(0, "Unable to bind to service");
                } else {
                    this.zzcb.zzbu.schedule(new Runnable(this) { // from class: com.google.firebase.iid.zzaf
                        private final zzad zzcc;

                        {
                            this.zzcc = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzcc.zzaa();
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                return true;
            case 1:
                this.zzbz.add(zzakVar);
                return true;
            case 2:
                this.zzbz.add(zzakVar);
                zzy();
                return true;
            case 3:
            case 4:
                return false;
            default:
                int i = this.state;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i);
                throw new IllegalStateException(sb.toString());
        }
    }

    final boolean zza(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzak<?> zzakVar = this.zzca.get(i);
            if (zzakVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.zzca.remove(i);
            zzz();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zzakVar.zza(new zzal(4, "Not supported by GmsCore"));
            } else {
                zzakVar.zzb(data);
            }
            return true;
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        if (iBinder == null) {
            zza(0, "Null service connection");
            return;
        }
        try {
            this.zzby = new zzai(iBinder);
            this.state = 2;
            zzy();
        } catch (RemoteException e) {
            zza(0, e.getMessage());
        }
    }

    private final void zzy() {
        this.zzcb.zzbu.execute(new Runnable(this) { // from class: com.google.firebase.iid.zzag
            private final zzad zzcc;

            {
                this.zzcc = this;
            }

            /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
            @Override // java.lang.Runnable
            public final void run() {
                final zzak<?> zzakVarPoll;
                final zzad zzadVar = this.zzcc;
                while (true) {
                    synchronized (zzadVar) {
                        if (zzadVar.state != 2) {
                            return;
                        }
                        if (zzadVar.zzbz.isEmpty()) {
                            zzadVar.zzz();
                            return;
                        } else {
                            zzakVarPoll = zzadVar.zzbz.poll();
                            zzadVar.zzca.put(zzakVarPoll.zzcf, zzakVarPoll);
                            zzadVar.zzcb.zzbu.schedule(new Runnable(zzadVar, zzakVarPoll) { // from class: com.google.firebase.iid.zzah
                                private final zzad zzcc;
                                private final zzak zzcd;

                                {
                                    this.zzcc = zzadVar;
                                    this.zzcd = zzakVarPoll;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zzcc.zza(this.zzcd.zzcf);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        String strValueOf = String.valueOf(zzakVarPoll);
                        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 8);
                        sb.append("Sending ");
                        sb.append(strValueOf);
                        Log.d("MessengerIpcClient", sb.toString());
                    }
                    Context context = zzadVar.zzcb.zzx;
                    Messenger messenger = zzadVar.zzbx;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = zzakVarPoll.what;
                    messageObtain.arg1 = zzakVarPoll.zzcf;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", zzakVarPoll.zzab());
                    bundle.putString("pkg", context.getPackageName());
                    bundle.putBundle("data", zzakVarPoll.zzch);
                    messageObtain.setData(bundle);
                    try {
                        zzadVar.zzby.send(messageObtain);
                    } catch (RemoteException e) {
                        zzadVar.zza(2, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        zza(2, "Service disconnected");
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final synchronized void zza(int i, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", strValueOf.length() != 0 ? "Disconnected: ".concat(strValueOf) : new String("Disconnected: "));
        }
        switch (this.state) {
            case 0:
                throw new IllegalStateException();
            case 1:
            case 2:
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.state = 4;
                ConnectionTracker.getInstance().unbindService(this.zzcb.zzx, this);
                zzal zzalVar = new zzal(i, str);
                Iterator<zzak<?>> it = this.zzbz.iterator();
                while (it.hasNext()) {
                    it.next().zza(zzalVar);
                }
                this.zzbz.clear();
                for (int i2 = 0; i2 < this.zzca.size(); i2++) {
                    this.zzca.valueAt(i2).zza(zzalVar);
                }
                this.zzca.clear();
                return;
            case 3:
                this.state = 4;
                return;
            case 4:
                return;
            default:
                int i3 = this.state;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i3);
                throw new IllegalStateException(sb.toString());
        }
    }

    final synchronized void zzz() {
        if (this.state == 2 && this.zzbz.isEmpty() && this.zzca.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.state = 3;
            ConnectionTracker.getInstance().unbindService(this.zzcb.zzx, this);
        }
    }

    final synchronized void zzaa() {
        if (this.state == 1) {
            zza(1, "Timed out while binding");
        }
    }

    final synchronized void zza(int i) {
        zzak<?> zzakVar = this.zzca.get(i);
        if (zzakVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i);
            Log.w("MessengerIpcClient", sb.toString());
            this.zzca.remove(i);
            zzakVar.zza(new zzal(3, "Timed out waiting for response"));
            zzz();
        }
    }
}
