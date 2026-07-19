package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzzd implements Cloneable {
    private Object value;
    private zzzb<?, ?> zzcfj;
    private List<zzzi> zzcfk = new ArrayList();

    zzzd() {
    }

    final void zza(zzzi zzziVar) throws IOException {
        Object objZzah;
        List<zzzi> list = this.zzcfk;
        if (list != null) {
            list.add(zzziVar);
            return;
        }
        Object obj = this.value;
        if (obj instanceof zzzg) {
            byte[] bArr = zzziVar.zzbug;
            zzyx zzyxVarZzj = zzyx.zzj(bArr, 0, bArr.length);
            int iZzuy = zzyxVarZzj.zzuy();
            if (iZzuy != bArr.length - zzyy.zzbc(iZzuy)) {
                throw zzzf.zzyw();
            }
            objZzah = ((zzzg) this.value).zza(zzyxVarZzj);
        } else if (obj instanceof zzzg[]) {
            zzzg[] zzzgVarArr = (zzzg[]) this.zzcfj.zzah(Collections.singletonList(zzziVar));
            zzzg[] zzzgVarArr2 = (zzzg[]) this.value;
            zzzg[] zzzgVarArr3 = (zzzg[]) Arrays.copyOf(zzzgVarArr2, zzzgVarArr2.length + zzzgVarArr.length);
            System.arraycopy(zzzgVarArr, 0, zzzgVarArr3, zzzgVarArr2.length, zzzgVarArr.length);
            objZzah = zzzgVarArr3;
        } else {
            objZzah = this.zzcfj.zzah(Collections.singletonList(zzziVar));
        }
        this.zzcfj = this.zzcfj;
        this.value = objZzah;
        this.zzcfk = null;
    }

    final int zzf() {
        Object obj = this.value;
        if (obj != null) {
            zzzb<?, ?> zzzbVar = this.zzcfj;
            if (zzzbVar.zzcfe) {
                int length = Array.getLength(obj);
                int iZzak = 0;
                for (int i = 0; i < length; i++) {
                    if (Array.get(obj, i) != null) {
                        iZzak += zzzbVar.zzak(Array.get(obj, i));
                    }
                }
                return iZzak;
            }
            return zzzbVar.zzak(obj);
        }
        int iZzbj = 0;
        for (zzzi zzziVar : this.zzcfk) {
            iZzbj += zzyy.zzbj(zzziVar.tag) + 0 + zzziVar.zzbug.length;
        }
        return iZzbj;
    }

    final void zza(zzyy zzyyVar) throws IOException {
        Object obj = this.value;
        if (obj != null) {
            zzzb<?, ?> zzzbVar = this.zzcfj;
            if (zzzbVar.zzcfe) {
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    Object obj2 = Array.get(obj, i);
                    if (obj2 != null) {
                        zzzbVar.zza(obj2, zzyyVar);
                    }
                }
                return;
            }
            zzzbVar.zza(obj, zzyyVar);
            return;
        }
        for (zzzi zzziVar : this.zzcfk) {
            zzyyVar.zzca(zzziVar.tag);
            zzyyVar.zzp(zzziVar.zzbug);
        }
    }

    public final boolean equals(Object obj) {
        List<zzzi> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzd)) {
            return false;
        }
        zzzd zzzdVar = (zzzd) obj;
        if (this.value != null && zzzdVar.value != null) {
            zzzb<?, ?> zzzbVar = this.zzcfj;
            if (zzzbVar != zzzdVar.zzcfj) {
                return false;
            }
            if (!zzzbVar.zzcfd.isArray()) {
                return this.value.equals(zzzdVar.value);
            }
            Object obj2 = this.value;
            if (obj2 instanceof byte[]) {
                return Arrays.equals((byte[]) obj2, (byte[]) zzzdVar.value);
            }
            if (obj2 instanceof int[]) {
                return Arrays.equals((int[]) obj2, (int[]) zzzdVar.value);
            }
            if (obj2 instanceof long[]) {
                return Arrays.equals((long[]) obj2, (long[]) zzzdVar.value);
            }
            if (obj2 instanceof float[]) {
                return Arrays.equals((float[]) obj2, (float[]) zzzdVar.value);
            }
            if (obj2 instanceof double[]) {
                return Arrays.equals((double[]) obj2, (double[]) zzzdVar.value);
            }
            if (obj2 instanceof boolean[]) {
                return Arrays.equals((boolean[]) obj2, (boolean[]) zzzdVar.value);
            }
            return Arrays.deepEquals((Object[]) obj2, (Object[]) zzzdVar.value);
        }
        List<zzzi> list2 = this.zzcfk;
        if (list2 != null && (list = zzzdVar.zzcfk) != null) {
            return list2.equals(list);
        }
        try {
            return Arrays.equals(toByteArray(), zzzdVar.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzf()];
        zza(zzyy.zzo(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX INFO: renamed from: zzyv, reason: merged with bridge method [inline-methods] */
    public final zzzd clone() {
        zzzd zzzdVar = new zzzd();
        try {
            zzzdVar.zzcfj = this.zzcfj;
            if (this.zzcfk == null) {
                zzzdVar.zzcfk = null;
            } else {
                zzzdVar.zzcfk.addAll(this.zzcfk);
            }
            if (this.value != null) {
                if (this.value instanceof zzzg) {
                    zzzdVar.value = (zzzg) ((zzzg) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzzdVar.value = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzzdVar.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        zzzdVar.value = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        zzzdVar.value = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        zzzdVar.value = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        zzzdVar.value = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        zzzdVar.value = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzzg[]) {
                        zzzg[] zzzgVarArr = (zzzg[]) this.value;
                        zzzg[] zzzgVarArr2 = new zzzg[zzzgVarArr.length];
                        zzzdVar.value = zzzgVarArr2;
                        while (i < zzzgVarArr.length) {
                            zzzgVarArr2[i] = (zzzg) zzzgVarArr[i].clone();
                            i++;
                        }
                    }
                }
            }
            return zzzdVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
