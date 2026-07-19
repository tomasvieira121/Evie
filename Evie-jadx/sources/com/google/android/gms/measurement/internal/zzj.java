package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzfz;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzge;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzgk;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzyy;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes.dex */
final class zzj extends zzez {
    zzj(zzfa zzfaVar) {
        super(zzfaVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzez
    protected final boolean zzgt() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:104:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:106:0x02e4 A[LOOP:5: B:105:0x02e2->B:106:0x02e4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:112:0x0301  */
    /* JADX WARN: Code duplicated, block: B:115:0x033a  */
    /* JADX WARN: Code duplicated, block: B:117:0x0341  */
    /* JADX WARN: Code duplicated, block: B:119:0x0350  */
    /* JADX WARN: Code duplicated, block: B:122:0x035b  */
    /* JADX WARN: Code duplicated, block: B:123:0x036a  */
    /* JADX WARN: Code duplicated, block: B:129:0x039d  */
    /* JADX WARN: Code duplicated, block: B:130:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:133:0x041d  */
    /* JADX WARN: Code duplicated, block: B:135:0x0427  */
    /* JADX WARN: Code duplicated, block: B:137:0x0431  */
    /* JADX WARN: Code duplicated, block: B:141:0x0440  */
    /* JADX WARN: Code duplicated, block: B:146:0x0494  */
    /* JADX WARN: Code duplicated, block: B:147:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:149:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:151:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:152:0x0512  */
    /* JADX WARN: Code duplicated, block: B:153:0x051d  */
    /* JADX WARN: Code duplicated, block: B:157:0x053b  */
    /* JADX WARN: Code duplicated, block: B:159:0x0550  */
    /* JADX WARN: Code duplicated, block: B:160:0x0587  */
    /* JADX WARN: Code duplicated, block: B:163:0x058f  */
    /* JADX WARN: Code duplicated, block: B:401:0x02d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:404:0x046a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:405:0x0456 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:410:0x07a0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:65:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:66:0x0206  */
    /* JADX WARN: Code duplicated, block: B:72:0x021b  */
    /* JADX WARN: Code duplicated, block: B:74:0x0225  */
    /* JADX WARN: Code duplicated, block: B:80:0x024f  */
    /* JADX WARN: Code duplicated, block: B:95:0x029c  */
    /* JADX WARN: Code duplicated, block: B:98:0x02c3  */
    /* JADX WARN: Multi-variable type inference failed */
    final zzgd[] zza(String str, zzgf[] zzgfVarArr, zzgl[] zzglVarArr) {
        ArrayMap arrayMap;
        ArrayMap arrayMap2;
        ArrayMap arrayMap3;
        HashSet hashSet;
        ArrayMap arrayMap4;
        ArrayMap arrayMap5;
        ArrayMap arrayMap6;
        HashSet hashSet2;
        ArrayMap arrayMap7;
        ArrayMap arrayMap8;
        boolean z;
        ArrayMap arrayMap9;
        ArrayMap arrayMap10;
        Iterator it;
        ArrayMap arrayMap11;
        ArrayMap arrayMap12;
        zzgk[] zzgkVarArr;
        ArrayMap arrayMap13;
        Map map;
        Map map2;
        Map arrayMap14;
        Map map3;
        int i;
        boolean z2;
        Long l;
        long j;
        zzgf zzgfVar;
        String str2;
        zzgg[] zzggVarArr;
        zzz zzzVarZzg;
        ArrayMap arrayMap15;
        zzz zzzVarZziu;
        ArrayMap arrayMap16;
        Map<Integer, List<zzfv>> map4;
        Map<Integer, List<zzfv>> map5;
        Iterator<Integer> it2;
        ArrayMap arrayMap17;
        ArrayMap arrayMap18;
        HashSet hashSet3;
        int iIntValue;
        ArrayMap arrayMap19;
        zzgd zzgdVar;
        ArrayMap arrayMap20;
        BitSet bitSet;
        zzgf zzgfVar2;
        ArrayMap arrayMap21;
        BitSet bitSet2;
        ArrayMap arrayMap22;
        Map map6;
        Map map7;
        BitSet bitSet3;
        Map map8;
        Map map9;
        Iterator<zzfv> it3;
        zzfv next;
        BitSet bitSet4;
        BitSet bitSet5;
        Map map10;
        Map<Integer, List<zzfv>> mapZzl;
        boolean z3;
        Object objZzb;
        long jLongValue;
        String str3;
        Pair<zzgf, Long> pairZza;
        zzgf zzgfVar3;
        long j2;
        zzgf zzgfVar4;
        zzgg[] zzggVarArr2;
        zzgg[] zzggVarArr3;
        int length;
        int i2;
        int i3;
        zzgf zzgfVar5;
        int length2;
        int i4;
        zzgg zzggVar;
        zzq zzqVarZzjq;
        zzgf zzgfVar6;
        Iterator<Integer> it4;
        ArrayMap arrayMap23;
        BitSet bitSet6;
        ArrayMap arrayMap24;
        ArrayMap arrayMap25;
        ArrayMap arrayMap26;
        boolean z4;
        String str4 = str;
        zzgf[] zzgfVarArr2 = zzgfVarArr;
        Preconditions.checkNotEmpty(str);
        HashSet hashSet4 = new HashSet();
        ArrayMap arrayMap27 = new ArrayMap();
        ArrayMap arrayMap28 = new ArrayMap();
        ArrayMap arrayMap29 = new ArrayMap();
        ArrayMap arrayMap30 = new ArrayMap();
        ArrayMap arrayMap31 = new ArrayMap();
        boolean zZzd = zzgq().zzd(str4, zzaf.zzakw);
        Map<Integer, zzgj> mapZzbo = zzjq().zzbo(str4);
        if (mapZzbo != null) {
            Iterator<Integer> it5 = mapZzbo.keySet().iterator();
            while (it5.hasNext()) {
                int iIntValue2 = it5.next().intValue();
                zzgj zzgjVar = mapZzbo.get(Integer.valueOf(iIntValue2));
                BitSet bitSet7 = (BitSet) arrayMap28.get(Integer.valueOf(iIntValue2));
                BitSet bitSet8 = (BitSet) arrayMap29.get(Integer.valueOf(iIntValue2));
                if (zZzd) {
                    arrayMap23 = new ArrayMap();
                    if (zzgjVar != null) {
                        it4 = it5;
                        if (zzgjVar.zzayg != null) {
                            zzge[] zzgeVarArr = zzgjVar.zzayg;
                            int length3 = zzgeVarArr.length;
                            int i5 = 0;
                            while (i5 < length3) {
                                int i6 = length3;
                                zzge zzgeVar = zzgeVarArr[i5];
                                zzge[] zzgeVarArr2 = zzgeVarArr;
                                if (zzgeVar.zzawq != null) {
                                    arrayMap23.put(zzgeVar.zzawq, zzgeVar.zzawr);
                                }
                                i5++;
                                length3 = i6;
                                zzgeVarArr = zzgeVarArr2;
                            }
                        }
                        arrayMap30.put(Integer.valueOf(iIntValue2), arrayMap23);
                    } else {
                        it4 = it5;
                    }
                    arrayMap30.put(Integer.valueOf(iIntValue2), arrayMap23);
                } else {
                    it4 = it5;
                    bitSet8 = bitSet8;
                    hashSet4 = hashSet4;
                    arrayMap23 = null;
                }
                if (bitSet7 == null) {
                    bitSet7 = new BitSet();
                    arrayMap28.put(Integer.valueOf(iIntValue2), bitSet7);
                    bitSet6 = new BitSet();
                    arrayMap29.put(Integer.valueOf(iIntValue2), bitSet6);
                } else {
                    bitSet6 = bitSet8;
                }
                int i7 = 0;
                while (i7 < (zzgjVar.zzaye.length << 6)) {
                    if (zzfg.zza(zzgjVar.zzaye, i7)) {
                        arrayMap24 = arrayMap30;
                        arrayMap25 = arrayMap29;
                        arrayMap26 = arrayMap28;
                        zzgo().zzjl().zze("Filter already evaluated. audience ID, filter ID", Integer.valueOf(iIntValue2), Integer.valueOf(i7));
                        bitSet6.set(i7);
                        if (zzfg.zza(zzgjVar.zzayf, i7)) {
                            bitSet7.set(i7);
                            z4 = true;
                        }
                        if (arrayMap23 == null && !z4) {
                            arrayMap23.remove(Integer.valueOf(i7));
                        }
                        i7++;
                        arrayMap30 = arrayMap24;
                        arrayMap29 = arrayMap25;
                        arrayMap28 = arrayMap26;
                    } else {
                        arrayMap24 = arrayMap30;
                        arrayMap25 = arrayMap29;
                        arrayMap26 = arrayMap28;
                    }
                    z4 = false;
                    if (arrayMap23 == null) {
                    }
                    i7++;
                    arrayMap30 = arrayMap24;
                    arrayMap29 = arrayMap25;
                    arrayMap28 = arrayMap26;
                }
                ArrayMap arrayMap32 = arrayMap30;
                ArrayMap arrayMap33 = arrayMap29;
                ArrayMap arrayMap34 = arrayMap28;
                zzgd zzgdVar2 = new zzgd();
                arrayMap27.put(Integer.valueOf(iIntValue2), zzgdVar2);
                zzgdVar2.zzawo = false;
                zzgdVar2.zzawn = zzgjVar;
                zzgdVar2.zzawm = new zzgj();
                zzgdVar2.zzawm.zzayf = zzfg.zza(bitSet7);
                zzgdVar2.zzawm.zzaye = zzfg.zza(bitSet6);
                if (zZzd) {
                    zzgdVar2.zzawm.zzayg = zzd(arrayMap23);
                    arrayMap31.put(Integer.valueOf(iIntValue2), new ArrayMap());
                }
                mapZzbo = mapZzbo;
                it5 = it4;
                arrayMap30 = arrayMap32;
                hashSet4 = hashSet4;
                arrayMap29 = arrayMap33;
                arrayMap28 = arrayMap34;
            }
            arrayMap = arrayMap30;
            arrayMap2 = arrayMap29;
            arrayMap3 = arrayMap28;
            hashSet = hashSet4;
        } else {
            arrayMap = arrayMap30;
            arrayMap2 = arrayMap29;
            arrayMap3 = arrayMap28;
            hashSet = hashSet4;
        }
        if (zzgfVarArr2 != null) {
            ArrayMap arrayMap35 = new ArrayMap();
            int length4 = zzgfVarArr2.length;
            long j3 = 0;
            zzgf zzgfVar7 = null;
            Long l2 = null;
            int i8 = 0;
            while (i8 < length4) {
                zzgf zzgfVar8 = zzgfVarArr2[i8];
                String str5 = zzgfVar8.name;
                zzgg[] zzggVarArr4 = zzgfVar8.zzawt;
                long j4 = j3;
                if (zzgq().zzd(str4, zzaf.zzakq)) {
                    zzjo();
                    Long l3 = (Long) zzfg.zzb(zzgfVar8, "_eid");
                    boolean z5 = l3 != null;
                    if (z5) {
                        i = i8;
                        z3 = str5.equals("_ep");
                        if (z3) {
                            zzjo();
                            str3 = (String) zzfg.zzb(zzgfVar8, "_en");
                            if (TextUtils.isEmpty(str3)) {
                                zzgo().zzjd().zzg("Extra parameter without an event name. eventId", l3);
                            } else {
                                if (zzgfVar7 == null && l2 != null && l3.longValue() == l2.longValue()) {
                                    zzgfVar3 = zzgfVar7;
                                    l = l2;
                                } else {
                                    pairZza = zzjq().zza(str4, l3);
                                    if (pairZza != null || pairZza.first == null) {
                                        zzgo().zzjd().zze("Extra parameter without existing main event. eventName, eventId", str3, l3);
                                    } else {
                                        zzgf zzgfVar9 = (zzgf) pairZza.first;
                                        long jLongValue2 = ((Long) pairZza.second).longValue();
                                        zzjo();
                                        j4 = jLongValue2;
                                        l = (Long) zzfg.zzb(zzgfVar9, "_eid");
                                        zzgfVar3 = zzgfVar9;
                                    }
                                }
                                j2 = j4 - 1;
                                if (j2 <= 0) {
                                    zzqVarZzjq = zzjq();
                                    zzqVarZzjq.zzaf();
                                    zzqVarZzjq.zzgo().zzjl().zzg("Clearing complex main event info. appId", str4);
                                    try {
                                        SQLiteDatabase writableDatabase = zzqVarZzjq.getWritableDatabase();
                                        zzgfVar6 = zzgfVar3;
                                        try {
                                            String[] strArr = new String[1];
                                            try {
                                                strArr[0] = str4;
                                                writableDatabase.execSQL("delete from main_event_params where app_id=?", strArr);
                                                zzgfVar4 = zzgfVar6;
                                                z2 = true;
                                            } catch (SQLiteException e) {
                                                e = e;
                                                zzqVarZzjq.zzgo().zzjd().zzg("Error clearing complex main event", e);
                                                zzgfVar4 = zzgfVar6;
                                                z2 = true;
                                            }
                                        } catch (SQLiteException e2) {
                                            e = e2;
                                            zzqVarZzjq.zzgo().zzjd().zzg("Error clearing complex main event", e);
                                            zzgfVar4 = zzgfVar6;
                                            z2 = true;
                                            zzggVarArr2 = new zzgg[zzgfVar4.zzawt.length + zzggVarArr4.length];
                                            zzggVarArr3 = zzgfVar4.zzawt;
                                            length = zzggVarArr3.length;
                                            i2 = 0;
                                            i3 = 0;
                                            while (i2 < length) {
                                                zzggVar = zzggVarArr3[i2];
                                                zzjo();
                                                zzgf zzgfVar10 = zzgfVar4;
                                                if (zzfg.zza(zzgfVar8, zzggVar.name) == null) {
                                                    zzggVarArr2[i3] = zzggVar;
                                                    i3++;
                                                }
                                                i2++;
                                                zzgfVar4 = zzgfVar10;
                                            }
                                            zzgfVar5 = zzgfVar4;
                                            if (i3 > 0) {
                                                length2 = zzggVarArr4.length;
                                                i4 = 0;
                                                while (i4 < length2) {
                                                    zzggVarArr2[i3] = zzggVarArr4[i4];
                                                    i4++;
                                                    i3++;
                                                }
                                                if (i3 != zzggVarArr2.length) {
                                                    zzggVarArr2 = (zzgg[]) Arrays.copyOf(zzggVarArr2, i3);
                                                }
                                                j = j2;
                                                zzggVarArr = zzggVarArr2;
                                                str2 = str3;
                                                zzgfVar = zzgfVar5;
                                            } else {
                                                zzgo().zzjg().zzg("No unique parameters in main event. eventName", str3);
                                                str2 = str3;
                                                j = j2;
                                                zzggVarArr = zzggVarArr4;
                                                zzgfVar = zzgfVar5;
                                            }
                                            zzzVarZzg = zzjq().zzg(str4, zzgfVar8.name);
                                            if (zzzVarZzg == null) {
                                                zzgo().zzjg().zze("Event aggregate wasn't created during raw event logging. appId, event", zzap.zzbv(str), zzgl().zzbs(str2));
                                                arrayMap15 = arrayMap;
                                                zzzVarZziu = new zzz(str, zzgfVar8.name, 1L, 1L, zzgfVar8.zzawu.longValue(), 0L, null, null, null, null);
                                            } else {
                                                arrayMap15 = arrayMap;
                                                zzzVarZziu = zzzVarZzg.zziu();
                                            }
                                            zzjq().zza(zzzVarZziu);
                                            long j5 = zzzVarZziu.zzaie;
                                            arrayMap16 = arrayMap35;
                                            map4 = (Map) arrayMap16.get(str2);
                                            if (map4 == null) {
                                                mapZzl = zzjq().zzl(str4, str2);
                                                if (mapZzl == null) {
                                                    mapZzl = new ArrayMap<>();
                                                }
                                                arrayMap16.put(str2, mapZzl);
                                                map5 = mapZzl;
                                            } else {
                                                map5 = map4;
                                            }
                                            it2 = map5.keySet().iterator();
                                            while (it2.hasNext()) {
                                                iIntValue = it2.next().intValue();
                                                hashSet = hashSet;
                                                if (hashSet.contains(Integer.valueOf(iIntValue))) {
                                                    zzgo().zzjl().zzg("Skipping failed audience ID", Integer.valueOf(iIntValue));
                                                } else {
                                                    arrayMap19 = arrayMap27;
                                                    zzgdVar = (zzgd) arrayMap19.get(Integer.valueOf(iIntValue));
                                                    arrayMap20 = arrayMap3;
                                                    bitSet = (BitSet) arrayMap20.get(Integer.valueOf(iIntValue));
                                                    zzgfVar2 = zzgfVar8;
                                                    ArrayMap arrayMap36 = arrayMap16;
                                                    arrayMap21 = arrayMap2;
                                                    bitSet2 = (BitSet) arrayMap21.get(Integer.valueOf(iIntValue));
                                                    if (zZzd) {
                                                        arrayMap22 = arrayMap15;
                                                        map7 = (Map) arrayMap22.get(Integer.valueOf(iIntValue));
                                                        arrayMap31 = arrayMap31;
                                                        map6 = (Map) arrayMap31.get(Integer.valueOf(iIntValue));
                                                    } else {
                                                        arrayMap31 = arrayMap31;
                                                        arrayMap22 = arrayMap15;
                                                        map6 = null;
                                                        map7 = null;
                                                    }
                                                    if (zzgdVar == null) {
                                                        zzgd zzgdVar3 = new zzgd();
                                                        arrayMap19.put(Integer.valueOf(iIntValue), zzgdVar3);
                                                        zzgdVar3.zzawo = Boolean.valueOf(z2);
                                                        bitSet = new BitSet();
                                                        arrayMap20.put(Integer.valueOf(iIntValue), bitSet);
                                                        bitSet5 = new BitSet();
                                                        map10 = map6;
                                                        arrayMap21.put(Integer.valueOf(iIntValue), bitSet5);
                                                        if (zZzd) {
                                                            ArrayMap arrayMap37 = new ArrayMap();
                                                            arrayMap22.put(Integer.valueOf(iIntValue), arrayMap37);
                                                            ArrayMap arrayMap38 = new ArrayMap();
                                                            arrayMap31.put(Integer.valueOf(iIntValue), arrayMap38);
                                                            bitSet3 = bitSet5;
                                                            map8 = arrayMap37;
                                                            map9 = arrayMap38;
                                                        } else {
                                                            bitSet3 = bitSet5;
                                                            map8 = map7;
                                                            map9 = map10;
                                                        }
                                                    } else {
                                                        Map map11 = map6;
                                                        bitSet3 = bitSet2;
                                                        map8 = map7;
                                                        map9 = map11;
                                                    }
                                                    it3 = map5.get(Integer.valueOf(iIntValue)).iterator();
                                                    while (it3.hasNext()) {
                                                        next = it3.next();
                                                        bitSet4 = bitSet3;
                                                        map5 = map5;
                                                        if (zzgo().isLoggable(2)) {
                                                            zzgo().zzjl().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(iIntValue), next.zzave, zzgl().zzbs(next.zzavf));
                                                            zzgo().zzjl().zzg("Filter definition", zzjo().zza(next));
                                                        }
                                                        if (next.zzave != null) {
                                                        }
                                                        zzgo().zzjg().zze("Invalid event filter ID. appId, id", zzap.zzbv(str), String.valueOf(next.zzave));
                                                        bitSet = bitSet;
                                                        bitSet3 = bitSet4;
                                                        map8 = map8;
                                                        str2 = str2;
                                                        arrayMap21 = arrayMap21;
                                                        arrayMap20 = arrayMap20;
                                                        zzgfVar2 = zzgfVar2;
                                                        arrayMap19 = arrayMap19;
                                                    }
                                                    arrayMap27 = arrayMap19;
                                                    arrayMap3 = arrayMap20;
                                                    arrayMap2 = arrayMap21;
                                                    arrayMap15 = arrayMap22;
                                                    zzgfVar8 = zzgfVar2;
                                                    it2 = it2;
                                                    arrayMap16 = arrayMap36;
                                                }
                                            }
                                            arrayMap17 = arrayMap16;
                                            arrayMap18 = arrayMap3;
                                            hashSet3 = hashSet;
                                            zzgfVar7 = zzgfVar;
                                            l2 = l;
                                            j3 = j;
                                            i8 = i + 1;
                                            zzgfVarArr2 = zzgfVarArr;
                                            hashSet = hashSet3;
                                            arrayMap31 = arrayMap31;
                                            length4 = length4;
                                            arrayMap2 = arrayMap2;
                                            arrayMap35 = arrayMap17;
                                            arrayMap27 = arrayMap27;
                                            arrayMap = arrayMap15;
                                            arrayMap3 = arrayMap18;
                                            str4 = str;
                                        }
                                    } catch (SQLiteException e3) {
                                        e = e3;
                                        zzgfVar6 = zzgfVar3;
                                    }
                                } else {
                                    zzgf zzgfVar11 = zzgfVar3;
                                    z2 = true;
                                    zzjq().zza(str, l3, j2, zzgfVar11);
                                    zzgfVar4 = zzgfVar11;
                                }
                                zzggVarArr2 = new zzgg[zzgfVar4.zzawt.length + zzggVarArr4.length];
                                zzggVarArr3 = zzgfVar4.zzawt;
                                length = zzggVarArr3.length;
                                i2 = 0;
                                i3 = 0;
                                while (i2 < length) {
                                    zzggVar = zzggVarArr3[i2];
                                    zzjo();
                                    zzgf zzgfVar12 = zzgfVar4;
                                    if (zzfg.zza(zzgfVar8, zzggVar.name) == null) {
                                        zzggVarArr2[i3] = zzggVar;
                                        i3++;
                                    }
                                    i2++;
                                    zzgfVar4 = zzgfVar12;
                                }
                                zzgfVar5 = zzgfVar4;
                                if (i3 > 0) {
                                    length2 = zzggVarArr4.length;
                                    i4 = 0;
                                    while (i4 < length2) {
                                        zzggVarArr2[i3] = zzggVarArr4[i4];
                                        i4++;
                                        i3++;
                                    }
                                    if (i3 != zzggVarArr2.length) {
                                        zzggVarArr2 = (zzgg[]) Arrays.copyOf(zzggVarArr2, i3);
                                    }
                                    j = j2;
                                    zzggVarArr = zzggVarArr2;
                                    str2 = str3;
                                    zzgfVar = zzgfVar5;
                                } else {
                                    zzgo().zzjg().zzg("No unique parameters in main event. eventName", str3);
                                    str2 = str3;
                                    j = j2;
                                    zzggVarArr = zzggVarArr4;
                                    zzgfVar = zzgfVar5;
                                }
                            }
                            length4 = length4;
                            arrayMap17 = arrayMap35;
                            arrayMap27 = arrayMap27;
                            arrayMap15 = arrayMap;
                            hashSet3 = hashSet;
                            arrayMap2 = arrayMap2;
                            arrayMap18 = arrayMap3;
                            j3 = j4;
                            i8 = i + 1;
                            zzgfVarArr2 = zzgfVarArr;
                            hashSet = hashSet3;
                            arrayMap31 = arrayMap31;
                            length4 = length4;
                            arrayMap2 = arrayMap2;
                            arrayMap35 = arrayMap17;
                            arrayMap27 = arrayMap27;
                            arrayMap = arrayMap15;
                            arrayMap3 = arrayMap18;
                            str4 = str;
                        } else {
                            zzgfVar8 = zzgfVar8;
                            arrayMap31 = arrayMap31;
                            z2 = true;
                            if (z5) {
                                zzjo();
                                objZzb = zzfg.zzb(zzgfVar8, "_epc");
                                if (objZzb == null) {
                                    objZzb = 0L;
                                }
                                jLongValue = ((Long) objZzb).longValue();
                                if (jLongValue <= 0) {
                                    zzgo().zzjg().zzg("Complex event with zero extra param count. eventName", str5);
                                } else {
                                    zzjq().zza(str, l3, jLongValue, zzgfVar8);
                                }
                                l = l3;
                                str2 = str5;
                                zzggVarArr = zzggVarArr4;
                                zzgfVar = zzgfVar8;
                                j = jLongValue;
                            }
                        }
                        zzzVarZzg = zzjq().zzg(str4, zzgfVar8.name);
                        if (zzzVarZzg == null) {
                            zzgo().zzjg().zze("Event aggregate wasn't created during raw event logging. appId, event", zzap.zzbv(str), zzgl().zzbs(str2));
                            arrayMap15 = arrayMap;
                            zzzVarZziu = new zzz(str, zzgfVar8.name, 1L, 1L, zzgfVar8.zzawu.longValue(), 0L, null, null, null, null);
                        } else {
                            arrayMap15 = arrayMap;
                            zzzVarZziu = zzzVarZzg.zziu();
                        }
                        zzjq().zza(zzzVarZziu);
                        long j6 = zzzVarZziu.zzaie;
                        arrayMap16 = arrayMap35;
                        map4 = (Map) arrayMap16.get(str2);
                        if (map4 == null) {
                            mapZzl = zzjq().zzl(str4, str2);
                            if (mapZzl == null) {
                                mapZzl = new ArrayMap<>();
                            }
                            arrayMap16.put(str2, mapZzl);
                            map5 = mapZzl;
                        } else {
                            map5 = map4;
                        }
                        it2 = map5.keySet().iterator();
                        while (it2.hasNext()) {
                            iIntValue = it2.next().intValue();
                            hashSet = hashSet;
                            if (hashSet.contains(Integer.valueOf(iIntValue))) {
                                zzgo().zzjl().zzg("Skipping failed audience ID", Integer.valueOf(iIntValue));
                            } else {
                                arrayMap19 = arrayMap27;
                                zzgdVar = (zzgd) arrayMap19.get(Integer.valueOf(iIntValue));
                                arrayMap20 = arrayMap3;
                                bitSet = (BitSet) arrayMap20.get(Integer.valueOf(iIntValue));
                                zzgfVar2 = zzgfVar8;
                                ArrayMap arrayMap39 = arrayMap16;
                                arrayMap21 = arrayMap2;
                                bitSet2 = (BitSet) arrayMap21.get(Integer.valueOf(iIntValue));
                                if (zZzd) {
                                    arrayMap22 = arrayMap15;
                                    map7 = (Map) arrayMap22.get(Integer.valueOf(iIntValue));
                                    arrayMap31 = arrayMap31;
                                    map6 = (Map) arrayMap31.get(Integer.valueOf(iIntValue));
                                } else {
                                    arrayMap31 = arrayMap31;
                                    arrayMap22 = arrayMap15;
                                    map6 = null;
                                    map7 = null;
                                }
                                if (zzgdVar == null) {
                                    zzgd zzgdVar4 = new zzgd();
                                    arrayMap19.put(Integer.valueOf(iIntValue), zzgdVar4);
                                    zzgdVar4.zzawo = Boolean.valueOf(z2);
                                    bitSet = new BitSet();
                                    arrayMap20.put(Integer.valueOf(iIntValue), bitSet);
                                    bitSet5 = new BitSet();
                                    map10 = map6;
                                    arrayMap21.put(Integer.valueOf(iIntValue), bitSet5);
                                    if (zZzd) {
                                        ArrayMap arrayMap310 = new ArrayMap();
                                        arrayMap22.put(Integer.valueOf(iIntValue), arrayMap310);
                                        ArrayMap arrayMap311 = new ArrayMap();
                                        arrayMap31.put(Integer.valueOf(iIntValue), arrayMap311);
                                        bitSet3 = bitSet5;
                                        map8 = arrayMap310;
                                        map9 = arrayMap311;
                                    } else {
                                        bitSet3 = bitSet5;
                                        map8 = map7;
                                        map9 = map10;
                                    }
                                } else {
                                    Map map12 = map6;
                                    bitSet3 = bitSet2;
                                    map8 = map7;
                                    map9 = map12;
                                }
                                it3 = map5.get(Integer.valueOf(iIntValue)).iterator();
                                while (it3.hasNext()) {
                                    next = it3.next();
                                    bitSet4 = bitSet3;
                                    map5 = map5;
                                    if (zzgo().isLoggable(2)) {
                                        zzgo().zzjl().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(iIntValue), next.zzave, zzgl().zzbs(next.zzavf));
                                        zzgo().zzjl().zzg("Filter definition", zzjo().zza(next));
                                    }
                                    if (next.zzave != null || next.zzave.intValue() > 256) {
                                        zzgo().zzjg().zze("Invalid event filter ID. appId, id", zzap.zzbv(str), String.valueOf(next.zzave));
                                        bitSet = bitSet;
                                        bitSet3 = bitSet4;
                                        map8 = map8;
                                        str2 = str2;
                                        arrayMap21 = arrayMap21;
                                        arrayMap20 = arrayMap20;
                                        zzgfVar2 = zzgfVar2;
                                        arrayMap19 = arrayMap19;
                                    } else if (zZzd) {
                                        boolean z6 = (next == null || next.zzavb == null || !next.zzavb.booleanValue()) ? false : true;
                                        boolean z7 = (next == null || next.zzavc == null || !next.zzavc.booleanValue()) ? false : true;
                                        if (bitSet.get(next.zzave.intValue()) && !z6 && !z7) {
                                            zzgo().zzjl().zze("Event filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID", Integer.valueOf(iIntValue), next.zzave);
                                            bitSet3 = bitSet4;
                                            arrayMap20 = arrayMap20;
                                        } else {
                                            Map map13 = map8;
                                            zzgf zzgfVar13 = zzgfVar2;
                                            ArrayMap arrayMap40 = arrayMap21;
                                            ArrayMap arrayMap41 = arrayMap19;
                                            BitSet bitSet9 = bitSet;
                                            String str6 = str2;
                                            ArrayMap arrayMap42 = arrayMap20;
                                            Boolean boolZza = zza(next, str2, zzggVarArr, j6);
                                            zzgo().zzjl().zzg("Event filter result", boolZza == null ? "null" : boolZza);
                                            if (boolZza == null) {
                                                hashSet.add(Integer.valueOf(iIntValue));
                                                bitSet = bitSet9;
                                                bitSet3 = bitSet4;
                                                str2 = str6;
                                                arrayMap21 = arrayMap40;
                                                arrayMap20 = arrayMap42;
                                                map8 = map13;
                                                zzgfVar2 = zzgfVar13;
                                                arrayMap19 = arrayMap41;
                                            } else {
                                                bitSet4.set(next.zzave.intValue());
                                                if (boolZza.booleanValue()) {
                                                    bitSet9.set(next.zzave.intValue());
                                                    if (!(z6 || z7) || zzgfVar13.zzawu == null) {
                                                        bitSet = bitSet9;
                                                        bitSet3 = bitSet4;
                                                        str2 = str6;
                                                        arrayMap21 = arrayMap40;
                                                        arrayMap20 = arrayMap42;
                                                        map8 = map13;
                                                        zzgfVar2 = zzgfVar13;
                                                        arrayMap19 = arrayMap41;
                                                    } else if (z7) {
                                                        zzb(map9, next.zzave.intValue(), zzgfVar13.zzawu.longValue());
                                                        bitSet = bitSet9;
                                                        bitSet3 = bitSet4;
                                                        str2 = str6;
                                                        arrayMap21 = arrayMap40;
                                                        arrayMap20 = arrayMap42;
                                                        map8 = map13;
                                                        zzgfVar2 = zzgfVar13;
                                                        arrayMap19 = arrayMap41;
                                                    } else {
                                                        zza((Map<Integer, Long>) map13, next.zzave.intValue(), zzgfVar13.zzawu.longValue());
                                                        bitSet = bitSet9;
                                                        bitSet3 = bitSet4;
                                                        map8 = map13;
                                                        str2 = str6;
                                                        arrayMap21 = arrayMap40;
                                                        arrayMap20 = arrayMap42;
                                                        zzgfVar2 = zzgfVar13;
                                                        arrayMap19 = arrayMap41;
                                                    }
                                                } else {
                                                    bitSet = bitSet9;
                                                    bitSet3 = bitSet4;
                                                    str2 = str6;
                                                    arrayMap21 = arrayMap40;
                                                    arrayMap20 = arrayMap42;
                                                    map8 = map13;
                                                    zzgfVar2 = zzgfVar13;
                                                    arrayMap19 = arrayMap41;
                                                }
                                            }
                                        }
                                    } else {
                                        ArrayMap arrayMap43 = arrayMap21;
                                        ArrayMap arrayMap44 = arrayMap19;
                                        zzgf zzgfVar14 = zzgfVar2;
                                        Map map14 = map8;
                                        ArrayMap arrayMap45 = arrayMap20;
                                        String str7 = str2;
                                        BitSet bitSet10 = bitSet;
                                        if (bitSet10.get(next.zzave.intValue())) {
                                            zzgo().zzjl().zze("Event filter already evaluated true. audience ID, filter ID", Integer.valueOf(iIntValue), next.zzave);
                                            bitSet = bitSet10;
                                            bitSet3 = bitSet4;
                                            map8 = map14;
                                            str2 = str7;
                                            arrayMap21 = arrayMap43;
                                            arrayMap20 = arrayMap45;
                                            zzgfVar2 = zzgfVar14;
                                            arrayMap19 = arrayMap44;
                                        } else {
                                            Boolean boolZza2 = zza(next, str7, zzggVarArr, j6);
                                            zzgo().zzjl().zzg("Event filter result", boolZza2 == null ? "null" : boolZza2);
                                            if (boolZza2 == null) {
                                                hashSet.add(Integer.valueOf(iIntValue));
                                                bitSet = bitSet10;
                                                bitSet3 = bitSet4;
                                                map8 = map14;
                                                str2 = str7;
                                                arrayMap21 = arrayMap43;
                                                arrayMap20 = arrayMap45;
                                                zzgfVar2 = zzgfVar14;
                                                arrayMap19 = arrayMap44;
                                            } else {
                                                bitSet4.set(next.zzave.intValue());
                                                if (boolZza2.booleanValue()) {
                                                    bitSet10.set(next.zzave.intValue());
                                                }
                                                bitSet = bitSet10;
                                                bitSet3 = bitSet4;
                                                map8 = map14;
                                                str2 = str7;
                                                arrayMap21 = arrayMap43;
                                                arrayMap20 = arrayMap45;
                                                zzgfVar2 = zzgfVar14;
                                                arrayMap19 = arrayMap44;
                                            }
                                        }
                                    }
                                }
                                arrayMap27 = arrayMap19;
                                arrayMap3 = arrayMap20;
                                arrayMap2 = arrayMap21;
                                arrayMap15 = arrayMap22;
                                zzgfVar8 = zzgfVar2;
                                it2 = it2;
                                arrayMap16 = arrayMap39;
                            }
                        }
                        arrayMap17 = arrayMap16;
                        arrayMap18 = arrayMap3;
                        hashSet3 = hashSet;
                        zzgfVar7 = zzgfVar;
                        l2 = l;
                        j3 = j;
                        i8 = i + 1;
                        zzgfVarArr2 = zzgfVarArr;
                        hashSet = hashSet3;
                        arrayMap31 = arrayMap31;
                        length4 = length4;
                        arrayMap2 = arrayMap2;
                        arrayMap35 = arrayMap17;
                        arrayMap27 = arrayMap27;
                        arrayMap = arrayMap15;
                        arrayMap3 = arrayMap18;
                        str4 = str;
                    } else {
                        i = i8;
                    }
                    if (z3) {
                        zzjo();
                        str3 = (String) zzfg.zzb(zzgfVar8, "_en");
                        if (TextUtils.isEmpty(str3)) {
                            zzgo().zzjd().zzg("Extra parameter without an event name. eventId", l3);
                        } else {
                            if (zzgfVar7 == null) {
                                pairZza = zzjq().zza(str4, l3);
                                if (pairZza != null) {
                                }
                                zzgo().zzjd().zze("Extra parameter without existing main event. eventName, eventId", str3, l3);
                            } else {
                                pairZza = zzjq().zza(str4, l3);
                                if (pairZza != null) {
                                }
                                zzgo().zzjd().zze("Extra parameter without existing main event. eventName, eventId", str3, l3);
                            }
                            j2 = j4 - 1;
                            if (j2 <= 0) {
                                zzqVarZzjq = zzjq();
                                zzqVarZzjq.zzaf();
                                zzqVarZzjq.zzgo().zzjl().zzg("Clearing complex main event info. appId", str4);
                                SQLiteDatabase writableDatabase2 = zzqVarZzjq.getWritableDatabase();
                                zzgfVar6 = zzgfVar3;
                                String[] strArr2 = new String[1];
                                strArr2[0] = str4;
                                writableDatabase2.execSQL("delete from main_event_params where app_id=?", strArr2);
                                zzgfVar4 = zzgfVar6;
                                z2 = true;
                            } else {
                                zzgf zzgfVar15 = zzgfVar3;
                                z2 = true;
                                zzjq().zza(str, l3, j2, zzgfVar15);
                                zzgfVar4 = zzgfVar15;
                            }
                            zzggVarArr2 = new zzgg[zzgfVar4.zzawt.length + zzggVarArr4.length];
                            zzggVarArr3 = zzgfVar4.zzawt;
                            length = zzggVarArr3.length;
                            i2 = 0;
                            i3 = 0;
                            while (i2 < length) {
                                zzggVar = zzggVarArr3[i2];
                                zzjo();
                                zzgf zzgfVar16 = zzgfVar4;
                                if (zzfg.zza(zzgfVar8, zzggVar.name) == null) {
                                    zzggVarArr2[i3] = zzggVar;
                                    i3++;
                                }
                                i2++;
                                zzgfVar4 = zzgfVar16;
                            }
                            zzgfVar5 = zzgfVar4;
                            if (i3 > 0) {
                                length2 = zzggVarArr4.length;
                                i4 = 0;
                                while (i4 < length2) {
                                    zzggVarArr2[i3] = zzggVarArr4[i4];
                                    i4++;
                                    i3++;
                                }
                                if (i3 != zzggVarArr2.length) {
                                    zzggVarArr2 = (zzgg[]) Arrays.copyOf(zzggVarArr2, i3);
                                }
                                j = j2;
                                zzggVarArr = zzggVarArr2;
                                str2 = str3;
                                zzgfVar = zzgfVar5;
                            } else {
                                zzgo().zzjg().zzg("No unique parameters in main event. eventName", str3);
                                str2 = str3;
                                j = j2;
                                zzggVarArr = zzggVarArr4;
                                zzgfVar = zzgfVar5;
                            }
                        }
                        length4 = length4;
                        arrayMap17 = arrayMap35;
                        arrayMap27 = arrayMap27;
                        arrayMap15 = arrayMap;
                        hashSet3 = hashSet;
                        arrayMap2 = arrayMap2;
                        arrayMap18 = arrayMap3;
                        j3 = j4;
                        i8 = i + 1;
                        zzgfVarArr2 = zzgfVarArr;
                        hashSet = hashSet3;
                        arrayMap31 = arrayMap31;
                        length4 = length4;
                        arrayMap2 = arrayMap2;
                        arrayMap35 = arrayMap17;
                        arrayMap27 = arrayMap27;
                        arrayMap = arrayMap15;
                        arrayMap3 = arrayMap18;
                        str4 = str;
                    } else {
                        zzgfVar8 = zzgfVar8;
                        arrayMap31 = arrayMap31;
                        z2 = true;
                        if (z5) {
                            zzjo();
                            objZzb = zzfg.zzb(zzgfVar8, "_epc");
                            if (objZzb == null) {
                                objZzb = 0L;
                            }
                            jLongValue = ((Long) objZzb).longValue();
                            if (jLongValue <= 0) {
                                zzgo().zzjg().zzg("Complex event with zero extra param count. eventName", str5);
                            } else {
                                zzjq().zza(str, l3, jLongValue, zzgfVar8);
                            }
                            l = l3;
                            str2 = str5;
                            zzggVarArr = zzggVarArr4;
                            zzgfVar = zzgfVar8;
                            j = jLongValue;
                        }
                    }
                    zzzVarZzg = zzjq().zzg(str4, zzgfVar8.name);
                    if (zzzVarZzg == null) {
                        zzgo().zzjg().zze("Event aggregate wasn't created during raw event logging. appId, event", zzap.zzbv(str), zzgl().zzbs(str2));
                        arrayMap15 = arrayMap;
                        zzzVarZziu = new zzz(str, zzgfVar8.name, 1L, 1L, zzgfVar8.zzawu.longValue(), 0L, null, null, null, null);
                    } else {
                        arrayMap15 = arrayMap;
                        zzzVarZziu = zzzVarZzg.zziu();
                    }
                    zzjq().zza(zzzVarZziu);
                    long j7 = zzzVarZziu.zzaie;
                    arrayMap16 = arrayMap35;
                    map4 = (Map) arrayMap16.get(str2);
                    if (map4 == null) {
                        mapZzl = zzjq().zzl(str4, str2);
                        if (mapZzl == null) {
                            mapZzl = new ArrayMap<>();
                        }
                        arrayMap16.put(str2, mapZzl);
                        map5 = mapZzl;
                    } else {
                        map5 = map4;
                    }
                    it2 = map5.keySet().iterator();
                    while (it2.hasNext()) {
                        iIntValue = it2.next().intValue();
                        hashSet = hashSet;
                        if (hashSet.contains(Integer.valueOf(iIntValue))) {
                            zzgo().zzjl().zzg("Skipping failed audience ID", Integer.valueOf(iIntValue));
                        } else {
                            arrayMap19 = arrayMap27;
                            zzgdVar = (zzgd) arrayMap19.get(Integer.valueOf(iIntValue));
                            arrayMap20 = arrayMap3;
                            bitSet = (BitSet) arrayMap20.get(Integer.valueOf(iIntValue));
                            zzgfVar2 = zzgfVar8;
                            ArrayMap arrayMap312 = arrayMap16;
                            arrayMap21 = arrayMap2;
                            bitSet2 = (BitSet) arrayMap21.get(Integer.valueOf(iIntValue));
                            if (zZzd) {
                                arrayMap22 = arrayMap15;
                                map7 = (Map) arrayMap22.get(Integer.valueOf(iIntValue));
                                arrayMap31 = arrayMap31;
                                map6 = (Map) arrayMap31.get(Integer.valueOf(iIntValue));
                            } else {
                                arrayMap31 = arrayMap31;
                                arrayMap22 = arrayMap15;
                                map6 = null;
                                map7 = null;
                            }
                            if (zzgdVar == null) {
                                zzgd zzgdVar5 = new zzgd();
                                arrayMap19.put(Integer.valueOf(iIntValue), zzgdVar5);
                                zzgdVar5.zzawo = Boolean.valueOf(z2);
                                bitSet = new BitSet();
                                arrayMap20.put(Integer.valueOf(iIntValue), bitSet);
                                bitSet5 = new BitSet();
                                map10 = map6;
                                arrayMap21.put(Integer.valueOf(iIntValue), bitSet5);
                                if (zZzd) {
                                    ArrayMap arrayMap313 = new ArrayMap();
                                    arrayMap22.put(Integer.valueOf(iIntValue), arrayMap313);
                                    ArrayMap arrayMap314 = new ArrayMap();
                                    arrayMap31.put(Integer.valueOf(iIntValue), arrayMap314);
                                    bitSet3 = bitSet5;
                                    map8 = arrayMap313;
                                    map9 = arrayMap314;
                                } else {
                                    bitSet3 = bitSet5;
                                    map8 = map7;
                                    map9 = map10;
                                }
                            } else {
                                Map map15 = map6;
                                bitSet3 = bitSet2;
                                map8 = map7;
                                map9 = map15;
                            }
                            it3 = map5.get(Integer.valueOf(iIntValue)).iterator();
                            while (it3.hasNext()) {
                                next = it3.next();
                                bitSet4 = bitSet3;
                                map5 = map5;
                                if (zzgo().isLoggable(2)) {
                                    zzgo().zzjl().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(iIntValue), next.zzave, zzgl().zzbs(next.zzavf));
                                    zzgo().zzjl().zzg("Filter definition", zzjo().zza(next));
                                }
                                if (next.zzave != null) {
                                }
                                zzgo().zzjg().zze("Invalid event filter ID. appId, id", zzap.zzbv(str), String.valueOf(next.zzave));
                                bitSet = bitSet;
                                bitSet3 = bitSet4;
                                map8 = map8;
                                str2 = str2;
                                arrayMap21 = arrayMap21;
                                arrayMap20 = arrayMap20;
                                zzgfVar2 = zzgfVar2;
                                arrayMap19 = arrayMap19;
                            }
                            arrayMap27 = arrayMap19;
                            arrayMap3 = arrayMap20;
                            arrayMap2 = arrayMap21;
                            arrayMap15 = arrayMap22;
                            zzgfVar8 = zzgfVar2;
                            it2 = it2;
                            arrayMap16 = arrayMap312;
                        }
                    }
                    arrayMap17 = arrayMap16;
                    arrayMap18 = arrayMap3;
                    hashSet3 = hashSet;
                    zzgfVar7 = zzgfVar;
                    l2 = l;
                    j3 = j;
                    i8 = i + 1;
                    zzgfVarArr2 = zzgfVarArr;
                    hashSet = hashSet3;
                    arrayMap31 = arrayMap31;
                    length4 = length4;
                    arrayMap2 = arrayMap2;
                    arrayMap35 = arrayMap17;
                    arrayMap27 = arrayMap27;
                    arrayMap = arrayMap15;
                    arrayMap3 = arrayMap18;
                    str4 = str;
                } else {
                    i = i8;
                    zzgfVar8 = zzgfVar8;
                    arrayMap31 = arrayMap31;
                    z2 = true;
                }
                l = l2;
                j = j4;
                zzgfVar = zzgfVar7;
                str2 = str5;
                zzggVarArr = zzggVarArr4;
                zzzVarZzg = zzjq().zzg(str4, zzgfVar8.name);
                if (zzzVarZzg == null) {
                    zzgo().zzjg().zze("Event aggregate wasn't created during raw event logging. appId, event", zzap.zzbv(str), zzgl().zzbs(str2));
                    arrayMap15 = arrayMap;
                    zzzVarZziu = new zzz(str, zzgfVar8.name, 1L, 1L, zzgfVar8.zzawu.longValue(), 0L, null, null, null, null);
                } else {
                    arrayMap15 = arrayMap;
                    zzzVarZziu = zzzVarZzg.zziu();
                }
                zzjq().zza(zzzVarZziu);
                long j8 = zzzVarZziu.zzaie;
                arrayMap16 = arrayMap35;
                map4 = (Map) arrayMap16.get(str2);
                if (map4 == null) {
                    mapZzl = zzjq().zzl(str4, str2);
                    if (mapZzl == null) {
                        mapZzl = new ArrayMap<>();
                    }
                    arrayMap16.put(str2, mapZzl);
                    map5 = mapZzl;
                } else {
                    map5 = map4;
                }
                it2 = map5.keySet().iterator();
                while (it2.hasNext()) {
                    iIntValue = it2.next().intValue();
                    hashSet = hashSet;
                    if (hashSet.contains(Integer.valueOf(iIntValue))) {
                        zzgo().zzjl().zzg("Skipping failed audience ID", Integer.valueOf(iIntValue));
                    } else {
                        arrayMap19 = arrayMap27;
                        zzgdVar = (zzgd) arrayMap19.get(Integer.valueOf(iIntValue));
                        arrayMap20 = arrayMap3;
                        bitSet = (BitSet) arrayMap20.get(Integer.valueOf(iIntValue));
                        zzgfVar2 = zzgfVar8;
                        ArrayMap arrayMap315 = arrayMap16;
                        arrayMap21 = arrayMap2;
                        bitSet2 = (BitSet) arrayMap21.get(Integer.valueOf(iIntValue));
                        if (zZzd) {
                            arrayMap22 = arrayMap15;
                            map7 = (Map) arrayMap22.get(Integer.valueOf(iIntValue));
                            arrayMap31 = arrayMap31;
                            map6 = (Map) arrayMap31.get(Integer.valueOf(iIntValue));
                        } else {
                            arrayMap31 = arrayMap31;
                            arrayMap22 = arrayMap15;
                            map6 = null;
                            map7 = null;
                        }
                        if (zzgdVar == null) {
                            zzgd zzgdVar6 = new zzgd();
                            arrayMap19.put(Integer.valueOf(iIntValue), zzgdVar6);
                            zzgdVar6.zzawo = Boolean.valueOf(z2);
                            bitSet = new BitSet();
                            arrayMap20.put(Integer.valueOf(iIntValue), bitSet);
                            bitSet5 = new BitSet();
                            map10 = map6;
                            arrayMap21.put(Integer.valueOf(iIntValue), bitSet5);
                            if (zZzd) {
                                ArrayMap arrayMap316 = new ArrayMap();
                                arrayMap22.put(Integer.valueOf(iIntValue), arrayMap316);
                                ArrayMap arrayMap317 = new ArrayMap();
                                arrayMap31.put(Integer.valueOf(iIntValue), arrayMap317);
                                bitSet3 = bitSet5;
                                map8 = arrayMap316;
                                map9 = arrayMap317;
                            } else {
                                bitSet3 = bitSet5;
                                map8 = map7;
                                map9 = map10;
                            }
                        } else {
                            Map map16 = map6;
                            bitSet3 = bitSet2;
                            map8 = map7;
                            map9 = map16;
                        }
                        it3 = map5.get(Integer.valueOf(iIntValue)).iterator();
                        while (it3.hasNext()) {
                            next = it3.next();
                            bitSet4 = bitSet3;
                            map5 = map5;
                            if (zzgo().isLoggable(2)) {
                                zzgo().zzjl().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(iIntValue), next.zzave, zzgl().zzbs(next.zzavf));
                                zzgo().zzjl().zzg("Filter definition", zzjo().zza(next));
                            }
                            if (next.zzave != null) {
                            }
                            zzgo().zzjg().zze("Invalid event filter ID. appId, id", zzap.zzbv(str), String.valueOf(next.zzave));
                            bitSet = bitSet;
                            bitSet3 = bitSet4;
                            map8 = map8;
                            str2 = str2;
                            arrayMap21 = arrayMap21;
                            arrayMap20 = arrayMap20;
                            zzgfVar2 = zzgfVar2;
                            arrayMap19 = arrayMap19;
                        }
                        arrayMap27 = arrayMap19;
                        arrayMap3 = arrayMap20;
                        arrayMap2 = arrayMap21;
                        arrayMap15 = arrayMap22;
                        zzgfVar8 = zzgfVar2;
                        it2 = it2;
                        arrayMap16 = arrayMap315;
                    }
                }
                arrayMap17 = arrayMap16;
                arrayMap18 = arrayMap3;
                hashSet3 = hashSet;
                zzgfVar7 = zzgfVar;
                l2 = l;
                j3 = j;
                i8 = i + 1;
                zzgfVarArr2 = zzgfVarArr;
                hashSet = hashSet3;
                arrayMap31 = arrayMap31;
                length4 = length4;
                arrayMap2 = arrayMap2;
                arrayMap35 = arrayMap17;
                arrayMap27 = arrayMap27;
                arrayMap = arrayMap15;
                arrayMap3 = arrayMap18;
                str4 = str;
            }
            arrayMap4 = arrayMap31;
            arrayMap5 = arrayMap27;
            arrayMap6 = arrayMap;
            hashSet2 = hashSet;
            arrayMap7 = arrayMap2;
            arrayMap8 = arrayMap3;
            z = true;
        } else {
            arrayMap4 = arrayMap31;
            arrayMap5 = arrayMap27;
            arrayMap6 = arrayMap;
            hashSet2 = hashSet;
            arrayMap7 = arrayMap2;
            arrayMap8 = arrayMap3;
            z = true;
        }
        if (zzglVarArr != 0) {
            ArrayMap arrayMap46 = new ArrayMap();
            int length5 = zzglVarArr.length;
            int i9 = 0;
            while (i9 < length5) {
                zzgl zzglVar = zzglVarArr[i9];
                Map<Integer, List<zzfy>> mapZzm = (Map) arrayMap46.get(zzglVar.name);
                if (mapZzm == null) {
                    mapZzm = zzjq().zzm(str, zzglVar.name);
                    if (mapZzm == null) {
                        mapZzm = new ArrayMap<>();
                    }
                    arrayMap46.put(zzglVar.name, mapZzm);
                }
                Iterator<Integer> it6 = mapZzm.keySet().iterator();
                while (it6.hasNext()) {
                    int iIntValue3 = it6.next().intValue();
                    if (hashSet2.contains(Integer.valueOf(iIntValue3))) {
                        zzgo().zzjl().zzg("Skipping failed audience ID", Integer.valueOf(iIntValue3));
                    } else {
                        arrayMap5 = arrayMap5;
                        zzgd zzgdVar7 = (zzgd) arrayMap5.get(Integer.valueOf(iIntValue3));
                        ArrayMap arrayMap47 = arrayMap8;
                        BitSet bitSet11 = (BitSet) arrayMap47.get(Integer.valueOf(iIntValue3));
                        arrayMap7 = arrayMap7;
                        BitSet bitSet12 = (BitSet) arrayMap7.get(Integer.valueOf(iIntValue3));
                        if (zZzd) {
                            arrayMap13 = arrayMap6;
                            map2 = (Map) arrayMap13.get(Integer.valueOf(iIntValue3));
                            arrayMap4 = arrayMap4;
                            map = (Map) arrayMap4.get(Integer.valueOf(iIntValue3));
                        } else {
                            arrayMap4 = arrayMap4;
                            arrayMap13 = arrayMap6;
                            map = null;
                            map2 = null;
                        }
                        if (zzgdVar7 == null) {
                            zzgd zzgdVar8 = new zzgd();
                            arrayMap5.put(Integer.valueOf(iIntValue3), zzgdVar8);
                            zzgdVar8.zzawo = Boolean.valueOf(z);
                            bitSet11 = new BitSet();
                            arrayMap47.put(Integer.valueOf(iIntValue3), bitSet11);
                            bitSet12 = new BitSet();
                            arrayMap7.put(Integer.valueOf(iIntValue3), bitSet12);
                            if (zZzd) {
                                ArrayMap arrayMap48 = new ArrayMap();
                                arrayMap13.put(Integer.valueOf(iIntValue3), arrayMap48);
                                arrayMap14 = new ArrayMap();
                                arrayMap4.put(Integer.valueOf(iIntValue3), arrayMap14);
                                map3 = arrayMap48;
                            } else {
                                arrayMap14 = map;
                                map3 = map2;
                            }
                        } else {
                            arrayMap14 = map;
                            map3 = map2;
                        }
                        Iterator<zzfy> it7 = mapZzm.get(Integer.valueOf(iIntValue3)).iterator();
                        while (true) {
                            if (!it7.hasNext()) {
                                arrayMap46 = arrayMap46;
                                arrayMap6 = arrayMap13;
                                arrayMap5 = arrayMap5;
                                arrayMap8 = arrayMap47;
                                arrayMap7 = arrayMap7;
                                length5 = length5;
                                break;
                            }
                            it7 = it7;
                            zzfy next2 = it7.next();
                            mapZzm = mapZzm;
                            it6 = it6;
                            if (zzgo().isLoggable(2)) {
                                zzgo().zzjl().zzd("Evaluating filter. audience, filter, property", Integer.valueOf(iIntValue3), next2.zzave, zzgl().zzbu(next2.zzavu));
                                zzgo().zzjl().zzg("Filter definition", zzjo().zza(next2));
                            }
                            if (next2.zzave == null || next2.zzave.intValue() > 256) {
                                zzgo().zzjg().zze("Invalid property filter ID. appId, id", zzap.zzbv(str), String.valueOf(next2.zzave));
                                hashSet2.add(Integer.valueOf(iIntValue3));
                                arrayMap46 = arrayMap46;
                                mapZzm = mapZzm;
                                length5 = length5;
                                it6 = it6;
                                arrayMap6 = arrayMap13;
                                arrayMap8 = arrayMap47;
                                break;
                            }
                            if (zZzd) {
                                boolean z8 = (next2 == null || next2.zzavb == null || !next2.zzavb.booleanValue()) ? false : true;
                                boolean z9 = (next2 == null || next2.zzavc == null || !next2.zzavc.booleanValue()) ? false : true;
                                if (bitSet11.get(next2.zzave.intValue()) && !z8 && !z9) {
                                    zzgo().zzjl().zze("Property filter already evaluated true and it is not associated with a dynamic audience. audience ID, filter ID", Integer.valueOf(iIntValue3), next2.zzave);
                                } else {
                                    Boolean boolZza3 = zza(next2, zzglVar);
                                    arrayMap4 = arrayMap4;
                                    zzgo().zzjl().zzg("Property filter result", boolZza3 == null ? "null" : boolZza3);
                                    if (boolZza3 == null) {
                                        hashSet2.add(Integer.valueOf(iIntValue3));
                                        arrayMap47 = arrayMap47;
                                    } else {
                                        bitSet12.set(next2.zzave.intValue());
                                        bitSet11.set(next2.zzave.intValue(), boolZza3.booleanValue());
                                        if (!boolZza3.booleanValue() || (!(z8 || z9) || zzglVar.zzayl == null)) {
                                            arrayMap47 = arrayMap47;
                                        } else if (z9) {
                                            zzb(arrayMap14, next2.zzave.intValue(), zzglVar.zzayl.longValue());
                                            arrayMap47 = arrayMap47;
                                        } else {
                                            zza((Map<Integer, Long>) map3, next2.zzave.intValue(), zzglVar.zzayl.longValue());
                                            arrayMap47 = arrayMap47;
                                        }
                                    }
                                }
                            } else {
                                ArrayMap arrayMap49 = arrayMap47;
                                if (bitSet11.get(next2.zzave.intValue())) {
                                    zzgo().zzjl().zze("Property filter already evaluated true. audience ID, filter ID", Integer.valueOf(iIntValue3), next2.zzave);
                                    arrayMap47 = arrayMap49;
                                } else {
                                    Boolean boolZza4 = zza(next2, zzglVar);
                                    zzgo().zzjl().zzg("Property filter result", boolZza4 == null ? "null" : boolZza4);
                                    if (boolZza4 == null) {
                                        hashSet2.add(Integer.valueOf(iIntValue3));
                                        arrayMap47 = arrayMap49;
                                    } else {
                                        bitSet12.set(next2.zzave.intValue());
                                        if (boolZza4.booleanValue()) {
                                            bitSet11.set(next2.zzave.intValue());
                                        }
                                        arrayMap47 = arrayMap49;
                                    }
                                }
                            }
                        }
                    }
                }
                i9++;
                zzglVarArr = zzglVarArr;
            }
            arrayMap9 = arrayMap6;
            arrayMap10 = arrayMap8;
        } else {
            arrayMap9 = arrayMap6;
            arrayMap10 = arrayMap8;
        }
        zzgd[] zzgdVarArr = new zzgd[arrayMap10.size()];
        Iterator it8 = arrayMap10.keySet().iterator();
        int i10 = 0;
        while (it8.hasNext()) {
            int iIntValue4 = ((Integer) it8.next()).intValue();
            if (!hashSet2.contains(Integer.valueOf(iIntValue4))) {
                ArrayMap arrayMap50 = arrayMap5;
                zzgd zzgdVar9 = (zzgd) arrayMap50.get(Integer.valueOf(iIntValue4));
                if (zzgdVar9 == null) {
                    zzgdVar9 = new zzgd();
                }
                int i11 = i10 + 1;
                zzgdVarArr[i10] = zzgdVar9;
                zzgdVar9.zzauy = Integer.valueOf(iIntValue4);
                zzgdVar9.zzawm = new zzgj();
                ArrayMap arrayMap51 = arrayMap10;
                zzgdVar9.zzawm.zzayf = zzfg.zza((BitSet) arrayMap51.get(Integer.valueOf(iIntValue4)));
                ArrayMap arrayMap52 = arrayMap7;
                zzgdVar9.zzawm.zzaye = zzfg.zza((BitSet) arrayMap52.get(Integer.valueOf(iIntValue4)));
                if (zZzd) {
                    arrayMap11 = arrayMap9;
                    zzgdVar9.zzawm.zzayg = zzd((Map) arrayMap11.get(Integer.valueOf(iIntValue4)));
                    zzgj zzgjVar2 = zzgdVar9.zzawm;
                    arrayMap12 = arrayMap4;
                    Map map17 = (Map) arrayMap12.get(Integer.valueOf(iIntValue4));
                    if (map17 == null) {
                        it = it8;
                        arrayMap5 = arrayMap50;
                        zzgkVarArr = new zzgk[0];
                    } else {
                        zzgkVarArr = new zzgk[map17.size()];
                        int i12 = 0;
                        for (Integer num : map17.keySet()) {
                            Iterator it9 = it8;
                            zzgk zzgkVar = new zzgk();
                            zzgkVar.zzawq = num;
                            List list = (List) map17.get(num);
                            if (list != null) {
                                Collections.sort(list);
                                long[] jArr = new long[list.size()];
                                Iterator it10 = list.iterator();
                                int i13 = 0;
                                while (it10.hasNext()) {
                                    jArr[i13] = ((Long) it10.next()).longValue();
                                    i13++;
                                }
                                zzgkVar.zzayj = jArr;
                            }
                            zzgkVarArr[i12] = zzgkVar;
                            it8 = it9;
                            i12++;
                            arrayMap50 = arrayMap50;
                        }
                        it = it8;
                        arrayMap5 = arrayMap50;
                    }
                    zzgjVar2.zzayh = zzgkVarArr;
                } else {
                    it = it8;
                    arrayMap5 = arrayMap50;
                    arrayMap11 = arrayMap9;
                    arrayMap12 = arrayMap4;
                }
                zzq zzqVarZzjq2 = zzjq();
                zzgj zzgjVar3 = zzgdVar9.zzawm;
                zzqVarZzjq2.zzcl();
                zzqVarZzjq2.zzaf();
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotNull(zzgjVar3);
                try {
                    byte[] bArr = new byte[zzgjVar3.zzvu()];
                    try {
                        zzyy zzyyVarZzk = zzyy.zzk(bArr, 0, bArr.length);
                        zzgjVar3.zza(zzyyVarZzk);
                        zzyyVarZzk.zzyt();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("app_id", str);
                        contentValues.put("audience_id", Integer.valueOf(iIntValue4));
                        contentValues.put("current_results", bArr);
                        try {
                            try {
                                if (zzqVarZzjq2.getWritableDatabase().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                                    zzqVarZzjq2.zzgo().zzjd().zzg("Failed to insert filter results (got -1). appId", zzap.zzbv(str));
                                }
                            } catch (SQLiteException e4) {
                                e = e4;
                                zzqVarZzjq2.zzgo().zzjd().zze("Error storing filter results. appId", zzap.zzbv(str), e);
                            }
                        } catch (SQLiteException e5) {
                            e = e5;
                        }
                    } catch (IOException e6) {
                        e = e6;
                        zzqVarZzjq2.zzgo().zzjd().zze("Configuration loss. Failed to serialize filter results. appId", zzap.zzbv(str), e);
                    }
                } catch (IOException e7) {
                    e = e7;
                }
                it8 = it;
                i10 = i11;
                arrayMap10 = arrayMap51;
                arrayMap7 = arrayMap52;
                arrayMap9 = arrayMap11;
                arrayMap4 = arrayMap12;
            }
        }
        return (zzgd[]) Arrays.copyOf(zzgdVarArr, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Boolean zza(zzfv zzfvVar, String str, zzgg[] zzggVarArr, long j) {
        Boolean boolZza;
        if (zzfvVar.zzavi != null) {
            Boolean boolZza2 = zza(j, zzfvVar.zzavi);
            if (boolZza2 == null) {
                return null;
            }
            if (!boolZza2.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (zzfw zzfwVar : zzfvVar.zzavg) {
            if (TextUtils.isEmpty(zzfwVar.zzavn)) {
                zzgo().zzjg().zzg("null or empty param name in filter. event", zzgl().zzbs(str));
                return null;
            }
            hashSet.add(zzfwVar.zzavn);
        }
        ArrayMap arrayMap = new ArrayMap();
        for (zzgg zzggVar : zzggVarArr) {
            if (hashSet.contains(zzggVar.name)) {
                if (zzggVar.zzawx != null) {
                    arrayMap.put(zzggVar.name, zzggVar.zzawx);
                } else if (zzggVar.zzauh != null) {
                    arrayMap.put(zzggVar.name, zzggVar.zzauh);
                } else if (zzggVar.zzamp != null) {
                    arrayMap.put(zzggVar.name, zzggVar.zzamp);
                } else {
                    zzgo().zzjg().zze("Unknown value for param. event, param", zzgl().zzbs(str), zzgl().zzbt(zzggVar.name));
                    return null;
                }
            }
        }
        for (zzfw zzfwVar2 : zzfvVar.zzavg) {
            boolean zEquals = Boolean.TRUE.equals(zzfwVar2.zzavm);
            String str2 = zzfwVar2.zzavn;
            if (TextUtils.isEmpty(str2)) {
                zzgo().zzjg().zzg("Event has empty param name. event", zzgl().zzbs(str));
                return null;
            }
            V v = arrayMap.get(str2);
            if (v instanceof Long) {
                if (zzfwVar2.zzavl == null) {
                    zzgo().zzjg().zze("No number filter for long param. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                    return null;
                }
                Boolean boolZza3 = zza(((Long) v).longValue(), zzfwVar2.zzavl);
                if (boolZza3 == null) {
                    return null;
                }
                if ((true ^ boolZza3.booleanValue()) ^ zEquals) {
                    return false;
                }
            } else if (v instanceof Double) {
                if (zzfwVar2.zzavl == null) {
                    zzgo().zzjg().zze("No number filter for double param. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                    return null;
                }
                Boolean boolZza4 = zza(((Double) v).doubleValue(), zzfwVar2.zzavl);
                if (boolZza4 == null) {
                    return null;
                }
                if ((true ^ boolZza4.booleanValue()) ^ zEquals) {
                    return false;
                }
            } else {
                if (!(v instanceof String)) {
                    if (v == 0) {
                        zzgo().zzjl().zze("Missing param for filter. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                        return false;
                    }
                    zzgo().zzjg().zze("Unknown param type. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                    return null;
                }
                if (zzfwVar2.zzavk != null) {
                    boolZza = zza((String) v, zzfwVar2.zzavk);
                } else if (zzfwVar2.zzavl != null) {
                    String str3 = (String) v;
                    if (zzfg.zzcp(str3)) {
                        boolZza = zza(str3, zzfwVar2.zzavl);
                    } else {
                        zzgo().zzjg().zze("Invalid param value for number filter. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                        return null;
                    }
                } else {
                    zzgo().zzjg().zze("No filter for String param. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                    return null;
                }
                if (boolZza == null) {
                    return null;
                }
                if ((true ^ boolZza.booleanValue()) ^ zEquals) {
                    return false;
                }
            }
        }
        return true;
    }

    private final Boolean zza(zzfy zzfyVar, zzgl zzglVar) {
        zzfw zzfwVar = zzfyVar.zzavv;
        if (zzfwVar == null) {
            zzgo().zzjg().zzg("Missing property filter. property", zzgl().zzbu(zzglVar.name));
            return null;
        }
        boolean zEquals = Boolean.TRUE.equals(zzfwVar.zzavm);
        if (zzglVar.zzawx != null) {
            if (zzfwVar.zzavl == null) {
                zzgo().zzjg().zzg("No number filter for long property. property", zzgl().zzbu(zzglVar.name));
                return null;
            }
            return zza(zza(zzglVar.zzawx.longValue(), zzfwVar.zzavl), zEquals);
        }
        if (zzglVar.zzauh != null) {
            if (zzfwVar.zzavl == null) {
                zzgo().zzjg().zzg("No number filter for double property. property", zzgl().zzbu(zzglVar.name));
                return null;
            }
            return zza(zza(zzglVar.zzauh.doubleValue(), zzfwVar.zzavl), zEquals);
        }
        if (zzglVar.zzamp != null) {
            if (zzfwVar.zzavk == null) {
                if (zzfwVar.zzavl == null) {
                    zzgo().zzjg().zzg("No string or number filter defined. property", zzgl().zzbu(zzglVar.name));
                } else {
                    if (zzfg.zzcp(zzglVar.zzamp)) {
                        return zza(zza(zzglVar.zzamp, zzfwVar.zzavl), zEquals);
                    }
                    zzgo().zzjg().zze("Invalid user property value for Numeric number filter. property, value", zzgl().zzbu(zzglVar.name), zzglVar.zzamp);
                }
                return null;
            }
            return zza(zza(zzglVar.zzamp, zzfwVar.zzavk), zEquals);
        }
        zzgo().zzjg().zzg("User property has no value, property", zzgl().zzbu(zzglVar.name));
        return null;
    }

    private static Boolean zza(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    private final Boolean zza(String str, zzfz zzfzVar) {
        String upperCase;
        List<String> listAsList;
        Preconditions.checkNotNull(zzfzVar);
        if (str == null || zzfzVar.zzavw == null || zzfzVar.zzavw.intValue() == 0) {
            return null;
        }
        if (zzfzVar.zzavw.intValue() == 6) {
            if (zzfzVar.zzavz == null || zzfzVar.zzavz.length == 0) {
                return null;
            }
        } else if (zzfzVar.zzavx == null) {
            return null;
        }
        int iIntValue = zzfzVar.zzavw.intValue();
        boolean z = zzfzVar.zzavy != null && zzfzVar.zzavy.booleanValue();
        if (z || iIntValue == 1 || iIntValue == 6) {
            upperCase = zzfzVar.zzavx;
        } else {
            upperCase = zzfzVar.zzavx.toUpperCase(Locale.ENGLISH);
        }
        if (zzfzVar.zzavz == null) {
            listAsList = null;
        } else {
            String[] strArr = zzfzVar.zzavz;
            if (z) {
                listAsList = Arrays.asList(strArr);
            } else {
                ArrayList arrayList = new ArrayList();
                for (String str2 : strArr) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                listAsList = arrayList;
            }
        }
        return zza(str, iIntValue, z, upperCase, listAsList, iIntValue == 1 ? upperCase : null);
    }

    private final Boolean zza(String str, int i, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && i != 1) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    zzgo().zzjg().zzg("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    private final Boolean zza(long j, zzfx zzfxVar) {
        try {
            return zza(new BigDecimal(j), zzfxVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean zza(double d, zzfx zzfxVar) {
        try {
            return zza(new BigDecimal(d), zzfxVar, Math.ulp(d));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private final Boolean zza(String str, zzfx zzfxVar) {
        if (!zzfg.zzcp(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzfxVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static Boolean zza(BigDecimal bigDecimal, zzfx zzfxVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzfxVar);
        if (zzfxVar.zzavo == null || zzfxVar.zzavo.intValue() == 0) {
            return null;
        }
        if (zzfxVar.zzavo.intValue() == 4) {
            if (zzfxVar.zzavr == null || zzfxVar.zzavs == null) {
                return null;
            }
        } else if (zzfxVar.zzavq == null) {
            return null;
        }
        int iIntValue = zzfxVar.zzavo.intValue();
        if (zzfxVar.zzavo.intValue() == 4) {
            if (!zzfg.zzcp(zzfxVar.zzavr) || !zzfg.zzcp(zzfxVar.zzavs)) {
                return null;
            }
            try {
                BigDecimal bigDecimal5 = new BigDecimal(zzfxVar.zzavr);
                bigDecimal4 = new BigDecimal(zzfxVar.zzavs);
                bigDecimal3 = bigDecimal5;
                bigDecimal2 = null;
            } catch (NumberFormatException unused) {
                return null;
            }
        } else {
            if (!zzfg.zzcp(zzfxVar.zzavq)) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(zzfxVar.zzavq);
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException unused2) {
                return null;
            }
        }
        if (iIntValue != 4) {
            if (bigDecimal2 != null) {
            }
            return null;
        }
        if (bigDecimal3 == null) {
            return null;
        }
        boolean z = false;
        switch (iIntValue) {
            case 1:
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == -1);
            case 2:
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 1);
            case 3:
                if (d == 0.0d) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                }
                if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 4:
                if (bigDecimal.compareTo(bigDecimal3) != -1 && bigDecimal.compareTo(bigDecimal4) != 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                return null;
        }
    }

    private static zzge[] zzd(Map<Integer, Long> map) {
        if (map == null) {
            return null;
        }
        int i = 0;
        zzge[] zzgeVarArr = new zzge[map.size()];
        for (Integer num : map.keySet()) {
            zzge zzgeVar = new zzge();
            zzgeVar.zzawq = num;
            zzgeVar.zzawr = map.get(num);
            zzgeVarArr[i] = zzgeVar;
            i++;
        }
        return zzgeVarArr;
    }

    private static void zza(Map<Integer, Long> map, int i, long j) {
        Long l = map.get(Integer.valueOf(i));
        long j2 = j / 1000;
        if (l == null || j2 > l.longValue()) {
            map.put(Integer.valueOf(i), Long.valueOf(j2));
        }
    }

    private static void zzb(Map<Integer, List<Long>> map, int i, long j) {
        List<Long> arrayList = map.get(Integer.valueOf(i));
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(Integer.valueOf(i), arrayList);
        }
        arrayList.add(Long.valueOf(j / 1000));
    }
}
