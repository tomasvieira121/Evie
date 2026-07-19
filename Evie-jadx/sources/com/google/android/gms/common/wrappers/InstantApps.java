package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: loaded from: classes.dex */
public class InstantApps {
    private static Context zzht;
    private static Boolean zzhu;

    public static synchronized boolean isInstantApp(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (zzht != null && zzhu != null && zzht == applicationContext) {
            return zzhu.booleanValue();
        }
        zzhu = null;
        if (PlatformVersion.isAtLeastO()) {
            zzhu = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
        } else {
            try {
                context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                zzhu = true;
            } catch (ClassNotFoundException unused) {
                zzhu = false;
            }
        }
        zzht = applicationContext;
        return zzhu.booleanValue();
    }
}
