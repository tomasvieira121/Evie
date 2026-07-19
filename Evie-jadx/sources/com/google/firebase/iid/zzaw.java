package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzaw {
    private final SharedPreferences zzdc;
    private final zzy zzdd;
    private final Map<String, zzz> zzde;
    private final Context zzx;

    public zzaw(Context context) {
        this(context, new zzy());
    }

    private zzaw(Context context, zzy zzyVar) {
        this.zzde = new ArrayMap();
        this.zzx = context;
        this.zzdc = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.zzdd = zzyVar;
        File file = new File(ContextCompat.getNoBackupFilesDir(this.zzx), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            Log.i("FirebaseInstanceId", "App restored, clearing state");
            zzal();
            FirebaseInstanceId.getInstance().zzm();
        } catch (IOException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e.getMessage());
                Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(strValueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    public final synchronized String zzak() {
        return this.zzdc.getString("topic_operaion_queue", "");
    }

    public final synchronized void zzf(String str) {
        this.zzdc.edit().putString("topic_operaion_queue", str).apply();
    }

    private final synchronized boolean isEmpty() {
        return this.zzdc.getAll().isEmpty();
    }

    private static String zza(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    static String zzd(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    public final synchronized void zzal() {
        this.zzde.clear();
        zzy.zza(this.zzx);
        this.zzdc.edit().clear().commit();
    }

    public final synchronized zzax zzb(String str, String str2, String str3) {
        return zzax.zzi(this.zzdc.getString(zza(str, str2, str3), null));
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        String strZza = zzax.zza(str4, str5, System.currentTimeMillis());
        if (strZza == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.zzdc.edit();
        editorEdit.putString(zza(str, str2, str3), strZza);
        editorEdit.commit();
    }

    public final synchronized zzz zzg(String str) {
        zzz zzzVarZzc;
        zzz zzzVar = this.zzde.get(str);
        if (zzzVar != null) {
            return zzzVar;
        }
        try {
            zzzVarZzc = this.zzdd.zzb(this.zzx, str);
        } catch (zzaa unused) {
            Log.w("FirebaseInstanceId", "Stored data is corrupt, generating new identity");
            FirebaseInstanceId.getInstance().zzm();
            zzzVarZzc = this.zzdd.zzc(this.zzx, str);
        }
        this.zzde.put(str, zzzVarZzc);
        return zzzVarZzc;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final synchronized void zzh(String str) {
        String strConcat = String.valueOf(str).concat("|T|");
        SharedPreferences.Editor editorEdit = this.zzdc.edit();
        for (String str2 : this.zzdc.getAll().keySet()) {
            if (str2.startsWith(strConcat)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.commit();
    }
}
