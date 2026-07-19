package com.google.android.gms.ads.internal.gmsg;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.zzbv;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzci;
import com.google.android.gms.internal.ads.zzkb;
import com.google.android.gms.internal.ads.zznk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzae {
    private final Context mContext;
    private final View mView;
    private final zzci zzbne;

    public zzae(Context context, zzci zzciVar, View view) {
        this.mContext = context;
        this.zzbne = zzciVar;
        this.mView = view;
    }

    private static Intent zza(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        return intent2;
    }

    private final ResolveInfo zza(Intent intent, ArrayList<ResolveInfo> arrayList) {
        ResolveInfo resolveInfo = null;
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
                for (int i = 0; i < listQueryIntentActivities.size(); i++) {
                    ResolveInfo resolveInfo2 = listQueryIntentActivities.get(i);
                    if (resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                        resolveInfo = resolveInfoResolveActivity;
                        break;
                    }
                }
            }
            arrayList.addAll(listQueryIntentActivities);
        } catch (Throwable th) {
            zzbv.zzeo().zza(th, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
        return resolveInfo;
    }

    private final ResolveInfo zzb(Intent intent) {
        return zza(intent, new ArrayList<>());
    }

    private static Intent zze(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction("android.intent.action.VIEW");
        return intent;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0064  */
    /* JADX WARN: Code duplicated, block: B:21:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:26:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:31:0x00cf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:41:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:44:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:49:0x0116  */
    /* JADX WARN: Code duplicated, block: B:51:0x0121 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x010f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:? A[LOOP:1: B:42:0x00f7->B:55:?, LOOP_END, SYNTHETIC] */
    public final Intent zzi(Map<String, String> map) {
        boolean z;
        Uri.Builder builderBuildUpon;
        String str;
        ArrayList<ResolveInfo> arrayList;
        Intent intentZze;
        Intent intentZze2;
        ResolveInfo resolveInfoZza;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ArrayList<ResolveInfo> arrayList2;
        int size;
        int i;
        ResolveInfo resolveInfo;
        Iterator<ActivityManager.RunningAppProcessInfo> it;
        ResolveInfo resolveInfoZzb;
        Intent intentZza;
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        String str2 = map.get("u");
        Uri uriBuild = null;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        Uri uri = Uri.parse(zzad.zza(this.mContext, this.zzbne, str2, this.mView, null));
        boolean z2 = Boolean.parseBoolean(map.get("use_first_package"));
        boolean z3 = Boolean.parseBoolean(map.get("use_running_process"));
        if (Boolean.parseBoolean(map.get("use_custom_tabs"))) {
            z = true;
        } else if (((Boolean) zzkb.zzik().zzd(zznk.zzbdz)).booleanValue()) {
            z = true;
        } else {
            z = false;
        }
        if (!"http".equalsIgnoreCase(uri.getScheme())) {
            if ("https".equalsIgnoreCase(uri.getScheme())) {
                builderBuildUpon = uri.buildUpon();
                str = "http";
            }
            arrayList = new ArrayList<>();
            intentZze = zze(uri);
            intentZze2 = zze(uriBuild);
            if (z) {
                zzbv.zzek();
                zzakk.zzb(this.mContext, intentZze);
                zzbv.zzek();
                zzakk.zzb(this.mContext, intentZze2);
            }
            resolveInfoZza = zza(intentZze, arrayList);
            if (resolveInfoZza != null) {
                return zza(intentZze, resolveInfoZza);
            }
            if (intentZze2 != null && (resolveInfoZzb = zzb(intentZze2)) != null) {
                intentZza = zza(intentZze, resolveInfoZzb);
                if (zzb(intentZza) != null) {
                    return intentZza;
                }
            }
            if (arrayList.size() == 0) {
                return intentZze;
            }
            if (z3 && activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                arrayList2 = arrayList;
                size = arrayList2.size();
                i = 0;
                while (i < size) {
                    ResolveInfo resolveInfo2 = arrayList2.get(i);
                    i++;
                    resolveInfo = resolveInfo2;
                    it = runningAppProcesses.iterator();
                    while (it.hasNext()) {
                        if (it.next().processName.equals(resolveInfo.activityInfo.packageName)) {
                            return zza(intentZze, resolveInfo);
                        }
                    }
                }
            }
            if (z2) {
                return zza(intentZze, arrayList.get(0));
            }
            return intentZze;
        }
        builderBuildUpon = uri.buildUpon();
        str = "https";
        uriBuild = builderBuildUpon.scheme(str).build();
        arrayList = new ArrayList<>();
        intentZze = zze(uri);
        intentZze2 = zze(uriBuild);
        if (z) {
            zzbv.zzek();
            zzakk.zzb(this.mContext, intentZze);
            zzbv.zzek();
            zzakk.zzb(this.mContext, intentZze2);
        }
        resolveInfoZza = zza(intentZze, arrayList);
        if (resolveInfoZza != null) {
            return zza(intentZze, resolveInfoZza);
        }
        if (intentZze2 != null) {
            intentZza = zza(intentZze, resolveInfoZzb);
            if (zzb(intentZza) != null) {
                return intentZza;
            }
        }
        if (arrayList.size() == 0) {
            return intentZze;
        }
        if (z3) {
            arrayList2 = arrayList;
            size = arrayList2.size();
            i = 0;
            while (i < size) {
                ResolveInfo resolveInfo3 = arrayList2.get(i);
                i++;
                resolveInfo = resolveInfo3;
                it = runningAppProcesses.iterator();
                while (it.hasNext()) {
                    if (it.next().processName.equals(resolveInfo.activityInfo.packageName)) {
                        return zza(intentZze, resolveInfo);
                    }
                }
            }
        }
        if (z2) {
            return zza(intentZze, arrayList.get(0));
        }
        return intentZze;
    }
}
