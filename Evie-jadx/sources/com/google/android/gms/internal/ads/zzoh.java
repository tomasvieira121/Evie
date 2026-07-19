package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public final class zzoh implements zzbfy {
    private CustomTabsSession zzbgw;
    private CustomTabsClient zzbgx;
    private CustomTabsServiceConnection zzbgy;
    private zzoi zzbgz;

    public static boolean zzh(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
            for (int i = 0; i < listQueryIntentActivities.size(); i++) {
                if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i).activityInfo.name)) {
                    return resolveInfoResolveActivity.activityInfo.packageName.equals(zzbfw.zzbn(context));
                }
            }
        }
        return false;
    }

    public final boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        CustomTabsClient customTabsClient = this.zzbgx;
        if (customTabsClient == null) {
            return false;
        }
        if (customTabsClient == null) {
            this.zzbgw = null;
        } else if (this.zzbgw == null) {
            this.zzbgw = customTabsClient.newSession(null);
        }
        CustomTabsSession customTabsSession = this.zzbgw;
        if (customTabsSession == null) {
            return false;
        }
        return customTabsSession.mayLaunchUrl(uri, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final void zza(CustomTabsClient customTabsClient) {
        this.zzbgx = customTabsClient;
        this.zzbgx.warmup(0L);
        zzoi zzoiVar = this.zzbgz;
        if (zzoiVar != null) {
            zzoiVar.zzjp();
        }
    }

    public final void zza(zzoi zzoiVar) {
        this.zzbgz = zzoiVar;
    }

    public final void zzc(Activity activity) {
        CustomTabsServiceConnection customTabsServiceConnection = this.zzbgy;
        if (customTabsServiceConnection == null) {
            return;
        }
        activity.unbindService(customTabsServiceConnection);
        this.zzbgx = null;
        this.zzbgw = null;
        this.zzbgy = null;
    }

    public final void zzd(Activity activity) {
        String strZzbn;
        if (this.zzbgx == null && (strZzbn = zzbfw.zzbn(activity)) != null) {
            this.zzbgy = new zzbfx(this);
            CustomTabsClient.bindCustomTabsService(activity, strZzbn, this.zzbgy);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final void zzjo() {
        this.zzbgx = null;
        this.zzbgw = null;
        zzoi zzoiVar = this.zzbgz;
        if (zzoiVar != null) {
            zzoiVar.zzjq();
        }
    }
}
