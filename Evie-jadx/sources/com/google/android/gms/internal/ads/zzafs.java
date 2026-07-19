package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzafs {
    private static final SimpleDateFormat zzcho = new SimpleDateFormat("yyyyMMdd", Locale.US);

    /* JADX WARN: Code duplicated, block: B:35:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00de A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00e4 A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ee A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f2 A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:48:0x0101 A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0105 A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0112  */
    /* JADX WARN: Code duplicated, block: B:54:0x0114 A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0118 A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x011f  */
    /* JADX WARN: Code duplicated, block: B:60:0x0129  */
    /* JADX WARN: Code duplicated, block: B:61:0x012b A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x012f A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0136  */
    /* JADX WARN: Code duplicated, block: B:66:0x013a A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x013e A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x014a A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x014e A[PHI: r18
      0x014e: PHI (r18v2 int) = (r18v1 int), (r18v4 int) binds: [B:65:0x0138, B:70:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:75:0x015e A[Catch: JSONException -> 0x026a, TryCatch #0 {JSONException -> 0x026a, blocks: (B:3:0x0003, B:5:0x0026, B:9:0x002f, B:11:0x0037, B:13:0x003f, B:15:0x0047, B:17:0x004f, B:18:0x0053, B:20:0x0069, B:22:0x007c, B:24:0x008b, B:30:0x00a9, B:32:0x00af, B:34:0x00b5, B:37:0x00de, B:39:0x00e4, B:44:0x00f2, B:45:0x00f7, B:50:0x0105, B:51:0x010a, B:56:0x0118, B:58:0x0121, B:63:0x012f, B:66:0x013a, B:68:0x013e, B:69:0x0142, B:71:0x014a, B:73:0x0150, B:75:0x015e, B:77:0x0169, B:61:0x012b, B:54:0x0114, B:48:0x0101, B:42:0x00ee, B:26:0x0096, B:28:0x009e), top: B:86:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0167  */
    public static zzaej zza(Context context, zzaef zzaefVar, String str) {
        int i;
        int iZzrl;
        String str2;
        String str3;
        zzaej zzaejVarZza;
        long j;
        JSONArray jSONArrayOptJSONArray;
        List<String> listZza;
        JSONArray jSONArrayOptJSONArray2;
        List<String> listZza2;
        JSONArray jSONArrayOptJSONArray3;
        List<String> list;
        List<String> listZza3;
        JSONArray jSONArrayOptJSONArray4;
        List<String> list2;
        List<String> listZza4;
        long j2;
        boolean zOptBoolean;
        String strOptString;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString2 = jSONObject.optString("ad_base_url", null);
            String strOptString3 = jSONObject.optString("ad_url", null);
            String strOptString4 = jSONObject.optString("ad_size", null);
            String strOptString5 = jSONObject.optString("ad_slot_size", strOptString4);
            boolean z = (zzaefVar == null || zzaefVar.zzcdb == 0) ? false : true;
            String strOptString6 = jSONObject.optString("ad_json", null);
            if (strOptString6 == null) {
                strOptString6 = jSONObject.optString("ad_html", null);
            }
            if (strOptString6 == null) {
                strOptString6 = jSONObject.optString("body", null);
            }
            if (strOptString6 == null && jSONObject.has("ads")) {
                strOptString6 = jSONObject.toString();
            }
            String strOptString7 = jSONObject.optString("debug_dialog", null);
            String strOptString8 = jSONObject.optString("debug_signals", null);
            long j3 = jSONObject.has("interstitial_timeout") ? (long) (jSONObject.getDouble("interstitial_timeout") * 1000.0d) : -1L;
            String strOptString9 = jSONObject.optString("orientation", null);
            if (!"portrait".equals(strOptString9)) {
                if ("landscape".equals(strOptString9)) {
                    iZzrl = com.google.android.gms.ads.internal.zzbv.zzem().zzrl();
                } else {
                    i = -1;
                }
                if (TextUtils.isEmpty(strOptString6) || TextUtils.isEmpty(strOptString3)) {
                    str2 = strOptString2;
                    str3 = strOptString6;
                    zzaejVarZza = null;
                    j = -1;
                } else {
                    zzaejVarZza = zzafn.zza(zzaefVar, context, zzaefVar.zzacr.zzcw, strOptString3, null, null, null, null, null);
                    String str4 = zzaejVarZza.zzbyq;
                    String str5 = zzaejVarZza.zzceo;
                    j = zzaejVarZza.zzceu;
                    str3 = str5;
                    str2 = str4;
                }
                if (str3 == null) {
                    return new zzaej(0);
                }
                jSONArrayOptJSONArray = jSONObject.optJSONArray("click_urls");
                if (zzaejVarZza == null) {
                    listZza = null;
                } else {
                    listZza = zzaejVarZza.zzbsn;
                }
                if (jSONArrayOptJSONArray != null) {
                    listZza = zza(jSONArrayOptJSONArray, listZza);
                }
                jSONArrayOptJSONArray2 = jSONObject.optJSONArray("impression_urls");
                if (zzaejVarZza == null) {
                    listZza2 = null;
                } else {
                    listZza2 = zzaejVarZza.zzbso;
                }
                if (jSONArrayOptJSONArray2 != null) {
                    listZza2 = zza(jSONArrayOptJSONArray2, listZza2);
                }
                jSONArrayOptJSONArray3 = jSONObject.optJSONArray("downloaded_impression_urls");
                if (zzaejVarZza == null) {
                    list = null;
                } else {
                    list = zzaejVarZza.zzbsp;
                }
                if (jSONArrayOptJSONArray3 != null) {
                    listZza3 = zza(jSONArrayOptJSONArray3, list);
                } else {
                    listZza3 = list;
                }
                jSONArrayOptJSONArray4 = jSONObject.optJSONArray("manual_impression_urls");
                if (zzaejVarZza == null) {
                    list2 = null;
                } else {
                    list2 = zzaejVarZza.zzces;
                }
                if (jSONArrayOptJSONArray4 != null) {
                    listZza4 = zza(jSONArrayOptJSONArray4, list2);
                } else {
                    listZza4 = list2;
                }
                if (zzaejVarZza == null) {
                    j2 = j3;
                } else {
                    if (zzaejVarZza.orientation != -1) {
                        i = zzaejVarZza.orientation;
                    }
                    if (zzaejVarZza.zzcep > 0) {
                        j2 = zzaejVarZza.zzcep;
                    } else {
                        j2 = j3;
                    }
                }
                String strOptString10 = jSONObject.optString("active_view");
                zOptBoolean = jSONObject.optBoolean("ad_is_javascript", false);
                if (zOptBoolean) {
                    strOptString = jSONObject.optString("ad_passback_url", null);
                } else {
                    strOptString = null;
                }
                boolean zOptBoolean2 = jSONObject.optBoolean("mediation", false);
                boolean zOptBoolean3 = jSONObject.optBoolean("custom_render_allowed", false);
                boolean zOptBoolean4 = jSONObject.optBoolean("content_url_opted_out", true);
                boolean zOptBoolean5 = jSONObject.optBoolean("content_vertical_opted_out", true);
                boolean zOptBoolean6 = jSONObject.optBoolean("prefetch", false);
                long jOptLong = jSONObject.optLong("refresh_interval_milliseconds", -1L);
                long jOptLong2 = jSONObject.optLong("mediation_config_cache_time_milliseconds", -1L);
                String strOptString11 = jSONObject.optString("gws_query_id", "");
                boolean zEquals = "height".equals(jSONObject.optString("fluid", ""));
                boolean zOptBoolean7 = jSONObject.optBoolean("native_express", false);
                List<String> listZza5 = zza(jSONObject.optJSONArray("video_start_urls"), (List<String>) null);
                List<String> listZza6 = zza(jSONObject.optJSONArray("video_complete_urls"), (List<String>) null);
                return new zzaej(zzaefVar, str2, str3, listZza, listZza2, j2, zOptBoolean2, jOptLong2, listZza4, jOptLong, i, strOptString4, j, strOptString7, zOptBoolean, strOptString, strOptString10, zOptBoolean3, z, zzaefVar.zzcdd, zOptBoolean4, zOptBoolean6, strOptString11, zEquals, zOptBoolean7, zzaig.zza(jSONObject.optJSONArray("rewards")), listZza5, listZza6, jSONObject.optBoolean("use_displayed_impression", false), zzael.zzl(jSONObject.optJSONObject("auto_protection_configuration")), zzaefVar.zzcdr, jSONObject.optString("set_cookie", ""), zza(jSONObject.optJSONArray("remote_ping_urls"), (List<String>) null), jSONObject.optBoolean("render_in_browser", zzaefVar.zzbss), strOptString5, zzaiq.zzo(jSONObject.optJSONObject("safe_browsing")), strOptString8, zOptBoolean5, zzaefVar.zzced, jSONObject.optBoolean("custom_close_blocked"), 0, jSONObject.optBoolean("enable_omid", false), listZza3, jSONObject.optBoolean("disable_closable_area", false), jSONObject.optString("omid_settings", null));
            }
            iZzrl = com.google.android.gms.ads.internal.zzbv.zzem().zzrm();
            i = iZzrl;
            if (TextUtils.isEmpty(strOptString6)) {
                str2 = strOptString2;
                str3 = strOptString6;
                zzaejVarZza = null;
                j = -1;
            } else {
                str2 = strOptString2;
                str3 = strOptString6;
                zzaejVarZza = null;
                j = -1;
            }
            if (str3 == null) {
                return new zzaej(0);
            }
            jSONArrayOptJSONArray = jSONObject.optJSONArray("click_urls");
            if (zzaejVarZza == null) {
                listZza = null;
            } else {
                listZza = zzaejVarZza.zzbsn;
            }
            if (jSONArrayOptJSONArray != null) {
                listZza = zza(jSONArrayOptJSONArray, listZza);
            }
            jSONArrayOptJSONArray2 = jSONObject.optJSONArray("impression_urls");
            if (zzaejVarZza == null) {
                listZza2 = null;
            } else {
                listZza2 = zzaejVarZza.zzbso;
            }
            if (jSONArrayOptJSONArray2 != null) {
                listZza2 = zza(jSONArrayOptJSONArray2, listZza2);
            }
            jSONArrayOptJSONArray3 = jSONObject.optJSONArray("downloaded_impression_urls");
            if (zzaejVarZza == null) {
                list = null;
            } else {
                list = zzaejVarZza.zzbsp;
            }
            if (jSONArrayOptJSONArray3 != null) {
                listZza3 = zza(jSONArrayOptJSONArray3, list);
            } else {
                listZza3 = list;
            }
            jSONArrayOptJSONArray4 = jSONObject.optJSONArray("manual_impression_urls");
            if (zzaejVarZza == null) {
                list2 = null;
            } else {
                list2 = zzaejVarZza.zzces;
            }
            if (jSONArrayOptJSONArray4 != null) {
                listZza4 = zza(jSONArrayOptJSONArray4, list2);
            } else {
                listZza4 = list2;
            }
            if (zzaejVarZza == null) {
                j2 = j3;
            } else {
                if (zzaejVarZza.orientation != -1) {
                    i = zzaejVarZza.orientation;
                }
                if (zzaejVarZza.zzcep > 0) {
                    j2 = zzaejVarZza.zzcep;
                } else {
                    j2 = j3;
                }
            }
            String strOptString12 = jSONObject.optString("active_view");
            zOptBoolean = jSONObject.optBoolean("ad_is_javascript", false);
            if (zOptBoolean) {
                strOptString = jSONObject.optString("ad_passback_url", null);
            } else {
                strOptString = null;
            }
            boolean zOptBoolean8 = jSONObject.optBoolean("mediation", false);
            boolean zOptBoolean9 = jSONObject.optBoolean("custom_render_allowed", false);
            boolean zOptBoolean10 = jSONObject.optBoolean("content_url_opted_out", true);
            boolean zOptBoolean11 = jSONObject.optBoolean("content_vertical_opted_out", true);
            boolean zOptBoolean12 = jSONObject.optBoolean("prefetch", false);
            long jOptLong3 = jSONObject.optLong("refresh_interval_milliseconds", -1L);
            long jOptLong4 = jSONObject.optLong("mediation_config_cache_time_milliseconds", -1L);
            String strOptString13 = jSONObject.optString("gws_query_id", "");
            boolean zEquals2 = "height".equals(jSONObject.optString("fluid", ""));
            boolean zOptBoolean13 = jSONObject.optBoolean("native_express", false);
            List<String> listZza7 = zza(jSONObject.optJSONArray("video_start_urls"), (List<String>) null);
            List<String> listZza8 = zza(jSONObject.optJSONArray("video_complete_urls"), (List<String>) null);
            return new zzaej(zzaefVar, str2, str3, listZza, listZza2, j2, zOptBoolean8, jOptLong4, listZza4, jOptLong3, i, strOptString4, j, strOptString7, zOptBoolean, strOptString, strOptString12, zOptBoolean9, z, zzaefVar.zzcdd, zOptBoolean10, zOptBoolean12, strOptString13, zEquals2, zOptBoolean13, zzaig.zza(jSONObject.optJSONArray("rewards")), listZza7, listZza8, jSONObject.optBoolean("use_displayed_impression", false), zzael.zzl(jSONObject.optJSONObject("auto_protection_configuration")), zzaefVar.zzcdr, jSONObject.optString("set_cookie", ""), zza(jSONObject.optJSONArray("remote_ping_urls"), (List<String>) null), jSONObject.optBoolean("render_in_browser", zzaefVar.zzbss), strOptString5, zzaiq.zzo(jSONObject.optJSONObject("safe_browsing")), strOptString8, zOptBoolean11, zzaefVar.zzced, jSONObject.optBoolean("custom_close_blocked"), 0, jSONObject.optBoolean("enable_omid", false), listZza3, jSONObject.optBoolean("disable_closable_area", false), jSONObject.optString("omid_settings", null));
        } catch (JSONException e) {
            String strValueOf = String.valueOf(e.getMessage());
            zzakb.zzdk(strValueOf.length() != 0 ? "Could not parse the inline ad response: ".concat(strValueOf) : new String("Could not parse the inline ad response: "));
            return new zzaej(0);
        }
    }

    private static List<String> zza(JSONArray jSONArray, List<String> list) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list.add(jSONArray.getString(i));
        }
        return list;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0233  */
    /* JADX WARN: Code duplicated, block: B:352:0x092b  */
    /* JADX WARN: Code duplicated, block: B:353:0x0930  */
    public static JSONObject zza(Context context, zzafl zzaflVar) {
        String strValueOf;
        String str;
        int i;
        String str2;
        Integer numValueOf;
        String str3;
        Object objZzd;
        String id;
        boolean zIsLimitAdTrackingEnabled;
        String str4;
        String str5;
        String str6;
        boolean z;
        String str7;
        int i2;
        String str8;
        Object obj;
        zzaef zzaefVar = zzaflVar.zzcgs;
        Location location = zzaflVar.zzaqe;
        zzaga zzagaVar = zzaflVar.zzcgt;
        Bundle bundle = zzaflVar.zzcdc;
        JSONObject jSONObject = zzaflVar.zzcgu;
        try {
            HashMap map = new HashMap();
            map.put("extra_caps", zzkb.zzik().zzd(zznk.zzbbk));
            if (zzaflVar.zzcdj.size() > 0) {
                map.put("eid", TextUtils.join(",", zzaflVar.zzcdj));
            }
            if (zzaefVar.zzccu != null) {
                map.put("ad_pos", zzaefVar.zzccu);
            }
            zzjj zzjjVar = zzaefVar.zzccv;
            String strZzqn = zzajw.zzqn();
            if (strZzqn != null) {
                map.put("abf", strZzqn);
            }
            if (zzjjVar.zzapw != -1) {
                map.put("cust_age", zzcho.format(new Date(zzjjVar.zzapw)));
            }
            if (zzjjVar.extras != null) {
                map.put("extras", zzjjVar.extras);
            }
            int i3 = -1;
            if (zzjjVar.zzapx != -1) {
                map.put("cust_gender", Integer.valueOf(zzjjVar.zzapx));
            }
            if (zzjjVar.zzapy != null) {
                map.put("kw", zzjjVar.zzapy);
            }
            if (zzjjVar.zzaqa != -1) {
                map.put("tag_for_child_directed_treatment", Integer.valueOf(zzjjVar.zzaqa));
            }
            if (zzjjVar.zzapz) {
                if (((Boolean) zzkb.zzik().zzd(zznk.zzbfp)).booleanValue()) {
                    str8 = "test_request";
                    obj = true;
                } else {
                    str8 = "adtest";
                    obj = "on";
                }
                map.put(str8, obj);
            }
            if (zzjjVar.versionCode >= 2) {
                if (zzjjVar.zzaqb) {
                    map.put("d_imp_hdr", 1);
                }
                if (!TextUtils.isEmpty(zzjjVar.zzaqc)) {
                    map.put("ppid", zzjjVar.zzaqc);
                }
            }
            if (zzjjVar.versionCode >= 3 && zzjjVar.zzaqf != null) {
                map.put("url", zzjjVar.zzaqf);
            }
            if (zzjjVar.versionCode >= 5) {
                if (zzjjVar.zzaqh != null) {
                    map.put("custom_targeting", zzjjVar.zzaqh);
                }
                if (zzjjVar.zzaqi != null) {
                    map.put("category_exclusions", zzjjVar.zzaqi);
                }
                if (zzjjVar.zzaqj != null) {
                    map.put("request_agent", zzjjVar.zzaqj);
                }
            }
            if (zzjjVar.versionCode >= 6 && zzjjVar.zzaqk != null) {
                map.put("request_pkg", zzjjVar.zzaqk);
            }
            if (zzjjVar.versionCode >= 7) {
                map.put("is_designed_for_families", Boolean.valueOf(zzjjVar.zzaql));
            }
            if (zzaefVar.zzacv.zzard != null) {
                boolean z2 = false;
                boolean z3 = false;
                for (zzjn zzjnVar : zzaefVar.zzacv.zzard) {
                    if (!zzjnVar.zzarf && !z2) {
                        map.put("format", zzjnVar.zzarb);
                        z2 = true;
                    }
                    if (zzjnVar.zzarf && !z3) {
                        map.put("fluid", "height");
                        z3 = true;
                    }
                    if (z2 && z3) {
                        break;
                    }
                }
            } else {
                map.put("format", zzaefVar.zzacv.zzarb);
                if (zzaefVar.zzacv.zzarf) {
                    map.put("fluid", "height");
                }
            }
            if (zzaefVar.zzacv.width == -1) {
                map.put("smart_w", "full");
            }
            if (zzaefVar.zzacv.height == -2) {
                map.put("smart_h", "auto");
            }
            if (zzaefVar.zzacv.zzard != null) {
                StringBuilder sb = new StringBuilder();
                zzjn[] zzjnVarArr = zzaefVar.zzacv.zzard;
                int length = zzjnVarArr.length;
                int i4 = 0;
                boolean z4 = false;
                while (i4 < length) {
                    zzjn zzjnVar2 = zzjnVarArr[i4];
                    if (zzjnVar2.zzarf) {
                        z4 = true;
                    } else {
                        if (sb.length() != 0) {
                            sb.append("|");
                        }
                        sb.append(zzjnVar2.width == i3 ? (int) (zzjnVar2.widthPixels / zzagaVar.zzagu) : zzjnVar2.width);
                        sb.append("x");
                        sb.append(zzjnVar2.height == -2 ? (int) (zzjnVar2.heightPixels / zzagaVar.zzagu) : zzjnVar2.height);
                    }
                    i4++;
                    i3 = -1;
                }
                if (z4) {
                    if (sb.length() != 0) {
                        i2 = 0;
                        sb.insert(0, "|");
                    } else {
                        i2 = 0;
                    }
                    sb.insert(i2, "320x50");
                }
                map.put("sz", sb);
            }
            if (zzaefVar.zzcdb != 0) {
                map.put("native_version", Integer.valueOf(zzaefVar.zzcdb));
                map.put("native_templates", zzaefVar.zzads);
                zzpl zzplVar = zzaefVar.zzadj;
                if (zzplVar != null) {
                    switch (zzplVar.zzbjo) {
                        case 0:
                            str7 = "any";
                            break;
                        case 1:
                            str7 = "portrait";
                            break;
                        case 2:
                            str7 = "landscape";
                            break;
                        default:
                            str7 = "not_set";
                            break;
                    }
                } else {
                    str7 = "any";
                }
                map.put("native_image_orientation", str7);
                if (!zzaefVar.zzcdk.isEmpty()) {
                    map.put("native_custom_templates", zzaefVar.zzcdk);
                }
                if (zzaefVar.versionCode >= 24) {
                    map.put("max_num_ads", Integer.valueOf(zzaefVar.zzceg));
                }
                if (!TextUtils.isEmpty(zzaefVar.zzcee)) {
                    try {
                        map.put("native_advanced_settings", new JSONArray(zzaefVar.zzcee));
                    } catch (JSONException e) {
                        zzakb.zzc("Problem creating json from native advanced settings", e);
                    }
                }
            }
            if (zzaefVar.zzadn != null && zzaefVar.zzadn.size() > 0) {
                for (Integer num : zzaefVar.zzadn) {
                    if (num.intValue() == 2) {
                        str6 = "iba";
                        z = true;
                    } else if (num.intValue() == 1) {
                        str6 = "ina";
                        z = true;
                    }
                    map.put(str6, z);
                }
            }
            if (zzaefVar.zzacv.zzarg) {
                map.put("ene", true);
            }
            if (((Boolean) zzkb.zzik().zzd(zznk.zzaxv)).booleanValue()) {
                map.put("xsrve", true);
            }
            if (zzaefVar.zzadl != null) {
                map.put("is_icon_ad", true);
                map.put("icon_ad_expansion_behavior", Integer.valueOf(zzaefVar.zzadl.zzasj));
            }
            map.put("slotname", zzaefVar.zzacp);
            map.put("pn", zzaefVar.applicationInfo.packageName);
            if (zzaefVar.zzccw != null) {
                map.put("vc", Integer.valueOf(zzaefVar.zzccw.versionCode));
            }
            map.put("ms", zzaflVar.zzccx);
            map.put("seq_num", zzaefVar.zzccy);
            map.put("session_id", zzaefVar.zzccz);
            map.put("js", zzaefVar.zzacr.zzcw);
            zzagk zzagkVar = zzaflVar.zzcgo;
            Bundle bundle2 = zzaefVar.zzcdw;
            Bundle bundle3 = zzaflVar.zzcgn;
            map.put("am", Integer.valueOf(zzagaVar.zzcjk));
            map.put("cog", zzv(zzagaVar.zzcjl));
            map.put("coh", zzv(zzagaVar.zzcjm));
            if (!TextUtils.isEmpty(zzagaVar.zzcjn)) {
                map.put("carrier", zzagaVar.zzcjn);
            }
            map.put("gl", zzagaVar.zzcjo);
            if (zzagaVar.zzcjp) {
                map.put("simulator", 1);
            }
            if (zzagaVar.zzcjq) {
                map.put("is_sidewinder", 1);
            }
            map.put("ma", zzv(zzagaVar.zzcjr));
            map.put("sp", zzv(zzagaVar.zzcjs));
            map.put("hl", zzagaVar.zzcjt);
            if (!TextUtils.isEmpty(zzagaVar.zzcju)) {
                map.put("mv", zzagaVar.zzcju);
            }
            map.put("muv", Integer.valueOf(zzagaVar.zzcjw));
            if (zzagaVar.zzcjx != -2) {
                map.put("cnt", Integer.valueOf(zzagaVar.zzcjx));
            }
            map.put("gnt", Integer.valueOf(zzagaVar.zzcjy));
            map.put("pt", Integer.valueOf(zzagaVar.zzcjz));
            map.put("rm", Integer.valueOf(zzagaVar.zzcka));
            map.put("riv", Integer.valueOf(zzagaVar.zzckb));
            Bundle bundle4 = new Bundle();
            bundle4.putString("build_build", zzagaVar.zzckg);
            bundle4.putString("build_device", zzagaVar.zzckh);
            Bundle bundle5 = new Bundle();
            bundle5.putBoolean("is_charging", zzagaVar.zzckd);
            bundle5.putDouble("battery_level", zzagaVar.zzckc);
            bundle4.putBundle("battery", bundle5);
            Bundle bundle6 = new Bundle();
            bundle6.putInt("active_network_state", zzagaVar.zzckf);
            bundle6.putBoolean("active_network_metered", zzagaVar.zzcke);
            if (zzagkVar != null) {
                Bundle bundle7 = new Bundle();
                bundle7.putInt("predicted_latency_micros", zzagkVar.zzckq);
                bundle7.putLong("predicted_down_throughput_bps", zzagkVar.zzckr);
                bundle7.putLong("predicted_up_throughput_bps", zzagkVar.zzcks);
                bundle6.putBundle("predictions", bundle7);
            }
            bundle4.putBundle("network", bundle6);
            Bundle bundle8 = new Bundle();
            bundle8.putBoolean("is_browser_custom_tabs_capable", zzagaVar.zzcki);
            bundle4.putBundle("browser", bundle8);
            if (bundle2 != null) {
                Bundle bundle9 = new Bundle();
                bundle9.putString("runtime_free", Long.toString(bundle2.getLong("runtime_free_memory", -1L)));
                bundle9.putString("runtime_max", Long.toString(bundle2.getLong("runtime_max_memory", -1L)));
                bundle9.putString("runtime_total", Long.toString(bundle2.getLong("runtime_total_memory", -1L)));
                i = 0;
                bundle9.putString("web_view_count", Integer.toString(bundle2.getInt("web_view_count", 0)));
                Debug.MemoryInfo memoryInfo = (Debug.MemoryInfo) bundle2.getParcelable("debug_memory_info");
                if (memoryInfo != null) {
                    bundle9.putString("debug_info_dalvik_private_dirty", Integer.toString(memoryInfo.dalvikPrivateDirty));
                    bundle9.putString("debug_info_dalvik_pss", Integer.toString(memoryInfo.dalvikPss));
                    bundle9.putString("debug_info_dalvik_shared_dirty", Integer.toString(memoryInfo.dalvikSharedDirty));
                    bundle9.putString("debug_info_native_private_dirty", Integer.toString(memoryInfo.nativePrivateDirty));
                    bundle9.putString("debug_info_native_pss", Integer.toString(memoryInfo.nativePss));
                    bundle9.putString("debug_info_native_shared_dirty", Integer.toString(memoryInfo.nativeSharedDirty));
                    bundle9.putString("debug_info_other_private_dirty", Integer.toString(memoryInfo.otherPrivateDirty));
                    bundle9.putString("debug_info_other_pss", Integer.toString(memoryInfo.otherPss));
                    bundle9.putString("debug_info_other_shared_dirty", Integer.toString(memoryInfo.otherSharedDirty));
                }
                bundle4.putBundle("android_mem_info", bundle9);
            } else {
                i = 0;
            }
            Bundle bundle10 = new Bundle();
            bundle10.putBundle("parental_controls", bundle3);
            if (!TextUtils.isEmpty(zzagaVar.zzcjv)) {
                bundle10.putString("package_version", zzagaVar.zzcjv);
            }
            bundle4.putBundle("play_store", bundle10);
            map.put("device", bundle4);
            Bundle bundle11 = new Bundle();
            bundle11.putString("doritos", zzaflVar.zzcgp);
            bundle11.putString("doritos_v2", zzaflVar.zzcgq);
            if (((Boolean) zzkb.zzik().zzd(zznk.zzayj)).booleanValue()) {
                if (zzaflVar.zzcgr != null) {
                    id = zzaflVar.zzcgr.getId();
                    zIsLimitAdTrackingEnabled = zzaflVar.zzcgr.isLimitAdTrackingEnabled();
                } else {
                    id = null;
                    zIsLimitAdTrackingEnabled = false;
                }
                if (TextUtils.isEmpty(id)) {
                    zzkb.zzif();
                    bundle11.putString("pdid", zzamu.zzbd(context));
                    str4 = "pdidtype";
                    str5 = "ssaid";
                } else {
                    bundle11.putString("rdid", id);
                    bundle11.putBoolean("is_lat", zIsLimitAdTrackingEnabled);
                    str4 = "idtype";
                    str5 = "adid";
                }
                bundle11.putString(str4, str5);
            }
            map.put("pii", bundle11);
            map.put("platform", Build.MANUFACTURER);
            map.put("submodel", Build.MODEL);
            if (location == null) {
                if (zzaefVar.zzccv.versionCode >= 2 && zzaefVar.zzccv.zzaqe != null) {
                    location = zzaefVar.zzccv.zzaqe;
                    zza((HashMap<String, Object>) map, location);
                }
                strValueOf = String.valueOf(e.getMessage());
                if (strValueOf.length() != 0) {
                    str = "Problem serializing ad request to JSON: ".concat(strValueOf);
                } else {
                    str = new String("Problem serializing ad request to JSON: ");
                }
                zzakb.zzdk(str);
                return null;
            }
            zza((HashMap<String, Object>) map, location);
            if (zzaefVar.versionCode >= 2) {
                map.put("quality_signals", zzaefVar.zzcda);
            }
            if (zzaefVar.versionCode >= 4 && zzaefVar.zzcdd) {
                map.put("forceHttps", Boolean.valueOf(zzaefVar.zzcdd));
            }
            if (bundle != 0) {
                map.put("content_info", bundle);
            }
            if (zzaefVar.versionCode >= 5) {
                map.put("u_sd", Float.valueOf(zzaefVar.zzagu));
                map.put("sh", Integer.valueOf(zzaefVar.zzcdf));
                str2 = "sw";
                numValueOf = Integer.valueOf(zzaefVar.zzcde);
            } else {
                map.put("u_sd", Float.valueOf(zzagaVar.zzagu));
                map.put("sh", Integer.valueOf(zzagaVar.zzcdf));
                str2 = "sw";
                numValueOf = Integer.valueOf(zzagaVar.zzcde);
            }
            map.put(str2, numValueOf);
            if (zzaefVar.versionCode >= 6) {
                if (!TextUtils.isEmpty(zzaefVar.zzcdg)) {
                    try {
                        map.put("view_hierarchy", new JSONObject(zzaefVar.zzcdg));
                    } catch (JSONException e2) {
                        zzakb.zzc("Problem serializing view hierarchy to JSON", e2);
                    }
                }
                map.put("correlation_id", Long.valueOf(zzaefVar.zzcdh));
            }
            if (zzaefVar.versionCode >= 7) {
                map.put("request_id", zzaefVar.zzcdi);
            }
            if (zzaefVar.versionCode >= 12 && !TextUtils.isEmpty(zzaefVar.zzcdm)) {
                map.put("anchor", zzaefVar.zzcdm);
            }
            if (zzaefVar.versionCode >= 13) {
                map.put("android_app_volume", Float.valueOf(zzaefVar.zzcdn));
            }
            if (zzaefVar.versionCode >= 18) {
                map.put("android_app_muted", Boolean.valueOf(zzaefVar.zzcdt));
            }
            if (zzaefVar.versionCode >= 14 && zzaefVar.zzcdo > 0) {
                map.put("target_api", Integer.valueOf(zzaefVar.zzcdo));
            }
            if (zzaefVar.versionCode >= 15) {
                int i5 = -1;
                if (zzaefVar.zzcdp != -1) {
                    i5 = zzaefVar.zzcdp;
                }
                map.put("scroll_index", Integer.valueOf(i5));
            }
            if (zzaefVar.versionCode >= 16) {
                map.put("_activity_context", Boolean.valueOf(zzaefVar.zzcdq));
            }
            if (zzaefVar.versionCode >= 18) {
                if (!TextUtils.isEmpty(zzaefVar.zzcdu)) {
                    try {
                        map.put("app_settings", new JSONObject(zzaefVar.zzcdu));
                    } catch (JSONException e3) {
                        zzakb.zzc("Problem creating json from app settings", e3);
                    }
                }
                map.put("render_in_browser", Boolean.valueOf(zzaefVar.zzbss));
            }
            if (zzaefVar.versionCode >= 18) {
                map.put("android_num_video_cache_tasks", Integer.valueOf(zzaefVar.zzcdv));
            }
            zzang zzangVar = zzaefVar.zzacr;
            boolean z5 = zzaefVar.zzceh;
            boolean z6 = zzaflVar.zzcgv;
            boolean z7 = zzaefVar.zzcej;
            Bundle bundle12 = new Bundle();
            Bundle bundle13 = new Bundle();
            bundle13.putString("cl", "193400285");
            bundle13.putString("rapid_rc", "dev");
            bundle13.putString("rapid_rollup", "HEAD");
            bundle12.putBundle("build_meta", bundle13);
            bundle12.putString("mf", Boolean.toString(((Boolean) zzkb.zzik().zzd(zznk.zzbbm)).booleanValue()));
            bundle12.putBoolean("instant_app", z5);
            bundle12.putBoolean("lite", zzangVar.zzcvh);
            bundle12.putBoolean("local_service", z6);
            bundle12.putBoolean("is_privileged_process", z7);
            map.put("sdk_env", bundle12);
            map.put("cache_state", jSONObject);
            if (zzaefVar.versionCode >= 19) {
                map.put("gct", zzaefVar.zzcdx);
            }
            if (zzaefVar.versionCode >= 21 && zzaefVar.zzcdy) {
                map.put("de", "1");
            }
            if (((Boolean) zzkb.zzik().zzd(zznk.zzayy)).booleanValue()) {
                String str9 = zzaefVar.zzacv.zzarb;
                boolean z8 = str9.equals("interstitial_mb") || str9.equals("reward_mb");
                Bundle bundle14 = zzaefVar.zzcdz;
                boolean z9 = bundle14 != null;
                if (z8 && z9) {
                    Bundle bundle15 = new Bundle();
                    bundle15.putBundle("interstitial_pool", bundle14);
                    map.put("counters", bundle15);
                }
            }
            if (zzaefVar.zzcea != null) {
                map.put("gmp_app_id", zzaefVar.zzcea);
            }
            if (zzaefVar.zzceb == null) {
                str3 = "fbs_aiid";
                objZzd = "";
            } else if ("TIME_OUT".equals(zzaefVar.zzceb)) {
                str3 = "sai_timeout";
                objZzd = zzkb.zzik().zzd(zznk.zzaxt);
            } else {
                str3 = "fbs_aiid";
                objZzd = zzaefVar.zzceb;
            }
            map.put(str3, objZzd);
            if (zzaefVar.zzcec != null) {
                map.put("fbs_aeid", zzaefVar.zzcec);
            }
            if (zzaefVar.versionCode >= 24) {
                map.put("disable_ml", Boolean.valueOf(zzaefVar.zzcei));
            }
            String str10 = (String) zzkb.zzik().zzd(zznk.zzavo);
            if (str10 != null && !str10.isEmpty()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzkb.zzik().zzd(zznk.zzavp)).intValue()) {
                    HashMap map2 = new HashMap();
                    String[] strArrSplit = str10.split(",");
                    int length2 = strArrSplit.length;
                    while (i < length2) {
                        String str11 = strArrSplit[i];
                        map2.put(str11, zzams.zzdd(str11));
                        i++;
                    }
                    map.put("video_decoders", map2);
                }
            }
            if (((Boolean) zzkb.zzik().zzd(zznk.zzbet)).booleanValue()) {
                map.put("omid_v", com.google.android.gms.ads.internal.zzbv.zzfa().getVersion(context));
            }
            if (zzaefVar.zzcek != null && !zzaefVar.zzcek.isEmpty()) {
                map.put("android_permissions", zzaefVar.zzcek);
            }
            if (zzakb.isLoggable(2)) {
                String strValueOf2 = String.valueOf(com.google.android.gms.ads.internal.zzbv.zzek().zzn(map).toString(2));
                zzakb.m358v(strValueOf2.length() != 0 ? "Ad Request JSON: ".concat(strValueOf2) : new String("Ad Request JSON: "));
            }
            return com.google.android.gms.ads.internal.zzbv.zzek().zzn(map);
        } catch (JSONException e4) {
            strValueOf = String.valueOf(e4.getMessage());
            if (strValueOf.length() != 0) {
                str = "Problem serializing ad request to JSON: ".concat(strValueOf);
            } else {
                str = new String("Problem serializing ad request to JSON: ");
            }
            zzakb.zzdk(str);
            return null;
        }
    }

    private static void zza(HashMap<String, Object> map, Location location) {
        HashMap map2 = new HashMap();
        Float fValueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long lValueOf = Long.valueOf(location.getTime() * 1000);
        Long lValueOf2 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long lValueOf3 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        map2.put("radius", fValueOf);
        map2.put("lat", lValueOf2);
        map2.put("long", lValueOf3);
        map2.put("time", lValueOf);
        map.put("uule", map2);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0088  */
    /* JADX WARN: Code duplicated, block: B:33:0x0097  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:48:0x0106  */
    /* JADX WARN: Code duplicated, block: B:51:0x0113  */
    /* JADX WARN: Code duplicated, block: B:54:0x0122  */
    /* JADX WARN: Code duplicated, block: B:57:0x012f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0132  */
    /* JADX WARN: Code duplicated, block: B:61:0x0142  */
    /* JADX WARN: Code duplicated, block: B:64:0x0151  */
    /* JADX WARN: Code duplicated, block: B:67:0x0160  */
    public static JSONObject zzb(zzaej zzaejVar) throws JSONException {
        String str;
        String str2;
        String str3;
        JSONObject jSONObject = new JSONObject();
        if (zzaejVar.zzbyq != null) {
            jSONObject.put("ad_base_url", zzaejVar.zzbyq);
        }
        if (zzaejVar.zzcet != null) {
            jSONObject.put("ad_size", zzaejVar.zzcet);
        }
        jSONObject.put("native", zzaejVar.zzare);
        jSONObject.put(zzaejVar.zzare ? "ad_json" : "ad_html", zzaejVar.zzceo);
        if (zzaejVar.zzcev != null) {
            jSONObject.put("debug_dialog", zzaejVar.zzcev);
        }
        if (zzaejVar.zzcfl != null) {
            jSONObject.put("debug_signals", zzaejVar.zzcfl);
        }
        if (zzaejVar.zzcep != -1) {
            double d = zzaejVar.zzcep;
            Double.isNaN(d);
            jSONObject.put("interstitial_timeout", d / 1000.0d);
        }
        if (zzaejVar.orientation != com.google.android.gms.ads.internal.zzbv.zzem().zzrm()) {
            if (zzaejVar.orientation == com.google.android.gms.ads.internal.zzbv.zzem().zzrl()) {
                str = "orientation";
                str2 = "landscape";
            }
            if (zzaejVar.zzbsn != null) {
                jSONObject.put("click_urls", zzm(zzaejVar.zzbsn));
            }
            if (zzaejVar.zzbso != null) {
                jSONObject.put("impression_urls", zzm(zzaejVar.zzbso));
            }
            if (zzaejVar.zzbsp != null) {
                jSONObject.put("downloaded_impression_urls", zzm(zzaejVar.zzbsp));
            }
            if (zzaejVar.zzces != null) {
                jSONObject.put("manual_impression_urls", zzm(zzaejVar.zzces));
            }
            if (zzaejVar.zzcey != null) {
                jSONObject.put("active_view", zzaejVar.zzcey);
            }
            jSONObject.put("ad_is_javascript", zzaejVar.zzcew);
            if (zzaejVar.zzcex != null) {
                jSONObject.put("ad_passback_url", zzaejVar.zzcex);
            }
            jSONObject.put("mediation", zzaejVar.zzceq);
            jSONObject.put("custom_render_allowed", zzaejVar.zzcez);
            jSONObject.put("content_url_opted_out", zzaejVar.zzcfa);
            jSONObject.put("content_vertical_opted_out", zzaejVar.zzcfm);
            jSONObject.put("prefetch", zzaejVar.zzcfb);
            if (zzaejVar.zzbsu != -1) {
                jSONObject.put("refresh_interval_milliseconds", zzaejVar.zzbsu);
            }
            if (zzaejVar.zzcer != -1) {
                jSONObject.put("mediation_config_cache_time_milliseconds", zzaejVar.zzcer);
            }
            if (!TextUtils.isEmpty(zzaejVar.zzamj)) {
                jSONObject.put("gws_query_id", zzaejVar.zzamj);
            }
            if (zzaejVar.zzarf) {
                str3 = "height";
            } else {
                str3 = "";
            }
            jSONObject.put("fluid", str3);
            jSONObject.put("native_express", zzaejVar.zzarg);
            if (zzaejVar.zzcff != null) {
                jSONObject.put("video_start_urls", zzm(zzaejVar.zzcff));
            }
            if (zzaejVar.zzcfg != null) {
                jSONObject.put("video_complete_urls", zzm(zzaejVar.zzcfg));
            }
            if (zzaejVar.zzcfe != null) {
                zzaig zzaigVar = zzaejVar.zzcfe;
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("rb_type", zzaigVar.type);
                jSONObject2.put("rb_amount", zzaigVar.zzcmk);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject2);
                jSONObject.put("rewards", jSONArray);
            }
            jSONObject.put("use_displayed_impression", zzaejVar.zzcfh);
            jSONObject.put("auto_protection_configuration", zzaejVar.zzcfi);
            jSONObject.put("render_in_browser", zzaejVar.zzbss);
            jSONObject.put("disable_closable_area", zzaejVar.zzzm);
            return jSONObject;
        }
        str = "orientation";
        str2 = "portrait";
        jSONObject.put(str, str2);
        if (zzaejVar.zzbsn != null) {
            jSONObject.put("click_urls", zzm(zzaejVar.zzbsn));
        }
        if (zzaejVar.zzbso != null) {
            jSONObject.put("impression_urls", zzm(zzaejVar.zzbso));
        }
        if (zzaejVar.zzbsp != null) {
            jSONObject.put("downloaded_impression_urls", zzm(zzaejVar.zzbsp));
        }
        if (zzaejVar.zzces != null) {
            jSONObject.put("manual_impression_urls", zzm(zzaejVar.zzces));
        }
        if (zzaejVar.zzcey != null) {
            jSONObject.put("active_view", zzaejVar.zzcey);
        }
        jSONObject.put("ad_is_javascript", zzaejVar.zzcew);
        if (zzaejVar.zzcex != null) {
            jSONObject.put("ad_passback_url", zzaejVar.zzcex);
        }
        jSONObject.put("mediation", zzaejVar.zzceq);
        jSONObject.put("custom_render_allowed", zzaejVar.zzcez);
        jSONObject.put("content_url_opted_out", zzaejVar.zzcfa);
        jSONObject.put("content_vertical_opted_out", zzaejVar.zzcfm);
        jSONObject.put("prefetch", zzaejVar.zzcfb);
        if (zzaejVar.zzbsu != -1) {
            jSONObject.put("refresh_interval_milliseconds", zzaejVar.zzbsu);
        }
        if (zzaejVar.zzcer != -1) {
            jSONObject.put("mediation_config_cache_time_milliseconds", zzaejVar.zzcer);
        }
        if (!TextUtils.isEmpty(zzaejVar.zzamj)) {
            jSONObject.put("gws_query_id", zzaejVar.zzamj);
        }
        if (zzaejVar.zzarf) {
            str3 = "height";
        } else {
            str3 = "";
        }
        jSONObject.put("fluid", str3);
        jSONObject.put("native_express", zzaejVar.zzarg);
        if (zzaejVar.zzcff != null) {
            jSONObject.put("video_start_urls", zzm(zzaejVar.zzcff));
        }
        if (zzaejVar.zzcfg != null) {
            jSONObject.put("video_complete_urls", zzm(zzaejVar.zzcfg));
        }
        if (zzaejVar.zzcfe != null) {
            zzaig zzaigVar2 = zzaejVar.zzcfe;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("rb_type", zzaigVar2.type);
            jSONObject3.put("rb_amount", zzaigVar2.zzcmk);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONObject3);
            jSONObject.put("rewards", jSONArray2);
        }
        jSONObject.put("use_displayed_impression", zzaejVar.zzcfh);
        jSONObject.put("auto_protection_configuration", zzaejVar.zzcfi);
        jSONObject.put("render_in_browser", zzaejVar.zzbss);
        jSONObject.put("disable_closable_area", zzaejVar.zzzm);
        return jSONObject;
    }

    private static JSONArray zzm(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        return jSONArray;
    }

    private static Integer zzv(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }
}
