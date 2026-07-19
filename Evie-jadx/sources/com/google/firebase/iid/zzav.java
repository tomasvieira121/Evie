package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAdFetcher;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public final class zzav {
    private static zzav zzcx;

    @GuardedBy("serviceClassNames")
    private final SimpleArrayMap<String, String> zzcy = new SimpleArrayMap<>();
    private Boolean zzcz = null;
    final Queue<Intent> zzda = new ArrayDeque();
    private final Queue<Intent> zzdb = new ArrayDeque();

    public static synchronized zzav zzai() {
        if (zzcx == null) {
            zzcx = new zzav();
        }
        return zzcx;
    }

    private zzav() {
    }

    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(context, i, zza(context, "com.google.firebase.MESSAGING_EVENT", intent), 1073741824);
    }

    public static void zzb(Context context, Intent intent) {
        context.sendBroadcast(zza(context, "com.google.firebase.INSTANCE_ID_EVENT", intent));
    }

    public static void zzc(Context context, Intent intent) {
        context.sendBroadcast(zza(context, "com.google.firebase.MESSAGING_EVENT", intent));
    }

    private static Intent zza(Context context, String str, Intent intent) {
        Intent intent2 = new Intent(context, (Class<?>) FirebaseInstanceIdReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return intent2;
    }

    public final Intent zzaj() {
        return this.zzdb.poll();
    }

    public final int zzb(Context context, String str, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Starting service: ".concat(strValueOf) : new String("Starting service: "));
        }
        switch (str) {
            case "com.google.firebase.INSTANCE_ID_EVENT":
                this.zzda.offer(intent);
                break;
            case "com.google.firebase.MESSAGING_EVENT":
                this.zzdb.offer(intent);
                break;
            default:
                String strValueOf2 = String.valueOf(str);
                Log.w("FirebaseInstanceId", strValueOf2.length() != 0 ? "Unknown service action: ".concat(strValueOf2) : new String("Unknown service action: "));
                return VrmAdFetcher.TIMEOUT;
        }
        Intent intent2 = new Intent(str);
        intent2.setPackage(context.getPackageName());
        return zzd(context, intent2);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    private final int zzd(Context context, Intent intent) {
        String strConcat;
        String strValueOf;
        String str;
        ComponentName componentNameStartService;
        synchronized (this.zzcy) {
            strConcat = this.zzcy.get(intent.getAction());
        }
        if (strConcat == null) {
            ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveInfoResolveService == null || resolveInfoResolveService.serviceInfo == null) {
                Log.e("FirebaseInstanceId", "Failed to resolve target intent service, skipping classname enforcement");
            } else {
                ServiceInfo serviceInfo = resolveInfoResolveService.serviceInfo;
                if (!context.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
                    String str2 = serviceInfo.packageName;
                    String str3 = serviceInfo.name;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 94 + String.valueOf(str3).length());
                    sb.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                    sb.append(str2);
                    sb.append("/");
                    sb.append(str3);
                    Log.e("FirebaseInstanceId", sb.toString());
                } else {
                    strConcat = serviceInfo.name;
                    if (strConcat.startsWith(".")) {
                        String strValueOf2 = String.valueOf(context.getPackageName());
                        String strValueOf3 = String.valueOf(strConcat);
                        strConcat = strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2);
                    }
                    synchronized (this.zzcy) {
                        this.zzcy.put(intent.getAction(), strConcat);
                    }
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        strValueOf = String.valueOf(strConcat);
                        if (strValueOf.length() != 0) {
                            str = "Restricting intent to a specific service: ".concat(strValueOf);
                        } else {
                            str = new String("Restricting intent to a specific service: ");
                        }
                        Log.d("FirebaseInstanceId", str);
                    }
                    intent.setClassName(context.getPackageName(), strConcat);
                }
            }
        } else {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                strValueOf = String.valueOf(strConcat);
                if (strValueOf.length() != 0) {
                    str = "Restricting intent to a specific service: ".concat(strValueOf);
                } else {
                    str = new String("Restricting intent to a specific service: ");
                }
                Log.d("FirebaseInstanceId", str);
            }
            intent.setClassName(context.getPackageName(), strConcat);
        }
        try {
            if (this.zzcz == null) {
                this.zzcz = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
            }
            if (this.zzcz.booleanValue()) {
                componentNameStartService = WakefulBroadcastReceiver.startWakefulService(context, intent);
            } else {
                componentNameStartService = context.startService(intent);
                Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
            }
            if (componentNameStartService != null) {
                return -1;
            }
            Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
            return 404;
        } catch (IllegalStateException e) {
            String strValueOf4 = String.valueOf(e);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf4).length() + 45);
            sb2.append("Failed to start service while in background: ");
            sb2.append(strValueOf4);
            Log.e("FirebaseInstanceId", sb2.toString());
            return 402;
        } catch (SecurityException e2) {
            Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", e2);
            return 401;
        }
    }
}
