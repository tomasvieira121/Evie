package com.google.android.youtube.player.internal;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.z */
/* JADX INFO: loaded from: classes.dex */
public final class C0932z {

    /* JADX INFO: renamed from: a */
    private static final Uri f499a = Uri.parse("http://play.google.com/store/apps/details");

    /* JADX INFO: renamed from: b */
    private static final String[] f500b = {"com.google.android.youtube", "com.google.android.youtube.tv", "com.google.android.youtube.googletv", "com.google.android.gms", null};

    /* JADX INFO: renamed from: a */
    public static String m530a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        for (String str : f500b) {
            ResolveInfo resolveInfoResolveService = packageManager.resolveService(new Intent("com.google.android.youtube.api.service.START").setPackage(str), 0);
            if (resolveInfoResolveService != null && resolveInfoResolveService.serviceInfo != null && resolveInfoResolveService.serviceInfo.packageName != null) {
                return resolveInfoResolveService.serviceInfo.packageName;
            }
        }
        if (packageManager.hasSystemFeature("android.software.leanback")) {
            return "com.google.android.youtube.tv";
        }
        return packageManager.hasSystemFeature("com.google.android.tv") ? "com.google.android.youtube.googletv" : "com.google.android.youtube";
    }

    /* JADX INFO: renamed from: a */
    public static boolean m531a(Context context, String str) {
        try {
            Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(str);
            if (str.equals("com.google.android.youtube.googletvdev")) {
                str = "com.google.android.youtube.googletv";
            }
            int identifier = resourcesForApplication.getIdentifier("youtube_api_version_code", "integer", str);
            return identifier == 0 || 12 > resourcesForApplication.getInteger(identifier) / 100;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    /* JADX INFO: renamed from: b */
    public static Context m532b(Context context) {
        try {
            return context.createPackageContext(m530a(context), 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static int m533c(Context context) {
        Context contextM532b = m532b(context);
        int identifier = contextM532b != null ? contextM532b.getResources().getIdentifier("clientTheme", "style", m530a(context)) : 0;
        if (identifier != 0) {
            return identifier;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return R.style.Theme.DeviceDefault;
        }
        return Build.VERSION.SDK_INT >= 11 ? R.style.Theme.Holo : R.style.Theme;
    }

    /* JADX INFO: renamed from: d */
    public static String m534d(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalStateException("Cannot retrieve calling Context's PackageInfo", e);
        }
    }
}
