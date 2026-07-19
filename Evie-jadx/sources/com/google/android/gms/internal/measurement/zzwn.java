package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzwn<K, V> extends LinkedHashMap<K, V> {
    private static final zzwn zzcau;
    private boolean zzbtu;

    private zzwn() {
        this.zzbtu = true;
    }

    private zzwn(Map<K, V> map) {
        super(map);
        this.zzbtu = true;
    }

    public static <K, V> zzwn<K, V> zzxa() {
        return zzcau;
    }

    public final void zza(zzwn<K, V> zzwnVar) {
        zzxc();
        if (zzwnVar.isEmpty()) {
            return;
        }
        putAll(zzwnVar);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzxc();
        super.clear();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzxc();
        zzvo.checkNotNull(k);
        zzvo.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzxc();
        for (K k : map.keySet()) {
            zzvo.checkNotNull(k);
            zzvo.checkNotNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzxc();
        return (V) super.remove(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean z;
        boolean zEquals;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this == map) {
                z = true;
            } else if (size() != map.size()) {
                z = false;
            } else {
                for (Map.Entry<K, V> entry : entrySet()) {
                    if (map.containsKey(entry.getKey())) {
                        V value = entry.getValue();
                        Object obj2 = map.get(entry.getKey());
                        if ((value instanceof byte[]) && (obj2 instanceof byte[])) {
                            zEquals = Arrays.equals((byte[]) value, (byte[]) obj2);
                        } else {
                            zEquals = value.equals(obj2);
                        }
                        if (!zEquals) {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                }
                z = true;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    private static int zzx(Object obj) {
        if (obj instanceof byte[]) {
            return zzvo.hashCode((byte[]) obj);
        }
        if (obj instanceof zzvp) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iZzx = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            iZzx += zzx(entry.getValue()) ^ zzx(entry.getKey());
        }
        return iZzx;
    }

    public final zzwn<K, V> zzxb() {
        return isEmpty() ? new zzwn<>() : new zzwn<>(this);
    }

    public final void zzsm() {
        this.zzbtu = false;
    }

    public final boolean isMutable() {
        return this.zzbtu;
    }

    private final void zzxc() {
        if (!this.zzbtu) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        zzwn zzwnVar = new zzwn();
        zzcau = zzwnVar;
        zzwnVar.zzbtu = false;
    }
}
