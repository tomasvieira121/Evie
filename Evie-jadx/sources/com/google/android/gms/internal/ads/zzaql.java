package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzaql implements com.google.android.gms.ads.internal.gmsg.zzv<zzapw> {
    private static Integer zze(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzakb.zzdk(sb.toString());
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    /* JADX WARN: Code duplicated, block: B:33:0x0091  */
    /* JADX WARN: Code duplicated, block: B:36:0x009c  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.ads.internal.gmsg.zzv
    public final /* synthetic */ void zza(zzapw zzapwVar, Map map) {
        String str;
        Integer numZze;
        Integer numZze2;
        Integer numZze3;
        Integer numZze4;
        zzapw zzapwVar2 = zzapwVar;
        com.google.android.gms.ads.internal.zzbv.zzff();
        if (map.containsKey("abort")) {
            if (zzaqg.zzb(zzapwVar2)) {
                return;
            }
            zzakb.zzdk("Precache abort but no precache task running.");
            return;
        }
        String str2 = (String) map.get("src");
        if (str2 == null) {
            if (zzaqg.zzc(zzapwVar2) == null) {
                str = "Precache must specify a source.";
                zzakb.zzdk(str);
            }
            numZze = zze(map, "minBufferMs");
            if (numZze != null) {
                numZze.intValue();
            }
            numZze2 = zze(map, "maxBufferMs");
            if (numZze2 != null) {
                numZze2.intValue();
            }
            numZze3 = zze(map, "bufferForPlaybackMs");
            if (numZze3 != null) {
                numZze3.intValue();
            }
            numZze4 = zze(map, "bufferForPlaybackAfterRebufferMs");
            if (numZze4 != null) {
                numZze4.intValue();
                return;
            }
            return;
        }
        if (zzaqg.zzc(zzapwVar2) != null) {
            str = "Precache task is already running.";
        } else {
            if (zzapwVar2.zzbi() != null) {
                zzapv zzapvVar = new zzapv((String) map.get("flags"));
                Integer numZze5 = zze(map, "player");
                if (numZze5 == null) {
                    numZze5 = 0;
                }
                new zzaqe(zzapwVar2, zzapwVar2.zzbi().zzwy.zza(zzapwVar2, numZze5.intValue(), null, zzapvVar), str2).zznt();
                numZze = zze(map, "minBufferMs");
                if (numZze != null) {
                    numZze.intValue();
                }
                numZze2 = zze(map, "maxBufferMs");
                if (numZze2 != null) {
                    numZze2.intValue();
                }
                numZze3 = zze(map, "bufferForPlaybackMs");
                if (numZze3 != null) {
                    numZze3.intValue();
                }
                numZze4 = zze(map, "bufferForPlaybackAfterRebufferMs");
                if (numZze4 != null) {
                    numZze4.intValue();
                    return;
                }
                return;
            }
            str = "Precache requires a dependency provider.";
        }
        zzakb.zzdk(str);
    }
}
