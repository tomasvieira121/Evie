package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class zzaj implements zzm {
    private static final boolean DEBUG = zzaf.DEBUG;

    @Deprecated
    private final zzar zzbo;
    private final zzai zzbp;
    private final zzak zzbq;

    public zzaj(zzai zzaiVar) {
        this(zzaiVar, new zzak(CodedOutputStream.DEFAULT_BUFFER_SIZE));
    }

    private zzaj(zzai zzaiVar, zzak zzakVar) {
        this.zzbp = zzaiVar;
        this.zzbo = zzaiVar;
        this.zzbq = zzakVar;
    }

    @Deprecated
    public zzaj(zzar zzarVar) {
        this(zzarVar, new zzak(CodedOutputStream.DEFAULT_BUFFER_SIZE));
    }

    @Deprecated
    private zzaj(zzar zzarVar, zzak zzakVar) {
        this.zzbo = zzarVar;
        this.zzbp = new zzah(zzarVar);
        this.zzbq = zzakVar;
    }

    private static void zza(String str, zzr<?> zzrVar, zzae zzaeVar) throws zzae {
        zzab zzabVarZzj = zzrVar.zzj();
        int iZzi = zzrVar.zzi();
        try {
            zzabVarZzj.zza(zzaeVar);
            zzrVar.zzb(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(iZzi)));
        } catch (zzae e) {
            zzrVar.zzb(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(iZzi)));
            throw e;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final byte[] zza(InputStream inputStream, int i) throws IOException, zzac {
        zzau zzauVar = new zzau(this.zzbq, i);
        try {
            if (inputStream == null) {
                throw new zzac();
            }
            byte[] bArrZzb = this.zzbq.zzb(1024);
            while (true) {
                int i2 = inputStream.read(bArrZzb);
                if (i2 == -1) {
                    break;
                }
                zzauVar.write(bArrZzb, 0, i2);
            }
            byte[] byteArray = zzauVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                    zzaf.m357v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbq.zza(bArrZzb);
            zzauVar.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    zzaf.m357v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.zzbq.zza(null);
            zzauVar.close();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:116:0x01fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x01f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x01b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0197  */
    @Override // com.google.android.gms.internal.ads.zzm
    public zzp zzc(zzr<?> zzrVar) throws zzae {
        String str;
        zzae zzadVar;
        zzaq zzaqVarZza;
        byte[] bArr;
        int statusCode;
        zzp zzpVar;
        Map<String, String> mapEmptyMap;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            List<zzl> listEmptyList = Collections.emptyList();
            try {
                try {
                    zzc zzcVarZzf = zzrVar.zzf();
                    if (zzcVarZzf == null) {
                        mapEmptyMap = Collections.emptyMap();
                    } else {
                        HashMap map = new HashMap();
                        if (zzcVarZzf.zza != null) {
                            map.put("If-None-Match", zzcVarZzf.zza);
                        }
                        if (zzcVarZzf.zzc > 0) {
                            map.put("If-Modified-Since", zzap.zzb(zzcVarZzf.zzc));
                        }
                        mapEmptyMap = map;
                    }
                    zzaqVarZza = this.zzbp.zza(zzrVar, mapEmptyMap);
                    try {
                        int statusCode2 = zzaqVarZza.getStatusCode();
                        List<zzl> listZzq = zzaqVarZza.zzq();
                        if (statusCode2 == 304) {
                            zzc zzcVarZzf2 = zzrVar.zzf();
                            if (zzcVarZzf2 == null) {
                                return new zzp(304, (byte[]) null, true, SystemClock.elapsedRealtime() - jElapsedRealtime, listZzq);
                            }
                            TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                            if (!listZzq.isEmpty()) {
                                Iterator<zzl> it = listZzq.iterator();
                                while (it.hasNext()) {
                                    treeSet.add(it.next().getName());
                                }
                            }
                            ArrayList arrayList = new ArrayList(listZzq);
                            if (zzcVarZzf2.zzg != null) {
                                if (!zzcVarZzf2.zzg.isEmpty()) {
                                    for (zzl zzlVar : zzcVarZzf2.zzg) {
                                        if (!treeSet.contains(zzlVar.getName())) {
                                            arrayList.add(zzlVar);
                                        }
                                    }
                                }
                            } else if (!zzcVarZzf2.zzf.isEmpty()) {
                                for (Map.Entry<String, String> entry : zzcVarZzf2.zzf.entrySet()) {
                                    if (!treeSet.contains(entry.getKey())) {
                                        arrayList.add(new zzl(entry.getKey(), entry.getValue()));
                                    }
                                }
                            }
                            return new zzp(304, zzcVarZzf2.data, true, SystemClock.elapsedRealtime() - jElapsedRealtime, (List<zzl>) arrayList);
                        }
                        InputStream content = zzaqVarZza.getContent();
                        byte[] bArrZza = content != null ? zza(content, zzaqVarZza.getContentLength()) : new byte[0];
                        try {
                            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                            if (DEBUG || jElapsedRealtime2 > 3000) {
                                Object[] objArr = new Object[5];
                                objArr[0] = zzrVar;
                                objArr[1] = Long.valueOf(jElapsedRealtime2);
                                objArr[2] = bArrZza != null ? Integer.valueOf(bArrZza.length) : "null";
                                objArr[3] = Integer.valueOf(statusCode2);
                                objArr[4] = Integer.valueOf(zzrVar.zzj().zzd());
                                zzaf.m355d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
                            }
                            if (statusCode2 < 200 || statusCode2 > 299) {
                                throw new IOException();
                            }
                            return new zzp(statusCode2, bArrZza, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listZzq);
                        } catch (IOException e) {
                            e = e;
                            listEmptyList = listZzq;
                            bArr = bArrZza;
                            if (zzaqVarZza != null) {
                                throw new zzq(e);
                            }
                            statusCode = zzaqVarZza.getStatusCode();
                            zzaf.m356e("Unexpected response code %d for %s", Integer.valueOf(statusCode), zzrVar.getUrl());
                            if (bArr != null) {
                                zzpVar = new zzp(statusCode, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listEmptyList);
                                if (statusCode == 401 && statusCode != 403) {
                                    if (statusCode >= 400 && statusCode <= 499) {
                                        throw new zzg(zzpVar);
                                    }
                                    if (statusCode < 500 || statusCode > 599) {
                                        throw new zzac(zzpVar);
                                    }
                                    throw new zzac(zzpVar);
                                }
                                zza("auth", zzrVar, new zza(zzpVar));
                            } else {
                                str = "network";
                                zzadVar = new zzo();
                                zza(str, zzrVar, zzadVar);
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        bArr = null;
                        if (zzaqVarZza != null) {
                            throw new zzq(e);
                        }
                        statusCode = zzaqVarZza.getStatusCode();
                        zzaf.m356e("Unexpected response code %d for %s", Integer.valueOf(statusCode), zzrVar.getUrl());
                        if (bArr != null) {
                            zzpVar = new zzp(statusCode, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listEmptyList);
                            if (statusCode == 401) {
                            }
                            zza("auth", zzrVar, new zza(zzpVar));
                        } else {
                            str = "network";
                            zzadVar = new zzo();
                            zza(str, zzrVar, zzadVar);
                        }
                    }
                } catch (IOException e3) {
                    e = e3;
                    zzaqVarZza = null;
                }
            } catch (MalformedURLException e4) {
                String strValueOf = String.valueOf(zzrVar.getUrl());
                throw new RuntimeException(strValueOf.length() != 0 ? "Bad URL ".concat(strValueOf) : new String("Bad URL "), e4);
            } catch (SocketTimeoutException unused) {
                str = "socket";
                zzadVar = new zzad();
                zza(str, zzrVar, zzadVar);
            }
        }
    }
}
