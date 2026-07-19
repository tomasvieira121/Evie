package com.google.firebase.components;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes.dex */
final class zzd implements zze<Context> {
    private zzd() {
    }

    /* synthetic */ zzd(byte b) {
        this();
    }

    @Override // com.google.firebase.components.zze
    public final /* synthetic */ List zza(Context context) {
        Bundle bundleZza2 = zza2(context);
        if (bundleZza2 == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : bundleZza2.keySet()) {
            if ("com.google.firebase.components.ComponentRegistrar".equals(bundleZza2.get(str)) && str.startsWith("com.google.firebase.components:")) {
                arrayList.add(str.substring(31));
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: zza, reason: avoid collision after fix types in other method */
    private static Bundle zza2(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
                return null;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), 128);
            if (serviceInfo == null) {
                Log.w("ComponentDiscovery", "ComponentDiscoveryService has no service info.");
                return null;
            }
            return serviceInfo.metaData;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("ComponentDiscovery", "Application info not found.");
            return null;
        }
    }
}
