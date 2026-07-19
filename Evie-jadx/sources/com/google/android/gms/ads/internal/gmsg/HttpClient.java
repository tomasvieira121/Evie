package com.google.android.gms.ads.internal.gmsg;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.google.android.gms.ads.internal.zzbv;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.ads.zzadh;
import com.google.android.gms.internal.ads.zzakb;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzamy;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzue;
import java.io.BufferedOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Keep
@KeepName
@zzadh
public class HttpClient implements zzv<zzue> {
    private final Context mContext;
    private final zzang zzyf;

    @zzadh
    static class zza {
        private final String mKey;
        private final String mValue;

        public zza(String str, String str2) {
            this.mKey = str;
            this.mValue = str2;
        }

        public final String getKey() {
            return this.mKey;
        }

        public final String getValue() {
            return this.mValue;
        }
    }

    @zzadh
    static class zzb {
        private final String zzbmm;
        private final URL zzbmn;
        private final ArrayList<zza> zzbmo;
        private final String zzbmp;

        zzb(String str, URL url, ArrayList<zza> arrayList, String str2) {
            this.zzbmm = str;
            this.zzbmn = url;
            this.zzbmo = arrayList;
            this.zzbmp = str2;
        }

        public final String zzkv() {
            return this.zzbmm;
        }

        public final URL zzkw() {
            return this.zzbmn;
        }

        public final ArrayList<zza> zzkx() {
            return this.zzbmo;
        }

        public final String zzky() {
            return this.zzbmp;
        }
    }

    @zzadh
    class zzc {
        private final zzd zzbmq;
        private final boolean zzbmr;
        private final String zzbms;

        public zzc(HttpClient httpClient, boolean z, zzd zzdVar, String str) {
            this.zzbmr = z;
            this.zzbmq = zzdVar;
            this.zzbms = str;
        }

        public final String getReason() {
            return this.zzbms;
        }

        public final boolean isSuccess() {
            return this.zzbmr;
        }

        public final zzd zzkz() {
            return this.zzbmq;
        }
    }

    @zzadh
    static class zzd {
        private final String zzbhy;
        private final String zzbmm;
        private final int zzbmt;
        private final List<zza> zzcf;

        zzd(String str, int i, List<zza> list, String str2) {
            this.zzbmm = str;
            this.zzbmt = i;
            this.zzcf = list;
            this.zzbhy = str2;
        }

        public final String getBody() {
            return this.zzbhy;
        }

        public final int getResponseCode() {
            return this.zzbmt;
        }

        public final String zzkv() {
            return this.zzbmm;
        }

        public final Iterable<zza> zzla() {
            return this.zzcf;
        }
    }

    public HttpClient(Context context, zzang zzangVar) {
        this.mContext = context;
        this.zzyf = zzangVar;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0104  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final zzc zza(zzb zzbVar) throws Throwable {
        HttpURLConnection httpURLConnection;
        byte[] bytes;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) zzbVar.zzkw().openConnection();
                try {
                    zzbv.zzek().zza(this.mContext, this.zzyf.zzcw, false, httpURLConnection);
                    ArrayList<zza> arrayListZzkx = zzbVar.zzkx();
                    int size = arrayListZzkx.size();
                    int i = 0;
                    while (i < size) {
                        zza zzaVar = arrayListZzkx.get(i);
                        i++;
                        zza zzaVar2 = zzaVar;
                        httpURLConnection.addRequestProperty(zzaVar2.getKey(), zzaVar2.getValue());
                    }
                    if (TextUtils.isEmpty(zzbVar.zzky())) {
                        bytes = null;
                    } else {
                        httpURLConnection.setDoOutput(true);
                        bytes = zzbVar.zzky().getBytes();
                        httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                        bufferedOutputStream.write(bytes);
                        bufferedOutputStream.close();
                    }
                    zzamy zzamyVar = new zzamy();
                    zzamyVar.zza(httpURLConnection, bytes);
                    ArrayList arrayList = new ArrayList();
                    if (httpURLConnection.getHeaderFields() != null) {
                        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
                            Iterator<String> it = entry.getValue().iterator();
                            while (it.hasNext()) {
                                arrayList.add(new zza(entry.getKey(), it.next()));
                            }
                        }
                    }
                    String strZzkv = zzbVar.zzkv();
                    int responseCode = httpURLConnection.getResponseCode();
                    zzbv.zzek();
                    zzd zzdVar = new zzd(strZzkv, responseCode, arrayList, zzakk.zza(new InputStreamReader(httpURLConnection.getInputStream())));
                    zzamyVar.zza(httpURLConnection, zzdVar.getResponseCode());
                    zzamyVar.zzdg(zzdVar.getBody());
                    zzc zzcVar = new zzc(this, true, zzdVar, null);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return zzcVar;
                } catch (Exception e) {
                    e = e;
                    zzc zzcVar2 = new zzc(this, false, null, e.toString());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return zzcVar2;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    private static JSONObject zza(zzd zzdVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", zzdVar.zzkv());
            if (zzdVar.getBody() != null) {
                jSONObject.put("body", zzdVar.getBody());
            }
            JSONArray jSONArray = new JSONArray();
            for (zza zzaVar : zzdVar.zzla()) {
                jSONArray.put(new JSONObject().put("key", zzaVar.getKey()).put("value", zzaVar.getValue()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", zzdVar.getResponseCode());
        } catch (JSONException e) {
            zzakb.zzb("Error constructing JSON for http response.", e);
        }
        return jSONObject;
    }

    private static zzb zzc(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("http_request_id");
        String strOptString2 = jSONObject.optString("url");
        URL url = null;
        String strOptString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(strOptString2);
        } catch (MalformedURLException e) {
            zzakb.zzb("Error constructing http request.", e);
        }
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("headers");
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                arrayList.add(new zza(jSONObjectOptJSONObject.optString("key"), jSONObjectOptJSONObject.optString("value")));
            }
        }
        return new zzb(strOptString, url, arrayList, strOptString3);
    }

    @Keep
    @KeepName
    public JSONObject send(JSONObject jSONObject) throws Throwable {
        JSONObject jSONObject2 = new JSONObject();
        String strOptString = "";
        try {
            strOptString = jSONObject.optString("http_request_id");
            zzc zzcVarZza = zza(zzc(jSONObject));
            if (zzcVarZza.isSuccess()) {
                jSONObject2.put("response", zza(zzcVarZza.zzkz()));
                jSONObject2.put("success", true);
            } else {
                jSONObject2.put("response", new JSONObject().put("http_request_id", strOptString));
                jSONObject2.put("success", false);
                jSONObject2.put("reason", zzcVarZza.getReason());
            }
        } catch (Exception e) {
            zzakb.zzb("Error executing http request.", e);
            try {
                jSONObject2.put("response", new JSONObject().put("http_request_id", strOptString));
                jSONObject2.put("success", false);
                jSONObject2.put("reason", e.toString());
            } catch (JSONException e2) {
                zzakb.zzb("Error executing http request.", e2);
            }
        }
        return jSONObject2;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzv
    public final /* synthetic */ void zza(zzue zzueVar, Map map) {
        zzaki.zzb(new zzw(this, map, zzueVar));
    }
}
