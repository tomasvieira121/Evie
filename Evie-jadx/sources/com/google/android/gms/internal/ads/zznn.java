package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public final class zznn {
    private Context mContext;
    private String zzaej;
    private String zzbfx;
    private ExecutorService zzbga;
    private AtomicBoolean zzbgd;
    private File zzbge;
    private BlockingQueue<zznx> zzbfz = new ArrayBlockingQueue(100);
    private LinkedHashMap<String, String> zzbgb = new LinkedHashMap<>();
    private Map<String, zznr> zzbgc = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzjf() throws Throwable {
        while (true) {
            try {
                zznx zznxVarTake = this.zzbfz.take();
                String strZzjk = zznxVarTake.zzjk();
                if (!TextUtils.isEmpty(strZzjk)) {
                    Map<String, String> mapZza = zza(this.zzbgb, zznxVarTake.zzjl());
                    Uri.Builder builderBuildUpon = Uri.parse(this.zzbfx).buildUpon();
                    for (Map.Entry<String, String> entry : mapZza.entrySet()) {
                        builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    }
                    String str = builderBuildUpon.build().toString() + "&it=" + strZzjk;
                    if (this.zzbgd.get()) {
                        File file = this.zzbge;
                        if (file != null) {
                            FileOutputStream fileOutputStream = null;
                            try {
                                try {
                                    FileOutputStream fileOutputStream2 = new FileOutputStream(file, true);
                                    try {
                                        fileOutputStream2.write(str.getBytes());
                                        fileOutputStream2.write(10);
                                        try {
                                            fileOutputStream2.close();
                                        } catch (IOException e) {
                                            zzakb.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e);
                                        }
                                    } catch (IOException e2) {
                                        e = e2;
                                        fileOutputStream = fileOutputStream2;
                                        zzakb.zzc("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        fileOutputStream = fileOutputStream2;
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e3) {
                                                zzakb.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (IOException e4) {
                                    e = e4;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } else {
                            zzakb.zzdk("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
                        }
                    } else {
                        com.google.android.gms.ads.internal.zzbv.zzek();
                        zzakk.zzd(this.mContext, this.zzaej, str);
                    }
                }
            } catch (InterruptedException e5) {
                zzakb.zzc("CsiReporter:reporter interrupted", e5);
                return;
            }
        }
    }

    final Map<String, String> zza(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzal(key).zzd((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final void zza(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.mContext = context;
        this.zzaej = str;
        this.zzbfx = str2;
        this.zzbgd = new AtomicBoolean(false);
        this.zzbgd.set(((Boolean) zzkb.zzik().zzd(zznk.zzawj)).booleanValue());
        if (this.zzbgd.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzbge = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzbgb.put(entry.getKey(), entry.getValue());
        }
        this.zzbga = Executors.newSingleThreadExecutor();
        this.zzbga.execute(new zzno(this));
        this.zzbgc.put("action", zznr.zzbgh);
        this.zzbgc.put("ad_format", zznr.zzbgh);
        this.zzbgc.put("e", zznr.zzbgi);
    }

    public final boolean zza(zznx zznxVar) {
        return this.zzbfz.offer(zznxVar);
    }

    public final zznr zzal(String str) {
        zznr zznrVar = this.zzbgc.get(str);
        return zznrVar != null ? zznrVar : zznr.zzbgg;
    }

    public final void zzg(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzbgb.put("e", TextUtils.join(",", list));
    }
}
