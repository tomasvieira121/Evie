package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzalk {
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private String zzcsm = "";

    @GuardedBy("mLock")
    private String zzcsn = "";

    @GuardedBy("mLock")
    private boolean zzcso = false;
    private String zzcsp = "";

    private final void zza(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzakk.zzcrm.post(new zzall(this, context, str, z, z2));
        } else {
            zzakb.zzdj("Can not create dialog without Activity Context");
        }
    }

    private final String zzaz(Context context) {
        String str;
        synchronized (this.mLock) {
            if (TextUtils.isEmpty(this.zzcsm)) {
                com.google.android.gms.ads.internal.zzbv.zzek();
                this.zzcsm = zzakk.zzn(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.zzcsm)) {
                    com.google.android.gms.ads.internal.zzbv.zzek();
                    this.zzcsm = zzakk.zzrh();
                    com.google.android.gms.ads.internal.zzbv.zzek();
                    zzakk.zze(context, "debug_signals_id.txt", this.zzcsm);
                }
            }
            str = this.zzcsm;
        }
        return str;
    }

    private final Uri zzc(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        builderBuildUpon.appendQueryParameter("linkedDeviceId", zzaz(context));
        builderBuildUpon.appendQueryParameter("adSlotPath", str2);
        builderBuildUpon.appendQueryParameter("afmaVersion", str3);
        return builderBuildUpon.build();
    }

    private final boolean zzh(Context context, String str, String str2) {
        String strZzj = zzj(context, zzc(context, (String) zzkb.zzik().zzd(zznk.zzbeg), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzj)) {
            zzakb.zzck("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strZzj.trim());
            String strOptString = jSONObject.optString("gct");
            this.zzcsp = jSONObject.optString("status");
            synchronized (this.mLock) {
                this.zzcsn = strOptString;
            }
            return true;
        } catch (JSONException e) {
            zzakb.zzc("Fail to get in app preview response json.", e);
            return false;
        }
    }

    private final boolean zzi(Context context, String str, String str2) {
        String strZzj = zzj(context, zzc(context, (String) zzkb.zzik().zzd(zznk.zzbeh), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzj)) {
            zzakb.zzck("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = "1".equals(new JSONObject(strZzj.trim()).optString("debug_mode"));
            synchronized (this.mLock) {
                this.zzcso = zEquals;
            }
            return zEquals;
        } catch (JSONException e) {
            zzakb.zzc("Fail to get debug mode response json.", e);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0072 A[PHI: r0 r1 r4
      0x0072: PHI (r0v3 'e' java.lang.Throwable) = (r0v2 'e' java.lang.Throwable), (r0v5 'e' java.lang.Throwable) binds: [B:18:0x0070, B:13:0x005c] A[DONT_GENERATE, DONT_INLINE]
      0x0072: PHI (r1v2 java.lang.String) = (r1v1 java.lang.String), (r1v3 java.lang.String) binds: [B:18:0x0070, B:13:0x005c] A[DONT_GENERATE, DONT_INLINE]
      0x0072: PHI (r4v7 java.lang.String) = (r4v5 java.lang.String), (r4v10 java.lang.String) binds: [B:18:0x0070, B:13:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    private static String zzj(Context context, String str, String str2) {
        String str3;
        String strValueOf;
        String str4;
        HashMap map = new HashMap();
        map.put(AbstractSpiCall.HEADER_USER_AGENT, com.google.android.gms.ads.internal.zzbv.zzek().zzm(context, str2));
        zzanz<String> zzanzVarZzc = new zzalt(context).zzc(str, map);
        try {
            return zzanzVarZzc.get(((Integer) zzkb.zzik().zzd(zznk.zzbej)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            e = e;
            str3 = "Interrupted while retriving a response from: ";
            strValueOf = String.valueOf(str);
            if (strValueOf.length() != 0) {
                str4 = str3.concat(strValueOf);
            } else {
                str4 = new String("Interrupted while retriving a response from: ");
            }
            zzakb.zzb(str4, e);
            zzanzVarZzc.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            e = e2;
            str3 = "Timeout while retriving a response from: ";
            strValueOf = String.valueOf(str);
            if (strValueOf.length() != 0) {
                str4 = str3.concat(strValueOf);
            } else {
                str4 = new String("Timeout while retriving a response from: ");
            }
            zzakb.zzb(str4, e);
            zzanzVarZzc.cancel(true);
            return null;
        } catch (Exception e3) {
            String strValueOf2 = String.valueOf(str);
            zzakb.zzb(strValueOf2.length() != 0 ? "Error retriving a response from: ".concat(strValueOf2) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }

    private final void zzk(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzbv.zzek();
        zzakk.zza(context, zzc(context, (String) zzkb.zzik().zzd(zznk.zzbef), str, str2));
    }

    public final void zza(Context context, String str, String str2, @Nullable String str3) {
        boolean zZzrx = zzrx();
        if (!zzi(context, str, str2)) {
            zzk(context, str, str2);
            return;
        }
        if (!zZzrx && !TextUtils.isEmpty(str3)) {
            zzb(context, str2, str3, str);
        }
        zzakb.zzck("Device is linked for debug signals.");
        zza(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final void zzb(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = zzc(context, (String) zzkb.zzik().zzd(zznk.zzbei), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzbv.zzek();
        zzakk.zzd(context, str, builderBuildUpon.build().toString());
    }

    public final void zzg(Context context, String str, String str2) {
        if (!zzh(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(this.zzcsp)) {
            zzakb.zzck("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.zzcsp)) {
            zzakb.zzck("The app is not linked for creative preview.");
            zzk(context, str, str2);
        } else if ("0".equals(this.zzcsp)) {
            zzakb.zzck("Device is linked for in app preview.");
            zza(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final String zzrw() {
        String str;
        synchronized (this.mLock) {
            str = this.zzcsn;
        }
        return str;
    }

    public final boolean zzrx() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzcso;
        }
        return z;
    }
}
