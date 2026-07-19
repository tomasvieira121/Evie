package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzc {
    private static final Set<String> zzbsm = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));
    private static final List<String> zzbsn = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd", "app_open");
    private static final List<String> zzbso = Arrays.asList("auto", "app", "am");
    private static final List<String> zzbsp = Arrays.asList("_r", "_dbg");
    private static final List<String> zzbsq = Arrays.asList((String[]) ArrayUtils.concat(AppMeasurement.UserProperty.zzado, AppMeasurement.UserProperty.zzadp));
    private static final List<String> zzbsr = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static boolean zzfo(String str) {
        return !zzbso.contains(str);
    }

    public static boolean zza(String str, Bundle bundle) {
        if (zzbsn.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        Iterator<String> it = zzbsp.iterator();
        while (it.hasNext()) {
            if (bundle.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean zzy(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (zzbsq.contains(str2)) {
            return false;
        }
        Iterator<String> it = zzbsr.iterator();
        while (it.hasNext()) {
            if (str2.matches(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0061  */
    public static boolean zzb(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!zzfo(str) || bundle == null) {
            return false;
        }
        Iterator<String> it = zzbsp.iterator();
        while (it.hasNext()) {
            if (bundle.containsKey(it.next())) {
                return false;
            }
        }
        switch (str) {
            case "fcm":
                bundle.putString("_cis", "fcm_integration");
                return true;
            case "fdl":
                bundle.putString("_cis", "fdl_integration");
                return true;
            case "fiam":
                bundle.putString("_cis", "fiam_integration");
                return true;
            default:
                return false;
        }
    }
}
