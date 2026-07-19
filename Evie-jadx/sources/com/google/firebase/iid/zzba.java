package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzba {
    private final zzaw zzaj;
    private int zzdl = 0;
    private final Map<Integer, TaskCompletionSource<Void>> zzdm = new ArrayMap();

    zzba(zzaw zzawVar) {
        this.zzaj = zzawVar;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final synchronized boolean zzaq() {
        return zzar() != null;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final boolean zzc(FirebaseInstanceId firebaseInstanceId) {
        TaskCompletionSource<Void> taskCompletionSourceRemove;
        while (true) {
            synchronized (this) {
                String strZzar = zzar();
                if (strZzar == null) {
                    if (FirebaseInstanceId.zzl()) {
                        Log.d("FirebaseInstanceId", "topic sync succeeded");
                    }
                    return true;
                }
                if (!zza(firebaseInstanceId, strZzar)) {
                    return false;
                }
                synchronized (this) {
                    taskCompletionSourceRemove = this.zzdm.remove(Integer.valueOf(this.zzdl));
                    zzk(strZzar);
                    this.zzdl++;
                }
                if (taskCompletionSourceRemove != null) {
                    taskCompletionSourceRemove.setResult(null);
                }
            }
        }
    }

    private final String zzar() {
        String strZzak;
        synchronized (this.zzaj) {
            strZzak = this.zzaj.zzak();
        }
        if (TextUtils.isEmpty(strZzak)) {
            return null;
        }
        String[] strArrSplit = strZzak.split(",");
        if (strArrSplit.length <= 1 || TextUtils.isEmpty(strArrSplit[1])) {
            return null;
        }
        return strArrSplit[1];
    }

    private final synchronized boolean zzk(String str) {
        synchronized (this.zzaj) {
            String strZzak = this.zzaj.zzak();
            String strValueOf = String.valueOf(",");
            String strValueOf2 = String.valueOf(str);
            if (!strZzak.startsWith(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf))) {
                return false;
            }
            String strValueOf3 = String.valueOf(",");
            String strValueOf4 = String.valueOf(str);
            this.zzaj.zzf(strZzak.substring((strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3)).length()));
            return true;
        }
    }

    private static boolean zza(FirebaseInstanceId firebaseInstanceId, String str) {
        String[] strArrSplit = str.split("!");
        if (strArrSplit.length == 2) {
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            try {
                switch (str2) {
                    case "S":
                        firebaseInstanceId.zzb(str3);
                        if (FirebaseInstanceId.zzl()) {
                            Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                            break;
                        }
                        break;
                    case "U":
                        firebaseInstanceId.zzc(str3);
                        if (FirebaseInstanceId.zzl()) {
                            Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                            break;
                        }
                        break;
                    default:
                        break;
                }
            } catch (IOException e) {
                String strValueOf = String.valueOf(e.getMessage());
                Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Topic sync failed: ".concat(strValueOf) : new String("Topic sync failed: "));
                return false;
            }
        }
        return true;
    }
}
