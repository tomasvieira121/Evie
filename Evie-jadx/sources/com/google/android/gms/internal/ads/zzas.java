package com.google.android.gms.internal.ads;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public final class zzas extends zzai {
    private final zzat zzci;
    private final SSLSocketFactory zzcj;

    public zzas() {
        this(null);
    }

    private zzas(zzat zzatVar) {
        this(null, null);
    }

    private zzas(zzat zzatVar, SSLSocketFactory sSLSocketFactory) {
        this.zzci = null;
        this.zzcj = null;
    }

    private static InputStream zza(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static List<zzl> zza(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new zzl(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private static void zza(HttpURLConnection httpURLConnection, zzr<?> zzrVar) throws zza, IOException {
        byte[] bArrZzg = zzrVar.zzg();
        if (bArrZzg != null) {
            httpURLConnection.setDoOutput(true);
            String strValueOf = String.valueOf("UTF-8");
            httpURLConnection.addRequestProperty("Content-Type", strValueOf.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(strValueOf) : new String("application/x-www-form-urlencoded; charset="));
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bArrZzg);
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fa  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzai
    public final zzaq zza(zzr<?> zzrVar, Map<String, String> map) throws zza, IOException {
        String strZzg;
        int responseCode;
        String str;
        String str2;
        String url = zzrVar.getUrl();
        HashMap map2 = new HashMap();
        map2.putAll(zzrVar.getHeaders());
        map2.putAll(map);
        zzat zzatVar = this.zzci;
        if (zzatVar != null) {
            strZzg = zzatVar.zzg(url);
            if (strZzg == null) {
                String strValueOf = String.valueOf(url);
                throw new IOException(strValueOf.length() != 0 ? "URL blocked by rewriter: ".concat(strValueOf) : new String("URL blocked by rewriter: "));
            }
        } else {
            strZzg = url;
        }
        URL url2 = new URL(strZzg);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int iZzi = zzrVar.zzi();
        httpURLConnection.setConnectTimeout(iZzi);
        httpURLConnection.setReadTimeout(iZzi);
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url2.getProtocol());
        for (String str3 : map2.keySet()) {
            httpURLConnection.addRequestProperty(str3, (String) map2.get(str3));
        }
        switch (zzrVar.getMethod()) {
            case -1:
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4 && ((100 > responseCode || responseCode >= 200) && responseCode != 204 && responseCode != 304)) {
                    z = true;
                }
                return !z ? new zzaq(responseCode, zza(httpURLConnection.getHeaderFields())) : new zzaq(responseCode, zza(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), zza(httpURLConnection));
            case 0:
                str = "GET";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            case 1:
                str2 = "POST";
                httpURLConnection.setRequestMethod(str2);
                zza(httpURLConnection, zzrVar);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            case 2:
                str2 = "PUT";
                httpURLConnection.setRequestMethod(str2);
                zza(httpURLConnection, zzrVar);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            case 3:
                str = "DELETE";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            case 4:
                str = "HEAD";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            case 5:
                str = "OPTIONS";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            case 6:
                str = "TRACE";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            case 7:
                str2 = "PATCH";
                httpURLConnection.setRequestMethod(str2);
                zza(httpURLConnection, zzrVar);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (zzrVar.getMethod() != 4) {
                    z = true;
                }
                if (!z) {
                }
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }
}
