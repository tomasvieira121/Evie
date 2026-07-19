package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public final class zzaii implements zzait {
    private static List<Future<Void>> zzcml = Collections.synchronizedList(new ArrayList());
    private static ScheduledExecutorService zzcmm = Executors.newSingleThreadScheduledExecutor();
    private final Context mContext;
    private final zzaiq zzciy;

    @GuardedBy("mLock")
    private final zzbfm zzcmn;

    @GuardedBy("mLock")
    private final LinkedHashMap<String, zzbfu> zzcmo;
    private final zzaiv zzcmr;
    private boolean zzcms;
    private final zzaiw zzcmt;

    @GuardedBy("mLock")
    private final List<String> zzcmp = new ArrayList();

    @GuardedBy("mLock")
    private final List<String> zzcmq = new ArrayList();
    private final Object mLock = new Object();
    private HashSet<String> zzcmu = new HashSet<>();
    private boolean zzcmv = false;
    private boolean zzcmw = false;
    private boolean zzcmx = false;

    public zzaii(Context context, zzang zzangVar, zzaiq zzaiqVar, String str, zzaiv zzaivVar) {
        Preconditions.checkNotNull(zzaiqVar, "SafeBrowsing config is not present.");
        this.mContext = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzcmo = new LinkedHashMap<>();
        this.zzcmr = zzaivVar;
        this.zzciy = zzaiqVar;
        Iterator<String> it = this.zzciy.zzcnh.iterator();
        while (it.hasNext()) {
            this.zzcmu.add(it.next().toLowerCase(Locale.ENGLISH));
        }
        this.zzcmu.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzbfm zzbfmVar = new zzbfm();
        zzbfmVar.zzamf = 8;
        zzbfmVar.url = str;
        zzbfmVar.zzech = str;
        zzbfmVar.zzecj = new zzbfn();
        zzbfmVar.zzecj.zzcnd = this.zzciy.zzcnd;
        zzbfv zzbfvVar = new zzbfv();
        zzbfvVar.zzedv = zzangVar.zzcw;
        zzbfvVar.zzedx = Boolean.valueOf(Wrappers.packageManager(this.mContext).isCallerInstantApp());
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.mContext);
        if (apkVersion > 0) {
            zzbfvVar.zzedw = Long.valueOf(apkVersion);
        }
        zzbfmVar.zzect = zzbfvVar;
        this.zzcmn = zzbfmVar;
        this.zzcmt = new zzaiw(this.mContext, this.zzciy.zzcnk, this);
    }

    private final zzbfu zzci(String str) {
        zzbfu zzbfuVar;
        synchronized (this.mLock) {
            zzbfuVar = this.zzcmo.get(str);
        }
        return zzbfuVar;
    }

    static final /* synthetic */ Void zzcj(String str) {
        return null;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final zzanz<Void> zzpk() {
        zzanz<Void> zzanzVarZza;
        if (!((this.zzcms && this.zzciy.zzcnj) || (this.zzcmx && this.zzciy.zzcni) || (!this.zzcms && this.zzciy.zzcng))) {
            return zzano.zzi(null);
        }
        synchronized (this.mLock) {
            this.zzcmn.zzeck = new zzbfu[this.zzcmo.size()];
            this.zzcmo.values().toArray(this.zzcmn.zzeck);
            this.zzcmn.zzecu = (String[]) this.zzcmp.toArray(new String[0]);
            this.zzcmn.zzecv = (String[]) this.zzcmq.toArray(new String[0]);
            if (zzais.isEnabled()) {
                String str = this.zzcmn.url;
                String str2 = this.zzcmn.zzecl;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 53 + String.valueOf(str2).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(str);
                sb.append("\n  clickUrl: ");
                sb.append(str2);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (zzbfu zzbfuVar : this.zzcmn.zzeck) {
                    sb2.append("    [");
                    sb2.append(zzbfuVar.zzedu.length);
                    sb2.append("] ");
                    sb2.append(zzbfuVar.url);
                }
                zzais.zzck(sb2.toString());
            }
            zzanz<String> zzanzVarZza2 = new zzalt(this.mContext).zza(1, this.zzciy.zzcne, null, zzbfi.zzb(this.zzcmn));
            if (zzais.isEnabled()) {
                zzanzVarZza2.zza(new zzain(this), zzaki.zzcrj);
            }
            zzanzVarZza = zzano.zza(zzanzVarZza2, zzaik.zzcmz, zzaoe.zzcvz);
        }
        return zzanzVarZza;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0011 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0013 A[Catch: all -> 0x00c6, TryCatch #0 {, blocks: (B:7:0x0007, B:8:0x0009, B:11:0x0013, B:12:0x0021, B:14:0x0023, B:17:0x004d, B:18:0x005a, B:20:0x0060, B:21:0x0066, B:23:0x006c, B:25:0x0075, B:27:0x007b, B:29:0x0084, B:32:0x0093, B:34:0x00ac, B:35:0x00b2, B:36:0x00bf, B:37:0x00c4), top: B:43:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0023 A[Catch: all -> 0x00c6, TryCatch #0 {, blocks: (B:7:0x0007, B:8:0x0009, B:11:0x0013, B:12:0x0021, B:14:0x0023, B:17:0x004d, B:18:0x005a, B:20:0x0060, B:21:0x0066, B:23:0x006c, B:25:0x0075, B:27:0x007b, B:29:0x0084, B:32:0x0093, B:34:0x00ac, B:35:0x00b2, B:36:0x00bf, B:37:0x00c4), top: B:43:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x0060 A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x0007, B:8:0x0009, B:11:0x0013, B:12:0x0021, B:14:0x0023, B:17:0x004d, B:18:0x005a, B:20:0x0060, B:21:0x0066, B:23:0x006c, B:25:0x0075, B:27:0x007b, B:29:0x0084, B:32:0x0093, B:34:0x00ac, B:35:0x00b2, B:36:0x00bf, B:37:0x00c4), top: B:43:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x006c A[Catch: UnsupportedEncodingException -> 0x00ac, all -> 0x00c6, TryCatch #1 {UnsupportedEncodingException -> 0x00ac, blocks: (B:21:0x0066, B:23:0x006c, B:25:0x0075, B:27:0x007b, B:29:0x0084, B:32:0x0093), top: B:44:0x0066, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0073  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b A[Catch: UnsupportedEncodingException -> 0x00ac, all -> 0x00c6, TryCatch #1 {UnsupportedEncodingException -> 0x00ac, blocks: (B:21:0x0066, B:23:0x006c, B:25:0x0075, B:27:0x007b, B:29:0x0084, B:32:0x0093), top: B:44:0x0066, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0082  */
    /* JADX WARN: Code duplicated, block: B:47:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzait
    public final void zza(String str, Map<String, String> map, int i) {
        zzbfu zzbfuVar;
        ArrayList arrayList;
        String key;
        String value;
        synchronized (this.mLock) {
            if (i != 3) {
                if (this.zzcmo.containsKey(str)) {
                    if (i == 3) {
                        this.zzcmo.get(str).zzedt = Integer.valueOf(i);
                    }
                    return;
                }
                zzbfuVar = new zzbfu();
                zzbfuVar.zzedt = Integer.valueOf(i);
                zzbfuVar.zzedn = Integer.valueOf(this.zzcmo.size());
                zzbfuVar.url = str;
                zzbfuVar.zzedo = new zzbfp();
                if (this.zzcmu.size() > 0) {
                    arrayList = new ArrayList();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (entry.getKey() != null) {
                            key = entry.getKey();
                        } else {
                            key = "";
                        }
                        if (entry.getValue() != null) {
                            value = entry.getValue();
                        } else {
                            value = "";
                        }
                        if (!this.zzcmu.contains(key.toLowerCase(Locale.ENGLISH))) {
                            zzbfo zzbfoVar = new zzbfo();
                            zzbfoVar.zzecx = key.getBytes("UTF-8");
                            zzbfoVar.zzecy = value.getBytes("UTF-8");
                            arrayList.add(zzbfoVar);
                        }
                    }
                    zzbfo[] zzbfoVarArr = new zzbfo[arrayList.size()];
                    arrayList.toArray(zzbfoVarArr);
                    zzbfuVar.zzedo.zzeda = zzbfoVarArr;
                }
                this.zzcmo.put(str, zzbfuVar);
                return;
            }
            this.zzcmx = true;
            if (this.zzcmo.containsKey(str)) {
                if (i == 3) {
                    this.zzcmo.get(str).zzedt = Integer.valueOf(i);
                }
                return;
            }
            zzbfuVar = new zzbfu();
            zzbfuVar.zzedt = Integer.valueOf(i);
            zzbfuVar.zzedn = Integer.valueOf(this.zzcmo.size());
            zzbfuVar.url = str;
            zzbfuVar.zzedo = new zzbfp();
            if (this.zzcmu.size() > 0 && map != null) {
                arrayList = new ArrayList();
                while (r8.hasNext()) {
                    try {
                        if (entry.getKey() != null) {
                            key = entry.getKey();
                        } else {
                            key = "";
                        }
                        if (entry.getValue() != null) {
                            value = entry.getValue();
                        } else {
                            value = "";
                        }
                        if (!this.zzcmu.contains(key.toLowerCase(Locale.ENGLISH))) {
                            zzbfo zzbfoVar2 = new zzbfo();
                            zzbfoVar2.zzecx = key.getBytes("UTF-8");
                            zzbfoVar2.zzecy = value.getBytes("UTF-8");
                            arrayList.add(zzbfoVar2);
                        }
                    } catch (UnsupportedEncodingException unused) {
                        zzais.zzck("Cannot convert string to bytes, skip header.");
                    }
                }
                zzbfo[] zzbfoVarArr2 = new zzbfo[arrayList.size()];
                arrayList.toArray(zzbfoVarArr2);
                zzbfuVar.zzedo.zzeda = zzbfoVarArr2;
            }
            this.zzcmo.put(str, zzbfuVar);
            return;
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzait
    public final String[] zzb(String[] strArr) {
        return (String[]) this.zzcmt.zzc(strArr).toArray(new String[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzait
    public final void zzcf(String str) {
        synchronized (this.mLock) {
            this.zzcmn.zzecl = str;
        }
    }

    final void zzcg(String str) {
        synchronized (this.mLock) {
            this.zzcmp.add(str);
        }
    }

    final void zzch(String str) {
        synchronized (this.mLock) {
            this.zzcmq.add(str);
        }
    }

    final /* synthetic */ zzanz zzm(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (jSONArrayOptJSONArray != null) {
                        synchronized (this.mLock) {
                            int length = jSONArrayOptJSONArray.length();
                            zzbfu zzbfuVarZzci = zzci(str);
                            if (zzbfuVarZzci == null) {
                                String strValueOf = String.valueOf(str);
                                zzais.zzck(strValueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(strValueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                zzbfuVarZzci.zzedu = new String[length];
                                for (int i = 0; i < length; i++) {
                                    zzbfuVarZzci.zzedu[i] = jSONArrayOptJSONArray.getJSONObject(i).getString("threat_type");
                                }
                                this.zzcms = (length > 0) | this.zzcms;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) zzkb.zzik().zzd(zznk.zzbdi)).booleanValue()) {
                    zzakb.zza("Failed to get SafeBrowsing metadata", e);
                }
                return zzano.zzd(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zzcms) {
            synchronized (this.mLock) {
                this.zzcmn.zzamf = 9;
            }
        }
        return zzpk();
    }

    @Override // com.google.android.gms.internal.ads.zzait
    public final zzaiq zzpg() {
        return this.zzciy;
    }

    @Override // com.google.android.gms.internal.ads.zzait
    public final boolean zzph() {
        return PlatformVersion.isAtLeastKitKat() && this.zzciy.zzcnf && !this.zzcmw;
    }

    @Override // com.google.android.gms.internal.ads.zzait
    public final void zzpi() {
        this.zzcmv = true;
    }

    @Override // com.google.android.gms.internal.ads.zzait
    public final void zzpj() {
        synchronized (this.mLock) {
            zzanz zzanzVarZza = zzano.zza(this.zzcmr.zza(this.mContext, this.zzcmo.keySet()), new zzanj(this) { // from class: com.google.android.gms.internal.ads.zzaij
                private final zzaii zzcmy;

                {
                    this.zzcmy = this;
                }

                @Override // com.google.android.gms.internal.ads.zzanj
                public final zzanz zzc(Object obj) {
                    return this.zzcmy.zzm((Map) obj);
                }
            }, zzaoe.zzcvz);
            zzanz zzanzVarZza2 = zzano.zza(zzanzVarZza, 10L, TimeUnit.SECONDS, zzcmm);
            zzano.zza(zzanzVarZza, new zzaim(this, zzanzVarZza2), zzaoe.zzcvz);
            zzcml.add(zzanzVarZza2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzait
    public final void zzr(View view) {
        if (this.zzciy.zzcnf && !this.zzcmw) {
            com.google.android.gms.ads.internal.zzbv.zzek();
            Bitmap bitmapZzt = zzakk.zzt(view);
            if (bitmapZzt == null) {
                zzais.zzck("Failed to capture the webview bitmap.");
            } else {
                this.zzcmw = true;
                zzakk.zzd(new zzail(this, bitmapZzt));
            }
        }
    }
}
