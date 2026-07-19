package com.google.android.gms.common.util;

import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CollectionUtils {
    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.emptyList();
    }

    @Deprecated
    public static <T> List<T> listOf(T t) {
        return Collections.singletonList(t);
    }

    @Deprecated
    public static <T> List<T> listOf(T... tArr) {
        switch (tArr.length) {
            case 0:
                return listOf();
            case 1:
                return listOf(tArr[0]);
            default:
                return Collections.unmodifiableList(Arrays.asList(tArr));
        }
    }

    private static <T> Set<T> zza(int i, boolean z) {
        float f = z ? 0.75f : 1.0f;
        if (i <= (z ? 128 : 256)) {
            return new ArraySet(i);
        }
        return new HashSet(i, f);
    }

    @Deprecated
    public static <T> Set<T> setOf(T t, T t2, T t3) {
        Set setZza = zza(3, false);
        setZza.add(t);
        setZza.add(t2);
        setZza.add(t3);
        return Collections.unmodifiableSet(setZza);
    }

    @Deprecated
    public static <T> Set<T> setOf(T... tArr) {
        switch (tArr.length) {
            case 0:
                return Collections.emptySet();
            case 1:
                return Collections.singleton(tArr[0]);
            case 2:
                T t = tArr[0];
                T t2 = tArr[1];
                Set setZza = zza(2, false);
                setZza.add(t);
                setZza.add(t2);
                return Collections.unmodifiableSet(setZza);
            case 3:
                return setOf(tArr[0], tArr[1], tArr[2]);
            case 4:
                T t3 = tArr[0];
                T t4 = tArr[1];
                T t5 = tArr[2];
                T t6 = tArr[3];
                Set setZza2 = zza(4, false);
                setZza2.add(t3);
                setZza2.add(t4);
                setZza2.add(t5);
                setZza2.add(t6);
                return Collections.unmodifiableSet(setZza2);
            default:
                Set setZza3 = zza(tArr.length, false);
                Collections.addAll(setZza3, tArr);
                return Collections.unmodifiableSet(setZza3);
        }
    }

    private static <K, V> Map<K, V> zzb(int i, boolean z) {
        if (i <= 256) {
            return new ArrayMap(i);
        }
        return new HashMap(i, 1.0f);
    }

    public static <K, V> Map<K, V> mapOf(K k, V v, K k2, V v2, K k3, V v3) {
        Map mapZzb = zzb(3, false);
        mapZzb.put(k, v);
        mapZzb.put(k2, v2);
        mapZzb.put(k3, v3);
        return Collections.unmodifiableMap(mapZzb);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static <K, V> Map<K, V> mapOfKeyValueArrays(K[] kArr, V[] vArr) {
        if (kArr.length != vArr.length) {
            int length = kArr.length;
            int length2 = vArr.length;
            StringBuilder sb = new StringBuilder(66);
            sb.append("Key and values array lengths not equal: ");
            sb.append(length);
            sb.append(" != ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString());
        }
        switch (kArr.length) {
            case 0:
                return Collections.emptyMap();
            case 1:
                return Collections.singletonMap(kArr[0], vArr[0]);
            default:
                Map mapZzb = zzb(kArr.length, false);
                for (int i = 0; i < kArr.length; i++) {
                    mapZzb.put(kArr[i], vArr[i]);
                }
                return Collections.unmodifiableMap(mapZzb);
        }
    }
}
