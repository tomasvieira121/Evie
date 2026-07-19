package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzbcy<T> implements zzbdm<T> {
    private static final Unsafe zzdwf = zzbek.zzagh();
    private final int[] zzdwg;
    private final Object[] zzdwh;
    private final int zzdwi;
    private final int zzdwj;
    private final int zzdwk;
    private final zzbcu zzdwl;
    private final boolean zzdwm;
    private final boolean zzdwn;
    private final boolean zzdwo;
    private final boolean zzdwp;
    private final int[] zzdwq;
    private final int[] zzdwr;
    private final int[] zzdws;
    private final zzbdc zzdwt;
    private final zzbce zzdwu;
    private final zzbee<?, ?> zzdwv;
    private final zzbbd<?> zzdww;
    private final zzbcp zzdwx;

    private zzbcy(int[] iArr, Object[] objArr, int i, int i2, int i3, zzbcu zzbcuVar, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, zzbdc zzbdcVar, zzbce zzbceVar, zzbee<?, ?> zzbeeVar, zzbbd<?> zzbbdVar, zzbcp zzbcpVar) {
        this.zzdwg = iArr;
        this.zzdwh = objArr;
        this.zzdwi = i;
        this.zzdwj = i2;
        this.zzdwk = i3;
        this.zzdwn = zzbcuVar instanceof zzbbo;
        this.zzdwo = z;
        this.zzdwm = zzbbdVar != null && zzbbdVar.zzh(zzbcuVar);
        this.zzdwp = false;
        this.zzdwq = iArr2;
        this.zzdwr = iArr3;
        this.zzdws = iArr4;
        this.zzdwt = zzbdcVar;
        this.zzdwu = zzbceVar;
        this.zzdwv = zzbeeVar;
        this.zzdww = zzbbdVar;
        this.zzdwl = zzbcuVar;
        this.zzdwx = zzbcpVar;
    }

    private static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzbae zzbaeVar) throws IOException {
        return zzbad.zza(i, bArr, i2, i3, zzz(obj), zzbaeVar);
    }

    private static int zza(zzbdm<?> zzbdmVar, int i, byte[] bArr, int i2, int i3, zzbbt<?> zzbbtVar, zzbae zzbaeVar) throws IOException {
        int iZza = zza((zzbdm) zzbdmVar, bArr, i2, i3, zzbaeVar);
        while (true) {
            zzbbtVar.add(zzbaeVar.zzdpn);
            if (iZza >= i3) {
                break;
            }
            int iZza2 = zzbad.zza(bArr, iZza, zzbaeVar);
            if (i != zzbaeVar.zzdpl) {
                break;
            }
            iZza = zza((zzbdm) zzbdmVar, bArr, iZza2, i3, zzbaeVar);
        }
        return iZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzbdm zzbdmVar, byte[] bArr, int i, int i2, int i3, zzbae zzbaeVar) throws IOException {
        zzbcy zzbcyVar = (zzbcy) zzbdmVar;
        Object objNewInstance = zzbcyVar.newInstance();
        int iZza = zzbcyVar.zza(objNewInstance, bArr, i, i2, i3, zzbaeVar);
        zzbcyVar.zzo(objNewInstance);
        zzbaeVar.zzdpn = objNewInstance;
        return iZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzbdm zzbdmVar, byte[] bArr, int i, int i2, zzbae zzbaeVar) throws IOException {
        int iZza = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZza = zzbad.zza(i3, bArr, iZza, zzbaeVar);
            i3 = zzbaeVar.zzdpl;
        }
        int i4 = iZza;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzbbu.zzadl();
        }
        Object objNewInstance = zzbdmVar.newInstance();
        int i5 = i3 + i4;
        zzbdmVar.zza(objNewInstance, bArr, i4, i5, zzbaeVar);
        zzbdmVar.zzo(objNewInstance);
        zzbaeVar.zzdpn = objNewInstance;
        return i5;
    }

    private static <UT, UB> int zza(zzbee<UT, UB> zzbeeVar, T t) {
        return zzbeeVar.zzy(zzbeeVar.zzac(t));
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzbae zzbaeVar) throws IOException {
        Object objValueOf;
        Object objValueOf2;
        int iZzb;
        long jZzl;
        int iZzbu;
        Object objValueOf3;
        int i9;
        Unsafe unsafe = zzdwf;
        long j2 = this.zzdwg[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                objValueOf = Double.valueOf(zzbad.zzg(bArr, i));
                unsafe.putObject(t, j, objValueOf);
                iZzb = i + 8;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                objValueOf2 = Float.valueOf(zzbad.zzh(bArr, i));
                unsafe.putObject(t, j, objValueOf2);
                iZzb = i + 4;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzbad.zzb(bArr, i, zzbaeVar);
                jZzl = zzbaeVar.zzdpm;
                objValueOf3 = Long.valueOf(jZzl);
                unsafe.putObject(t, j, objValueOf3);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzbad.zza(bArr, i, zzbaeVar);
                iZzbu = zzbaeVar.zzdpl;
                objValueOf3 = Integer.valueOf(iZzbu);
                unsafe.putObject(t, j, objValueOf3);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                objValueOf = Long.valueOf(zzbad.zzf(bArr, i));
                unsafe.putObject(t, j, objValueOf);
                iZzb = i + 8;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                objValueOf2 = Integer.valueOf(zzbad.zze(bArr, i));
                unsafe.putObject(t, j, objValueOf2);
                iZzb = i + 4;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzbad.zzb(bArr, i, zzbaeVar);
                objValueOf3 = Boolean.valueOf(zzbaeVar.zzdpm != 0);
                unsafe.putObject(t, j, objValueOf3);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                iZzb = zzbad.zza(bArr, i, zzbaeVar);
                i9 = zzbaeVar.zzdpl;
                if (i9 == 0) {
                    objValueOf3 = "";
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                if ((i6 & 536870912) != 0 && !zzbem.zzf(bArr, iZzb, iZzb + i9)) {
                    throw zzbbu.zzads();
                }
                unsafe.putObject(t, j, new String(bArr, iZzb, i9, zzbbq.UTF_8));
                iZzb += i9;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                iZzb = zza(zzcq(i8), bArr, i, i2, zzbaeVar);
                Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                objValueOf3 = object == null ? zzbaeVar.zzdpn : zzbbq.zza(object, zzbaeVar.zzdpn);
                unsafe.putObject(t, j, objValueOf3);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                iZzb = zzbad.zza(bArr, i, zzbaeVar);
                i9 = zzbaeVar.zzdpl;
                if (i9 == 0) {
                    objValueOf3 = zzbah.zzdpq;
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                unsafe.putObject(t, j, zzbah.zzc(bArr, iZzb, i9));
                iZzb += i9;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iZza = zzbad.zza(bArr, i, zzbaeVar);
                int i10 = zzbaeVar.zzdpl;
                zzbbs<?> zzbbsVarZzcs = zzcs(i8);
                if (zzbbsVarZzcs != null && zzbbsVarZzcs.zzq(i10) == null) {
                    zzz(t).zzb(i3, Long.valueOf(i10));
                    return iZza;
                }
                unsafe.putObject(t, j, Integer.valueOf(i10));
                iZzb = iZza;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzbad.zza(bArr, i, zzbaeVar);
                iZzbu = zzbaq.zzbu(zzbaeVar.zzdpl);
                objValueOf3 = Integer.valueOf(iZzbu);
                unsafe.putObject(t, j, objValueOf3);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzbad.zzb(bArr, i, zzbaeVar);
                jZzl = zzbaq.zzl(zzbaeVar.zzdpm);
                objValueOf3 = Long.valueOf(jZzl);
                unsafe.putObject(t, j, objValueOf3);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                iZzb = zza(zzcq(i8), bArr, i, i2, (i3 & (-8)) | 4, zzbaeVar);
                Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                objValueOf3 = object2 == null ? zzbaeVar.zzdpn : zzbbq.zza(object2, zzbaeVar.zzdpn);
                unsafe.putObject(t, j, objValueOf3);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            default:
                return i;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:126:0x0232 A[LOOP:9: B:127:0x0233->B:126:0x0232, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:129:0x0238  */
    /* JADX WARN: Code duplicated, block: B:131:0x0240  */
    /* JADX WARN: Code duplicated, block: B:247:0x0230 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x01dd -> B:91:0x01b4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:132:0x0248 -> B:125:0x0230). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0150 -> B:64:0x0132). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x01a1 -> B:79:0x0180). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, int r22, int r23, int r24, long r25, int r27, long r28, com.google.android.gms.internal.ads.zzbae r30) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcy.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzbae):int");
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, long j, zzbae zzbaeVar) throws IOException {
        Unsafe unsafe = zzdwf;
        Object objZzcr = zzcr(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzdwx.zzu(object)) {
            Object objZzw = this.zzdwx.zzw(objZzcr);
            this.zzdwx.zzb(objZzw, object);
            unsafe.putObject(t, j, objZzw);
            object = objZzw;
        }
        zzbcn<?, ?> zzbcnVarZzx = this.zzdwx.zzx(objZzcr);
        Map<?, ?> mapZzs = this.zzdwx.zzs(object);
        int iZza = zzbad.zza(bArr, i, zzbaeVar);
        int i5 = zzbaeVar.zzdpl;
        if (i5 < 0 || i5 > i2 - iZza) {
            throw zzbbu.zzadl();
        }
        int i6 = i5 + iZza;
        K k = zzbcnVarZzx.zzdvz;
        V v = zzbcnVarZzx.zzdwb;
        while (iZza < i6) {
            int iZza2 = iZza + 1;
            int i7 = bArr[iZza];
            if (i7 < 0) {
                iZza2 = zzbad.zza(i7, bArr, iZza2, zzbaeVar);
                i7 = zzbaeVar.zzdpl;
            }
            int i8 = iZza2;
            int i9 = i7 & 7;
            switch (i7 >>> 3) {
                case 1:
                    if (i9 != zzbcnVarZzx.zzdvy.zzagm()) {
                        iZza = zzbad.zza(i7, bArr, i8, i2, zzbaeVar);
                    } else {
                        iZza = zza(bArr, i8, i2, zzbcnVarZzx.zzdvy, (Class<?>) null, zzbaeVar);
                        k = (K) zzbaeVar.zzdpn;
                    }
                    break;
                case 2:
                    if (i9 != zzbcnVarZzx.zzdwa.zzagm()) {
                        iZza = zzbad.zza(i7, bArr, i8, i2, zzbaeVar);
                    } else {
                        iZza = zza(bArr, i8, i2, zzbcnVarZzx.zzdwa, zzbcnVarZzx.zzdwb.getClass(), zzbaeVar);
                        v = zzbaeVar.zzdpn;
                    }
                    break;
                default:
                    iZza = zzbad.zza(i7, bArr, i8, i2, zzbaeVar);
                    break;
            }
        }
        if (iZza != i6) {
            throw zzbbu.zzadr();
        }
        mapZzs.put(k, v);
        return i6;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x030b A[PHI: r0 r18 r25
      0x030b: PHI (r0v67 int) = (r0v62 int), (r0v65 int), (r0v69 int) binds: [B:127:0x0367, B:124:0x0349, B:116:0x0307] A[DONT_GENERATE, DONT_INLINE]
      0x030b: PHI (r18v6 int) = (r18v4 int), (r18v4 int), (r18v7 int) binds: [B:127:0x0367, B:124:0x0349, B:116:0x0307] A[DONT_GENERATE, DONT_INLINE]
      0x030b: PHI (r25v9 sun.misc.Unsafe) = (r25v7 sun.misc.Unsafe), (r25v7 sun.misc.Unsafe), (r25v10 sun.misc.Unsafe) binds: [B:127:0x0367, B:124:0x0349, B:116:0x0307] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:128:0x0369 A[PHI: r0 r18 r25
      0x0369: PHI (r0v66 int) = (r0v62 int), (r0v65 int), (r0v69 int) binds: [B:127:0x0367, B:124:0x0349, B:116:0x0307] A[DONT_GENERATE, DONT_INLINE]
      0x0369: PHI (r18v5 int) = (r18v4 int), (r18v4 int), (r18v7 int) binds: [B:127:0x0367, B:124:0x0349, B:116:0x0307] A[DONT_GENERATE, DONT_INLINE]
      0x0369: PHI (r25v8 sun.misc.Unsafe) = (r25v7 sun.misc.Unsafe), (r25v7 sun.misc.Unsafe), (r25v10 sun.misc.Unsafe) binds: [B:127:0x0367, B:124:0x0349, B:116:0x0307] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:135:0x037b A[ADDED_TO_REGION] */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x006a. Please report as an issue. */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, zzbae zzbaeVar) throws IOException {
        int i4;
        Unsafe unsafe;
        int i5;
        int i6;
        int i7;
        T t2;
        int i8;
        int iZza;
        int i9;
        int i10;
        zzbae zzbaeVar2;
        int iZze;
        zzbae zzbaeVar3;
        Object objZza;
        zzbae zzbaeVar4;
        long j;
        Object objZza2;
        zzbcy<T> zzbcyVar = this;
        T t3 = t;
        bArr = bArr;
        int i11 = i2;
        i3 = i3;
        zzbaeVar = zzbaeVar;
        Unsafe unsafe2 = zzdwf;
        int i12 = -1;
        int iZza2 = i;
        int i13 = 0;
        int i14 = 0;
        int i15 = -1;
        while (true) {
            if (iZza2 < i11) {
                int i16 = iZza2 + 1;
                byte b = bArr[iZza2];
                if (b < 0) {
                    iZza = zzbad.zza(b, bArr, i16, zzbaeVar);
                    i8 = zzbaeVar.zzdpl;
                } else {
                    i8 = b;
                    iZza = i16;
                }
                int i17 = i8 >>> 3;
                int i18 = i8 & 7;
                int iZzcw = zzbcyVar.zzcw(i17);
                if (iZzcw != i12) {
                    int[] iArr = zzbcyVar.zzdwg;
                    int i19 = iArr[iZzcw + 1];
                    int i20 = (i19 & 267386880) >>> 20;
                    int i21 = i8;
                    long j2 = i19 & 1048575;
                    if (i20 <= 17) {
                        int i22 = iArr[iZzcw + 2];
                        int i23 = 1 << (i22 >>> 20);
                        int i24 = i22 & 1048575;
                        if (i24 != i15) {
                            if (i15 != -1) {
                                unsafe2.putInt(t3, i15, i14);
                            }
                            i14 = unsafe2.getInt(t3, i24);
                            i15 = i24;
                        }
                        switch (i20) {
                            case 0:
                                i21 = i21;
                                iZza = iZza;
                                i15 = i15;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 1) {
                                    zzbek.zza(t3, j2, zzbad.zzg(bArr, iZza));
                                    iZza2 = iZza + 8;
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5 || i5 == 0) {
                                        iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                        i3 = i5;
                                        i13 = i7;
                                        i15 = i4;
                                        i14 = i14;
                                        unsafe2 = unsafe;
                                        i12 = -1;
                                        i11 = i2;
                                        t3 = t;
                                        zzbcyVar = this;
                                    }
                                }
                                break;
                            case 1:
                                i21 = i21;
                                iZza = iZza;
                                i15 = i15;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 5) {
                                    zzbek.zza((Object) t3, j2, zzbad.zzh(bArr, iZza));
                                    iZza2 = iZza + 4;
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 2:
                            case 3:
                                i21 = i21;
                                iZza = iZza;
                                i15 = i15;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 0) {
                                    int iZzb = zzbad.zzb(bArr, iZza, zzbaeVar);
                                    unsafe2.putLong(t, j2, zzbaeVar.zzdpm);
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar;
                                    iZza2 = iZzb;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 4:
                            case 11:
                                i21 = i21;
                                iZza = iZza;
                                i15 = i15;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 0) {
                                    iZza2 = zzbad.zza(bArr, iZza, zzbaeVar4);
                                    unsafe2.putInt(t3, j2, zzbaeVar4.zzdpl);
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 5:
                            case 14:
                                i21 = i21;
                                i15 = i15;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 1) {
                                    unsafe2.putLong(t, j2, zzbad.zzf(bArr, iZza));
                                    iZza2 = iZza + 8;
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    iZza = iZza;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 6:
                            case 13:
                                i21 = i21;
                                i15 = i15;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 5) {
                                    unsafe2.putInt(t3, j2, zzbad.zze(bArr, iZza));
                                    iZza2 = iZza + 4;
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    iZza = iZza;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 7:
                                i21 = i21;
                                i15 = i15;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 0) {
                                    iZza2 = zzbad.zzb(bArr, iZza, zzbaeVar4);
                                    zzbek.zza(t3, j2, zzbaeVar4.zzdpm != 0);
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    iZza = iZza;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 8:
                                i21 = i21;
                                i15 = i15;
                                j = j2;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                i11 = i2;
                                if (i18 == 2) {
                                    iZza2 = (i19 & 536870912) == 0 ? zzbad.zzc(bArr, iZza, zzbaeVar4) : zzbad.zzd(bArr, iZza, zzbaeVar4);
                                    objZza2 = zzbaeVar4.zzdpn;
                                    unsafe2.putObject(t3, j, objZza2);
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    iZza = iZza;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 9:
                                i21 = i21;
                                i15 = i15;
                                j = j2;
                                zzbaeVar4 = zzbaeVar;
                                bArr = bArr;
                                if (i18 == 2) {
                                    i11 = i2;
                                    iZza2 = zza(zzbcyVar.zzcq(iZzcw), bArr, iZza, i11, zzbaeVar4);
                                    objZza2 = (i14 & i23) == 0 ? zzbaeVar4.zzdpn : zzbbq.zza(unsafe2.getObject(t3, j), zzbaeVar4.zzdpn);
                                    unsafe2.putObject(t3, j, objZza2);
                                    i14 |= i23;
                                    i15 = i15;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar4;
                                    i12 = -1;
                                    i3 = i3;
                                } else {
                                    iZza = iZza;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 10:
                                i21 = i21;
                                i12 = -1;
                                zzbaeVar2 = zzbaeVar;
                                bArr = bArr;
                                if (i18 == 2) {
                                    iZze = zzbad.zze(bArr, iZza, zzbaeVar2);
                                    unsafe2.putObject(t3, j2, zzbaeVar2.zzdpn);
                                    i14 |= i23;
                                    iZza2 = iZze;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar2;
                                    i11 = i2;
                                } else {
                                    iZza = iZza;
                                    i15 = i15;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 12:
                                i21 = i21;
                                i12 = -1;
                                zzbaeVar2 = zzbaeVar;
                                bArr = bArr;
                                if (i18 == 0) {
                                    iZza2 = zzbad.zza(bArr, iZza, zzbaeVar2);
                                    int i25 = zzbaeVar2.zzdpl;
                                    zzbbs<?> zzbbsVarZzcs = zzbcyVar.zzcs(iZzcw);
                                    if (zzbbsVarZzcs == null || zzbbsVarZzcs.zzq(i25) != null) {
                                        unsafe2.putInt(t3, j2, i25);
                                        i14 |= i23;
                                    } else {
                                        zzz(t).zzb(i21, Long.valueOf(i25));
                                    }
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar2;
                                    i11 = i2;
                                } else {
                                    iZza = iZza;
                                    i15 = i15;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 15:
                                i21 = i21;
                                i12 = -1;
                                zzbaeVar2 = zzbaeVar;
                                bArr = bArr;
                                if (i18 == 0) {
                                    iZze = zzbad.zza(bArr, iZza, zzbaeVar2);
                                    unsafe2.putInt(t3, j2, zzbaq.zzbu(zzbaeVar2.zzdpl));
                                    i14 |= i23;
                                    iZza2 = iZze;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar2;
                                    i11 = i2;
                                } else {
                                    iZza = iZza;
                                    i15 = i15;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 16:
                                i21 = i21;
                                i12 = -1;
                                if (i18 == 0) {
                                    bArr = bArr;
                                    int iZzb2 = zzbad.zzb(bArr, iZza, zzbaeVar);
                                    unsafe2.putLong(t, j2, zzbaq.zzl(zzbaeVar.zzdpm));
                                    i14 |= i23;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar;
                                    iZza2 = iZzb2;
                                    i11 = i2;
                                } else {
                                    iZza = iZza;
                                    i15 = i15;
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            case 17:
                                if (i18 == 3) {
                                    i12 = -1;
                                    iZza2 = zza(zzbcyVar.zzcq(iZzcw), bArr, iZza, i2, (i17 << 3) | 4, zzbaeVar);
                                    if ((i14 & i23) == 0) {
                                        zzbaeVar3 = zzbaeVar;
                                        objZza = zzbaeVar3.zzdpn;
                                    } else {
                                        zzbaeVar3 = zzbaeVar;
                                        objZza = zzbbq.zza(unsafe2.getObject(t3, j2), zzbaeVar3.zzdpn);
                                    }
                                    unsafe2.putObject(t3, j2, objZza);
                                    i14 |= i23;
                                    i13 = i21;
                                    zzbaeVar = zzbaeVar3;
                                    bArr = bArr;
                                    i11 = i2;
                                } else {
                                    i4 = i15;
                                    i6 = iZza;
                                    i14 = i14;
                                    i7 = i21;
                                    unsafe = unsafe2;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                                break;
                            default:
                                i4 = i15;
                                i6 = iZza;
                                i14 = i14;
                                i7 = i21;
                                unsafe = unsafe2;
                                i5 = i3;
                                if (i7 == i5) {
                                }
                                iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                i3 = i5;
                                i13 = i7;
                                i15 = i4;
                                i14 = i14;
                                unsafe2 = unsafe;
                                i12 = -1;
                                i11 = i2;
                                t3 = t;
                                zzbcyVar = this;
                                break;
                        }
                    } else {
                        int i26 = iZza;
                        i4 = i15;
                        bArr = bArr;
                        i11 = i2;
                        if (i20 != 27) {
                            i14 = i14;
                            if (i20 <= 49) {
                                i10 = i21;
                                unsafe = unsafe2;
                                iZza2 = zza(t, bArr, i26, i2, i21, i17, i18, iZzcw, i19, i20, j2, zzbaeVar);
                                if (iZza2 == i26) {
                                    i6 = iZza2;
                                    i7 = i10;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                } else {
                                    i15 = i4;
                                    i13 = i10;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i3 = i3;
                                }
                                i11 = i2;
                                t3 = t;
                                zzbcyVar = this;
                            } else {
                                i9 = i26;
                                i10 = i21;
                                unsafe = unsafe2;
                                if (i20 == 50) {
                                    if (i18 == 2) {
                                        iZza2 = zza(t, bArr, i9, i2, iZzcw, i17, j2, zzbaeVar);
                                        if (iZza2 == i9) {
                                            i6 = iZza2;
                                        } else {
                                            i15 = i4;
                                            i13 = i10;
                                            i14 = i14;
                                            unsafe2 = unsafe;
                                            i12 = -1;
                                            i3 = i3;
                                        }
                                        i11 = i2;
                                        t3 = t;
                                        zzbcyVar = this;
                                    } else {
                                        i6 = i9;
                                    }
                                    i7 = i10;
                                    i5 = i3;
                                    if (i7 == i5) {
                                    }
                                    iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                    i3 = i5;
                                    i13 = i7;
                                    i15 = i4;
                                    i14 = i14;
                                    unsafe2 = unsafe;
                                    i12 = -1;
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                } else {
                                    iZza2 = zza(t, bArr, i9, i2, i10, i17, i18, i19, i20, j2, iZzcw, zzbaeVar);
                                    if (iZza2 == i9) {
                                        i6 = iZza2;
                                        i7 = i10;
                                        i5 = i3;
                                        if (i7 == i5) {
                                        }
                                        iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                                        i3 = i5;
                                        i13 = i7;
                                        i15 = i4;
                                        i14 = i14;
                                        unsafe2 = unsafe;
                                        i12 = -1;
                                    } else {
                                        i15 = i4;
                                        i13 = i10;
                                        i14 = i14;
                                        unsafe2 = unsafe;
                                        i12 = -1;
                                        i3 = i3;
                                    }
                                    i11 = i2;
                                    t3 = t;
                                    zzbcyVar = this;
                                }
                            }
                        } else if (i18 == 2) {
                            zzbbt zzbbtVarZzbm = (zzbbt) unsafe2.getObject(t3, j2);
                            if (!zzbbtVarZzbm.zzaay()) {
                                int size = zzbbtVarZzbm.size();
                                zzbbtVarZzbm = zzbbtVarZzbm.zzbm(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(t3, j2, zzbbtVarZzbm);
                            }
                            zzbbt zzbbtVar = zzbbtVarZzbm;
                            zzbdm zzbdmVarZzcq = zzbcyVar.zzcq(iZzcw);
                            i13 = i21;
                            iZza2 = zza((zzbdm<?>) zzbdmVarZzcq, i13, bArr, i26, i2, (zzbbt<?>) zzbbtVar, zzbaeVar);
                            i15 = i4;
                            i14 = i14;
                            i12 = -1;
                            i3 = i3;
                            zzbaeVar = zzbaeVar;
                        } else {
                            i9 = i26;
                            i10 = i21;
                        }
                    }
                } else {
                    i9 = iZza;
                    i10 = i8;
                    i4 = i15;
                }
                unsafe = unsafe2;
                i6 = i9;
                i7 = i10;
                i5 = i3;
                if (i7 == i5) {
                }
                iZza2 = zza(i7, bArr, i6, i2, t, zzbaeVar);
                i3 = i5;
                i13 = i7;
                i15 = i4;
                i14 = i14;
                unsafe2 = unsafe;
                i12 = -1;
                i11 = i2;
                t3 = t;
                zzbcyVar = this;
            } else {
                i14 = i14;
                i4 = i15;
                unsafe = unsafe2;
                i5 = i3;
                i6 = iZza2;
                i7 = i13;
            }
        }
        int i27 = i4;
        int i28 = i14;
        if (i27 != -1) {
            long j3 = i27;
            t2 = t;
            unsafe.putInt(t2, j3, i28);
        } else {
            t2 = t;
        }
        int[] iArr2 = this.zzdwr;
        if (iArr2 != null) {
            zzbef zzbefVar = null;
            for (int i29 : iArr2) {
                zzbefVar = (zzbef) zza(t2, i29, zzbefVar, (zzbee<UT, zzbef>) this.zzdwv);
            }
            if (zzbefVar != null) {
                this.zzdwv.zzf(t2, zzbefVar);
            }
        }
        if (i5 == 0) {
            if (i6 != i2) {
                throw zzbbu.zzadr();
            }
        } else if (i6 > i2 || i7 != i5) {
            throw zzbbu.zzadr();
        }
        return i6;
    }

    private static int zza(byte[] bArr, int i, int i2, zzbes zzbesVar, Class<?> cls, zzbae zzbaeVar) throws IOException {
        int iZzb;
        Object objValueOf;
        Object objValueOf2;
        Object objValueOf3;
        int iZzbu;
        long jZzl;
        switch (zzbcz.zzdql[zzbesVar.ordinal()]) {
            case 1:
                iZzb = zzbad.zzb(bArr, i, zzbaeVar);
                objValueOf = Boolean.valueOf(zzbaeVar.zzdpm != 0);
                zzbaeVar.zzdpn = objValueOf;
                return iZzb;
            case 2:
                return zzbad.zze(bArr, i, zzbaeVar);
            case 3:
                objValueOf2 = Double.valueOf(zzbad.zzg(bArr, i));
                zzbaeVar.zzdpn = objValueOf2;
                return i + 8;
            case 4:
            case 5:
                objValueOf3 = Integer.valueOf(zzbad.zze(bArr, i));
                zzbaeVar.zzdpn = objValueOf3;
                return i + 4;
            case 6:
            case 7:
                objValueOf2 = Long.valueOf(zzbad.zzf(bArr, i));
                zzbaeVar.zzdpn = objValueOf2;
                return i + 8;
            case 8:
                objValueOf3 = Float.valueOf(zzbad.zzh(bArr, i));
                zzbaeVar.zzdpn = objValueOf3;
                return i + 4;
            case 9:
            case 10:
            case 11:
                iZzb = zzbad.zza(bArr, i, zzbaeVar);
                iZzbu = zzbaeVar.zzdpl;
                objValueOf = Integer.valueOf(iZzbu);
                zzbaeVar.zzdpn = objValueOf;
                return iZzb;
            case 12:
            case 13:
                iZzb = zzbad.zzb(bArr, i, zzbaeVar);
                jZzl = zzbaeVar.zzdpm;
                objValueOf = Long.valueOf(jZzl);
                zzbaeVar.zzdpn = objValueOf;
                return iZzb;
            case 14:
                return zza((zzbdm) zzbdg.zzaeo().zze(cls), bArr, i, i2, zzbaeVar);
            case 15:
                iZzb = zzbad.zza(bArr, i, zzbaeVar);
                iZzbu = zzbaq.zzbu(zzbaeVar.zzdpl);
                objValueOf = Integer.valueOf(iZzbu);
                zzbaeVar.zzdpn = objValueOf;
                return iZzb;
            case 16:
                iZzb = zzbad.zzb(bArr, i, zzbaeVar);
                jZzl = zzbaq.zzl(zzbaeVar.zzdpm);
                objValueOf = Long.valueOf(jZzl);
                zzbaeVar.zzdpn = objValueOf;
                return iZzb;
            case 17:
                return zzbad.zzd(bArr, i, zzbaeVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:51:0x0101  */
    /* JADX WARN: Code duplicated, block: B:52:0x010a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0110  */
    /* JADX WARN: Code duplicated, block: B:55:0x0119  */
    /* JADX WARN: Code duplicated, block: B:57:0x011f  */
    /* JADX WARN: Code duplicated, block: B:58:0x012a  */
    /* JADX WARN: Code duplicated, block: B:60:0x0130  */
    /* JADX WARN: Code duplicated, block: B:63:0x0146  */
    /* JADX WARN: Code duplicated, block: B:64:0x014c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0165  */
    /* JADX WARN: Code duplicated, block: B:78:0x016d A[EDGE_INSN: B:78:0x016d->B:73:0x016d BREAK  A[LOOP:0: B:23:0x0067->B:72:0x0169], SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static <T> zzbcy<T> zza(Class<T> cls, zzbcs zzbcsVar, zzbdc zzbdcVar, zzbce zzbceVar, zzbee<?, ?> zzbeeVar, zzbbd<?> zzbbdVar, zzbcp zzbcpVar) {
        int iZzaew;
        int i;
        int i2;
        int iZza;
        int iZza2;
        int iZzafh;
        int i3;
        int i4;
        int i5;
        int iZzaez;
        int i6;
        if (!(zzbcsVar instanceof zzbdi)) {
            ((zzbdz) zzbcsVar).zzaeh();
            throw new NoSuchMethodError();
        }
        zzbdi zzbdiVar = (zzbdi) zzbcsVar;
        boolean z = zzbdiVar.zzaeh() == zzbbo.zze.zzduj;
        if (zzbdiVar.getFieldCount() == 0) {
            iZzaew = 0;
            i = 0;
            i2 = 0;
        } else {
            int iZzaer = zzbdiVar.zzaer();
            int iZzaes = zzbdiVar.zzaes();
            iZzaew = zzbdiVar.zzaew();
            i = iZzaer;
            i2 = iZzaes;
        }
        int[] iArr = new int[iZzaew << 2];
        Object[] objArr = new Object[iZzaew << 1];
        int[] iArr2 = zzbdiVar.zzaet() > 0 ? new int[zzbdiVar.zzaet()] : null;
        int[] iArr3 = zzbdiVar.zzaeu() > 0 ? new int[zzbdiVar.zzaeu()] : null;
        zzbdj zzbdjVarZzaeq = zzbdiVar.zzaeq();
        if (zzbdjVarZzaeq.next()) {
            int iZzaci = zzbdjVarZzaeq.zzaci();
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                if (iZzaci >= zzbdiVar.zzaex() || i7 >= ((iZzaci - i) << 2)) {
                    if (!zzbdjVarZzaeq.zzafb()) {
                        iZza = (int) zzbek.zza(zzbdjVarZzaeq.zzafe());
                        if (zzbdjVarZzaeq.zzaff()) {
                            iZza2 = (int) zzbek.zza(zzbdjVarZzaeq.zzafg());
                            iZzafh = zzbdjVarZzaeq.zzafh();
                        } else {
                            iZza2 = 0;
                        }
                        iArr[i7] = zzbdjVarZzaeq.zzaci();
                        i3 = i7 + 1;
                        if (zzbdjVarZzaeq.zzafj()) {
                            i4 = 536870912;
                        } else {
                            i4 = 0;
                        }
                        if (zzbdjVarZzaeq.zzafi()) {
                            i5 = 268435456;
                        } else {
                            i5 = 0;
                        }
                        iArr[i3] = i4 | i5 | (zzbdjVarZzaeq.zzaez() << 20) | iZza;
                        iArr[i7 + 2] = iZza2 | (iZzafh << 20);
                        if (zzbdjVarZzaeq.zzafm() != null) {
                            i6 = (i7 / 4) << 1;
                            objArr[i6] = zzbdjVarZzaeq.zzafm();
                            if (zzbdjVarZzaeq.zzafk() != null) {
                                objArr[i6 + 1] = zzbdjVarZzaeq.zzafk();
                            } else if (zzbdjVarZzaeq.zzafl() != null) {
                                objArr[i6 + 1] = zzbdjVarZzaeq.zzafl();
                            }
                        } else if (zzbdjVarZzaeq.zzafk() != null) {
                            objArr[((i7 / 4) << 1) + 1] = zzbdjVarZzaeq.zzafk();
                        } else if (zzbdjVarZzaeq.zzafl() != null) {
                            objArr[((i7 / 4) << 1) + 1] = zzbdjVarZzaeq.zzafl();
                        }
                        iZzaez = zzbdjVarZzaeq.zzaez();
                        if (iZzaez == zzbbj.MAP.ordinal()) {
                            iArr2[i8] = i7;
                            i8++;
                        } else if (iZzaez >= 18 && iZzaez <= 49) {
                            iArr3[i9] = iArr[i3] & 1048575;
                            i9++;
                        }
                        if (zzbdjVarZzaeq.next()) {
                            break;
                        }
                        iZzaci = zzbdjVarZzaeq.zzaci();
                    } else {
                        iZza = (int) zzbek.zza(zzbdjVarZzaeq.zzafc());
                        iZza2 = (int) zzbek.zza(zzbdjVarZzaeq.zzafd());
                    }
                    iZzafh = 0;
                    iArr[i7] = zzbdjVarZzaeq.zzaci();
                    i3 = i7 + 1;
                    if (zzbdjVarZzaeq.zzafj()) {
                        i4 = 536870912;
                    } else {
                        i4 = 0;
                    }
                    if (zzbdjVarZzaeq.zzafi()) {
                        i5 = 268435456;
                    } else {
                        i5 = 0;
                    }
                    iArr[i3] = i4 | i5 | (zzbdjVarZzaeq.zzaez() << 20) | iZza;
                    iArr[i7 + 2] = iZza2 | (iZzafh << 20);
                    if (zzbdjVarZzaeq.zzafm() != null) {
                        i6 = (i7 / 4) << 1;
                        objArr[i6] = zzbdjVarZzaeq.zzafm();
                        if (zzbdjVarZzaeq.zzafk() != null) {
                            objArr[i6 + 1] = zzbdjVarZzaeq.zzafk();
                        } else if (zzbdjVarZzaeq.zzafl() != null) {
                            objArr[i6 + 1] = zzbdjVarZzaeq.zzafl();
                        }
                    } else if (zzbdjVarZzaeq.zzafk() != null) {
                        objArr[((i7 / 4) << 1) + 1] = zzbdjVarZzaeq.zzafk();
                    } else if (zzbdjVarZzaeq.zzafl() != null) {
                        objArr[((i7 / 4) << 1) + 1] = zzbdjVarZzaeq.zzafl();
                    }
                    iZzaez = zzbdjVarZzaeq.zzaez();
                    if (iZzaez == zzbbj.MAP.ordinal()) {
                        iArr2[i8] = i7;
                        i8++;
                    } else if (iZzaez >= 18) {
                        iArr3[i9] = iArr[i3] & 1048575;
                        i9++;
                    }
                    if (zzbdjVarZzaeq.next()) {
                        break;
                        break;
                    }
                    iZzaci = zzbdjVarZzaeq.zzaci();
                } else {
                    for (int i10 = 0; i10 < 4; i10++) {
                        iArr[i7 + i10] = -1;
                    }
                }
                i7 += 4;
            }
        }
        return new zzbcy<>(iArr, objArr, i, i2, zzbdiVar.zzaex(), zzbdiVar.zzaej(), z, false, zzbdiVar.zzaev(), iArr2, iArr3, zzbdcVar, zzbceVar, zzbeeVar, zzbbdVar, zzbcpVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzbbs<?> zzbbsVar, UB ub, zzbee<UT, UB> zzbeeVar) {
        zzbcn<?, ?> zzbcnVarZzx = this.zzdwx.zzx(zzcr(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (zzbbsVar.zzq(((Integer) next.getValue()).intValue()) == null) {
                if (ub == null) {
                    ub = zzbeeVar.zzagb();
                }
                zzbam zzbamVarZzbo = zzbah.zzbo(zzbcm.zza(zzbcnVarZzx, next.getKey(), next.getValue()));
                try {
                    zzbcm.zza(zzbamVarZzbo.zzabj(), zzbcnVarZzx, next.getKey(), next.getValue());
                    zzbeeVar.zza(ub, i2, zzbamVarZzbo.zzabi());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzbee<UT, UB> zzbeeVar) {
        zzbbs<?> zzbbsVarZzcs;
        int i2 = this.zzdwg[i];
        Object objZzp = zzbek.zzp(obj, zzct(i) & 1048575);
        return (objZzp == null || (zzbbsVarZzcs = zzcs(i)) == null) ? ub : (UB) zza(i, i2, this.zzdwx.zzs(objZzp), zzbbsVarZzcs, ub, zzbeeVar);
    }

    private static void zza(int i, Object obj, zzbey zzbeyVar) throws IOException {
        if (obj instanceof String) {
            zzbeyVar.zzf(i, (String) obj);
        } else {
            zzbeyVar.zza(i, (zzbah) obj);
        }
    }

    private static <UT, UB> void zza(zzbee<UT, UB> zzbeeVar, T t, zzbey zzbeyVar) throws IOException {
        zzbeeVar.zza(zzbeeVar.zzac(t), zzbeyVar);
    }

    private final <K, V> void zza(zzbey zzbeyVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzbeyVar.zza(i, this.zzdwx.zzx(zzcr(i2)), this.zzdwx.zzt(obj));
        }
    }

    private final void zza(Object obj, int i, zzbdl zzbdlVar) throws IOException {
        long j;
        Object objZzabs;
        if (zzcv(i)) {
            j = i & 1048575;
            objZzabs = zzbdlVar.zzabr();
        } else if (this.zzdwn) {
            j = i & 1048575;
            objZzabs = zzbdlVar.readString();
        } else {
            j = i & 1048575;
            objZzabs = zzbdlVar.zzabs();
        }
        zzbek.zza(obj, j, objZzabs);
    }

    private final void zza(T t, T t2, int i) {
        long jZzct = zzct(i) & 1048575;
        if (zza(t2, i)) {
            Object objZzp = zzbek.zzp(t, jZzct);
            Object objZzp2 = zzbek.zzp(t2, jZzct);
            if (objZzp != null && objZzp2 != null) {
                zzbek.zza(t, jZzct, zzbbq.zza(objZzp, objZzp2));
                zzb(t, i);
            } else if (objZzp2 != null) {
                zzbek.zza(t, jZzct, objZzp2);
                zzb(t, i);
            }
        }
    }

    private final boolean zza(T t, int i) {
        if (!this.zzdwo) {
            int iZzcu = zzcu(i);
            return (zzbek.zzk(t, (long) (iZzcu & 1048575)) & (1 << (iZzcu >>> 20))) != 0;
        }
        int iZzct = zzct(i);
        long j = iZzct & 1048575;
        switch ((iZzct & 267386880) >>> 20) {
            case 0:
                return zzbek.zzo(t, j) != 0.0d;
            case 1:
                return zzbek.zzn(t, j) != 0.0f;
            case 2:
                return zzbek.zzl(t, j) != 0;
            case 3:
                return zzbek.zzl(t, j) != 0;
            case 4:
                return zzbek.zzk(t, j) != 0;
            case 5:
                return zzbek.zzl(t, j) != 0;
            case 6:
                return zzbek.zzk(t, j) != 0;
            case 7:
                return zzbek.zzm(t, j);
            case 8:
                Object objZzp = zzbek.zzp(t, j);
                if (objZzp instanceof String) {
                    return !((String) objZzp).isEmpty();
                }
                if (objZzp instanceof zzbah) {
                    return !zzbah.zzdpq.equals(objZzp);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzbek.zzp(t, j) != null;
            case 10:
                return !zzbah.zzdpq.equals(zzbek.zzp(t, j));
            case 11:
                return zzbek.zzk(t, j) != 0;
            case 12:
                return zzbek.zzk(t, j) != 0;
            case 13:
                return zzbek.zzk(t, j) != 0;
            case 14:
                return zzbek.zzl(t, j) != 0;
            case 15:
                return zzbek.zzk(t, j) != 0;
            case 16:
                return zzbek.zzl(t, j) != 0;
            case 17:
                return zzbek.zzp(t, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzbek.zzk(t, (long) (zzcu(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzdwo) {
            return zza(t, i);
        }
        return (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzbdm zzbdmVar) {
        return zzbdmVar.zzaa(zzbek.zzp(obj, i & 1048575));
    }

    private final void zzb(T t, int i) {
        if (this.zzdwo) {
            return;
        }
        int iZzcu = zzcu(i);
        long j = iZzcu & 1048575;
        zzbek.zzb(t, j, zzbek.zzk(t, j) | (1 << (iZzcu >>> 20)));
    }

    private final void zzb(T t, int i, int i2) {
        zzbek.zzb(t, zzcu(i2) & 1048575, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private final void zzb(T t, zzbey zzbeyVar) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        int i6;
        int i7;
        List list;
        boolean z6;
        if (this.zzdwm) {
            zzbbg<T> zzbbgVarZzm = this.zzdww.zzm(t);
            if (zzbbgVarZzm.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzbbgVarZzm.iterator();
                entry = (Map.Entry) it.next();
            }
        } else {
            it = null;
            entry = null;
        }
        int i8 = -1;
        int length = this.zzdwg.length;
        Unsafe unsafe = zzdwf;
        Map.Entry<?, ?> entry2 = entry;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10 += 4) {
            int iZzct = zzct(i10);
            int[] iArr = this.zzdwg;
            int i11 = iArr[i10];
            int i12 = (267386880 & iZzct) >>> 20;
            if (this.zzdwo || i12 > 17) {
                entry2 = entry2;
                i = 0;
            } else {
                int i13 = iArr[i10 + 2];
                int i14 = i13 & 1048575;
                if (i14 != i8) {
                    i9 = unsafe.getInt(t, i14);
                } else {
                    i14 = i8;
                }
                i = 1 << (i13 >>> 20);
                i8 = i14;
                entry2 = entry2;
            }
            while (entry2 != null && this.zzdww.zza(entry2) <= i11) {
                this.zzdww.zza(zzbeyVar, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzct & 1048575;
            switch (i12) {
                case 0:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zza(i11, zzbek.zzo(t, j));
                    }
                    break;
                case 1:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zza(i11, zzbek.zzn(t, j));
                    }
                    break;
                case 2:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzi(i11, unsafe.getLong(t, j));
                    }
                    break;
                case 3:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zza(i11, unsafe.getLong(t, j));
                    }
                    break;
                case 4:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzm(i11, unsafe.getInt(t, j));
                    }
                    break;
                case 5:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzc(i11, unsafe.getLong(t, j));
                    }
                    break;
                case 6:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzp(i11, unsafe.getInt(t, j));
                    }
                    break;
                case 7:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzf(i11, zzbek.zzm(t, j));
                    }
                    break;
                case 8:
                    if ((i9 & i) != 0) {
                        zza(i11, unsafe.getObject(t, j), zzbeyVar);
                    }
                    break;
                case 9:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zza(i11, unsafe.getObject(t, j), zzcq(i10));
                    }
                    break;
                case 10:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zza(i11, (zzbah) unsafe.getObject(t, j));
                    }
                    break;
                case 11:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzn(i11, unsafe.getInt(t, j));
                    }
                    break;
                case 12:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzx(i11, unsafe.getInt(t, j));
                    }
                    break;
                case 13:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzw(i11, unsafe.getInt(t, j));
                    }
                    break;
                case 14:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzj(i11, unsafe.getLong(t, j));
                    }
                    break;
                case 15:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzo(i11, unsafe.getInt(t, j));
                    }
                    break;
                case 16:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzb(i11, unsafe.getLong(t, j));
                    }
                    break;
                case 17:
                    if ((i9 & i) != 0) {
                        zzbeyVar.zzb(i11, unsafe.getObject(t, j), zzcq(i10));
                    }
                    break;
                case 18:
                    zzbdo.zza(this.zzdwg[i10], (List<Double>) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 19:
                    zzbdo.zzb(this.zzdwg[i10], (List<Float>) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 20:
                    zzbdo.zzc(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 21:
                    zzbdo.zzd(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 22:
                    zzbdo.zzh(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 23:
                    zzbdo.zzf(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 24:
                    zzbdo.zzk(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 25:
                    zzbdo.zzn(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, false);
                    break;
                case 26:
                    zzbdo.zza(this.zzdwg[i10], (List<String>) unsafe.getObject(t, j), zzbeyVar);
                    break;
                case 27:
                    zzbdo.zza(this.zzdwg[i10], (List<?>) unsafe.getObject(t, j), zzbeyVar, zzcq(i10));
                    break;
                case 28:
                    zzbdo.zzb(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar);
                    break;
                case 29:
                    z = false;
                    i2 = this.zzdwg[i10];
                    zzbdo.zzi(i2, (List) unsafe.getObject(t, j), zzbeyVar, z);
                    break;
                case 30:
                    z2 = false;
                    i3 = this.zzdwg[i10];
                    zzbdo.zzm(i3, (List) unsafe.getObject(t, j), zzbeyVar, z2);
                    break;
                case 31:
                    z3 = false;
                    i4 = this.zzdwg[i10];
                    zzbdo.zzl(i4, (List) unsafe.getObject(t, j), zzbeyVar, z3);
                    break;
                case 32:
                    z4 = false;
                    i5 = this.zzdwg[i10];
                    zzbdo.zzg(i5, (List) unsafe.getObject(t, j), zzbeyVar, z4);
                    break;
                case 33:
                    z5 = false;
                    i6 = this.zzdwg[i10];
                    zzbdo.zzj(i6, (List) unsafe.getObject(t, j), zzbeyVar, z5);
                    break;
                case 34:
                    i7 = this.zzdwg[i10];
                    list = (List) unsafe.getObject(t, j);
                    z6 = false;
                    zzbdo.zze(i7, list, zzbeyVar, z6);
                    break;
                case 35:
                    zzbdo.zza(this.zzdwg[i10], (List<Double>) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 36:
                    zzbdo.zzb(this.zzdwg[i10], (List<Float>) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 37:
                    zzbdo.zzc(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 38:
                    zzbdo.zzd(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 39:
                    zzbdo.zzh(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 40:
                    zzbdo.zzf(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 41:
                    zzbdo.zzk(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 42:
                    zzbdo.zzn(this.zzdwg[i10], (List) unsafe.getObject(t, j), zzbeyVar, true);
                    break;
                case 43:
                    z = true;
                    i2 = this.zzdwg[i10];
                    zzbdo.zzi(i2, (List) unsafe.getObject(t, j), zzbeyVar, z);
                    break;
                case 44:
                    z2 = true;
                    i3 = this.zzdwg[i10];
                    zzbdo.zzm(i3, (List) unsafe.getObject(t, j), zzbeyVar, z2);
                    break;
                case 45:
                    z3 = true;
                    i4 = this.zzdwg[i10];
                    zzbdo.zzl(i4, (List) unsafe.getObject(t, j), zzbeyVar, z3);
                    break;
                case 46:
                    z4 = true;
                    i5 = this.zzdwg[i10];
                    zzbdo.zzg(i5, (List) unsafe.getObject(t, j), zzbeyVar, z4);
                    break;
                case 47:
                    z5 = true;
                    i6 = this.zzdwg[i10];
                    zzbdo.zzj(i6, (List) unsafe.getObject(t, j), zzbeyVar, z5);
                    break;
                case 48:
                    i7 = this.zzdwg[i10];
                    list = (List) unsafe.getObject(t, j);
                    z6 = true;
                    zzbdo.zze(i7, list, zzbeyVar, z6);
                    break;
                case 49:
                    zzbdo.zzb(this.zzdwg[i10], (List<?>) unsafe.getObject(t, j), zzbeyVar, zzcq(i10));
                    break;
                case 50:
                    zza(zzbeyVar, i11, unsafe.getObject(t, j), i10);
                    break;
                case 51:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zza(i11, zzf(t, j));
                    }
                    break;
                case 52:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zza(i11, zzg(t, j));
                    }
                    break;
                case 53:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzi(i11, zzi(t, j));
                    }
                    break;
                case 54:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zza(i11, zzi(t, j));
                    }
                    break;
                case 55:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzm(i11, zzh(t, j));
                    }
                    break;
                case 56:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzc(i11, zzi(t, j));
                    }
                    break;
                case 57:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzp(i11, zzh(t, j));
                    }
                    break;
                case 58:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzf(i11, zzj(t, j));
                    }
                    break;
                case 59:
                    if (zza(t, i11, i10)) {
                        zza(i11, unsafe.getObject(t, j), zzbeyVar);
                    }
                    break;
                case 60:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zza(i11, unsafe.getObject(t, j), zzcq(i10));
                    }
                    break;
                case 61:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zza(i11, (zzbah) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzn(i11, zzh(t, j));
                    }
                    break;
                case 63:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzx(i11, zzh(t, j));
                    }
                    break;
                case 64:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzw(i11, zzh(t, j));
                    }
                    break;
                case 65:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzj(i11, zzi(t, j));
                    }
                    break;
                case 66:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzo(i11, zzh(t, j));
                    }
                    break;
                case 67:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzb(i11, zzi(t, j));
                    }
                    break;
                case 68:
                    if (zza(t, i11, i10)) {
                        zzbeyVar.zzb(i11, unsafe.getObject(t, j), zzcq(i10));
                    }
                    break;
                default:
                    break;
            }
        }
        Map.Entry<?, ?> entry3 = entry2;
        while (entry3 != null) {
            this.zzdww.zza(zzbeyVar, entry3);
            entry3 = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zza(this.zzdwv, t, zzbeyVar);
    }

    private final void zzb(T t, T t2, int i) {
        int iZzct = zzct(i);
        int i2 = this.zzdwg[i];
        long j = iZzct & 1048575;
        if (zza(t2, i2, i)) {
            Object objZzp = zzbek.zzp(t, j);
            Object objZzp2 = zzbek.zzp(t2, j);
            if (objZzp != null && objZzp2 != null) {
                zzbek.zza(t, j, zzbbq.zza(objZzp, objZzp2));
                zzb(t, i2, i);
            } else if (objZzp2 != null) {
                zzbek.zza(t, j, objZzp2);
                zzb(t, i2, i);
            }
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza(t, i) == zza(t2, i);
    }

    private final zzbdm zzcq(int i) {
        int i2 = (i / 4) << 1;
        zzbdm zzbdmVar = (zzbdm) this.zzdwh[i2];
        if (zzbdmVar != null) {
            return zzbdmVar;
        }
        zzbdm<T> zzbdmVarZze = zzbdg.zzaeo().zze((Class) this.zzdwh[i2 + 1]);
        this.zzdwh[i2] = zzbdmVarZze;
        return zzbdmVarZze;
    }

    private final Object zzcr(int i) {
        return this.zzdwh[(i / 4) << 1];
    }

    private final zzbbs<?> zzcs(int i) {
        return (zzbbs) this.zzdwh[((i / 4) << 1) + 1];
    }

    private final int zzct(int i) {
        return this.zzdwg[i + 1];
    }

    private final int zzcu(int i) {
        return this.zzdwg[i + 2];
    }

    private static boolean zzcv(int i) {
        return (i & 536870912) != 0;
    }

    private final int zzcw(int i) {
        int i2 = this.zzdwi;
        if (i >= i2) {
            int i3 = this.zzdwk;
            if (i < i3) {
                int i4 = (i - i2) << 2;
                if (this.zzdwg[i4] == i) {
                    return i4;
                }
                return -1;
            }
            if (i <= this.zzdwj) {
                int i5 = i3 - i2;
                int length = (this.zzdwg.length / 4) - 1;
                while (i5 <= length) {
                    int i6 = (length + i5) >>> 1;
                    int i7 = i6 << 2;
                    int i8 = this.zzdwg[i7];
                    if (i == i8) {
                        return i7;
                    }
                    if (i < i8) {
                        length = i6 - 1;
                    } else {
                        i5 = i6 + 1;
                    }
                }
            }
        }
        return -1;
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zzbek.zzp(obj, j);
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzbek.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzbek.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzbek.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzbek.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzbek.zzp(t, j)).booleanValue();
    }

    private static zzbef zzz(Object obj) {
        zzbbo zzbboVar = (zzbbo) obj;
        zzbef zzbefVar = zzbboVar.zzdtt;
        if (zzbefVar != zzbef.zzagc()) {
            return zzbefVar;
        }
        zzbef zzbefVarZzagd = zzbef.zzagd();
        zzbboVar.zzdtt = zzbefVarZzagd;
        return zzbefVarZzagd;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01a2  */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final boolean equals(T t, T t2) {
        int length = this.zzdwg.length;
        int i = 0;
        while (true) {
            boolean zZzd = true;
            if (i >= length) {
                if (!this.zzdwv.zzac(t).equals(this.zzdwv.zzac(t2))) {
                    return false;
                }
                if (this.zzdwm) {
                    return this.zzdww.zzm(t).equals(this.zzdww.zzm(t2));
                }
                return true;
            }
            int iZzct = zzct(i);
            long j = iZzct & 1048575;
            switch ((iZzct & 267386880) >>> 20) {
                case 0:
                    if (!zzc(t, t2, i) || zzbek.zzl(t, j) != zzbek.zzl(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 1:
                    if (!zzc(t, t2, i) || zzbek.zzk(t, j) != zzbek.zzk(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 2:
                    if (!zzc(t, t2, i) || zzbek.zzl(t, j) != zzbek.zzl(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 3:
                    if (!zzc(t, t2, i) || zzbek.zzl(t, j) != zzbek.zzl(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 4:
                    if (!zzc(t, t2, i) || zzbek.zzk(t, j) != zzbek.zzk(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 5:
                    if (!zzc(t, t2, i) || zzbek.zzl(t, j) != zzbek.zzl(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 6:
                    if (!zzc(t, t2, i) || zzbek.zzk(t, j) != zzbek.zzk(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 7:
                    if (!zzc(t, t2, i) || zzbek.zzm(t, j) != zzbek.zzm(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 8:
                    if (!zzc(t, t2, i) || !zzbdo.zzd(zzbek.zzp(t, j), zzbek.zzp(t2, j))) {
                        zZzd = false;
                    }
                    break;
                case 9:
                    if (!zzc(t, t2, i) || !zzbdo.zzd(zzbek.zzp(t, j), zzbek.zzp(t2, j))) {
                        zZzd = false;
                    }
                    break;
                case 10:
                    if (!zzc(t, t2, i) || !zzbdo.zzd(zzbek.zzp(t, j), zzbek.zzp(t2, j))) {
                        zZzd = false;
                    }
                    break;
                case 11:
                    if (!zzc(t, t2, i) || zzbek.zzk(t, j) != zzbek.zzk(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 12:
                    if (!zzc(t, t2, i) || zzbek.zzk(t, j) != zzbek.zzk(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 13:
                    if (!zzc(t, t2, i) || zzbek.zzk(t, j) != zzbek.zzk(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 14:
                    if (!zzc(t, t2, i) || zzbek.zzl(t, j) != zzbek.zzl(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 15:
                    if (!zzc(t, t2, i) || zzbek.zzk(t, j) != zzbek.zzk(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 16:
                    if (!zzc(t, t2, i) || zzbek.zzl(t, j) != zzbek.zzl(t2, j)) {
                        zZzd = false;
                    }
                    break;
                case 17:
                    if (!zzc(t, t2, i) || !zzbdo.zzd(zzbek.zzp(t, j), zzbek.zzp(t2, j))) {
                        zZzd = false;
                    }
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                    zZzd = zzbdo.zzd(zzbek.zzp(t, j), zzbek.zzp(t2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzcu = zzcu(i) & 1048575;
                    if (zzbek.zzk(t, jZzcu) != zzbek.zzk(t2, jZzcu) || !zzbdo.zzd(zzbek.zzp(t, j), zzbek.zzp(t2, j))) {
                        zZzd = false;
                    }
                    break;
            }
            if (!zZzd) {
                return false;
            }
            i += 4;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:33:0x0061  */
    /* JADX WARN: Code duplicated, block: B:48:0x0093  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e2 A[PHI: r3
      0x00e2: PHI (r3v13 java.lang.Object) = (r3v11 java.lang.Object), (r3v14 java.lang.Object) binds: [B:67:0x00e0, B:62:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:70:0x00ea  */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final int hashCode(T t) {
        int i;
        double dZzo;
        float fZzn;
        long jZzl;
        int iZzk;
        boolean zZzm;
        Object objZzp;
        Object objZzp2;
        int length = this.zzdwg.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 4) {
            int iZzct = zzct(i3);
            int i4 = this.zzdwg[i3];
            long j = 1048575 & iZzct;
            int iHashCode = 37;
            switch ((iZzct & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    dZzo = zzbek.zzo(t, j);
                    jZzl = Double.doubleToLongBits(dZzo);
                    iZzk = zzbbq.zzv(jZzl);
                    i2 = i + iZzk;
                    break;
                case 1:
                    i = i2 * 53;
                    fZzn = zzbek.zzn(t, j);
                    iZzk = Float.floatToIntBits(fZzn);
                    i2 = i + iZzk;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i2 * 53;
                    jZzl = zzbek.zzl(t, j);
                    iZzk = zzbbq.zzv(jZzl);
                    i2 = i + iZzk;
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i = i2 * 53;
                    iZzk = zzbek.zzk(t, j);
                    i2 = i + iZzk;
                    break;
                case 7:
                    i = i2 * 53;
                    zZzm = zzbek.zzm(t, j);
                    iZzk = zzbbq.zzar(zZzm);
                    i2 = i + iZzk;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzk = ((String) zzbek.zzp(t, j)).hashCode();
                    i2 = i + iZzk;
                    break;
                case 9:
                    objZzp = zzbek.zzp(t, j);
                    if (objZzp != null) {
                        iHashCode = objZzp.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                    i = i2 * 53;
                    objZzp2 = zzbek.zzp(t, j);
                    iZzk = objZzp2.hashCode();
                    i2 = i + iZzk;
                    break;
                case 17:
                    objZzp = zzbek.zzp(t, j);
                    if (objZzp != null) {
                        iHashCode = objZzp.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 51:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        dZzo = zzf(t, j);
                        jZzl = Double.doubleToLongBits(dZzo);
                        iZzk = zzbbq.zzv(jZzl);
                        i2 = i + iZzk;
                    }
                    break;
                case 52:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        fZzn = zzg(t, j);
                        iZzk = Float.floatToIntBits(fZzn);
                        i2 = i + iZzk;
                    }
                    break;
                case 53:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        jZzl = zzi(t, j);
                        iZzk = zzbbq.zzv(jZzl);
                        i2 = i + iZzk;
                    }
                    break;
                case 54:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        jZzl = zzi(t, j);
                        iZzk = zzbbq.zzv(jZzl);
                        i2 = i + iZzk;
                    }
                    break;
                case 55:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZzk = zzh(t, j);
                        i2 = i + iZzk;
                    }
                    break;
                case 56:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        jZzl = zzi(t, j);
                        iZzk = zzbbq.zzv(jZzl);
                        i2 = i + iZzk;
                    }
                    break;
                case 57:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZzk = zzh(t, j);
                        i2 = i + iZzk;
                    }
                    break;
                case 58:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        zZzm = zzj(t, j);
                        iZzk = zzbbq.zzar(zZzm);
                        i2 = i + iZzk;
                    }
                    break;
                case 59:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZzk = ((String) zzbek.zzp(t, j)).hashCode();
                        i2 = i + iZzk;
                    }
                    break;
                case 60:
                    if (zza(t, i4, i3)) {
                        objZzp2 = zzbek.zzp(t, j);
                        i = i2 * 53;
                        iZzk = objZzp2.hashCode();
                        i2 = i + iZzk;
                    }
                    break;
                case 61:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        objZzp2 = zzbek.zzp(t, j);
                        iZzk = objZzp2.hashCode();
                        i2 = i + iZzk;
                    }
                    break;
                case 62:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZzk = zzh(t, j);
                        i2 = i + iZzk;
                    }
                    break;
                case 63:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZzk = zzh(t, j);
                        i2 = i + iZzk;
                    }
                    break;
                case 64:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZzk = zzh(t, j);
                        i2 = i + iZzk;
                    }
                    break;
                case 65:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        jZzl = zzi(t, j);
                        iZzk = zzbbq.zzv(jZzl);
                        i2 = i + iZzk;
                    }
                    break;
                case 66:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZzk = zzh(t, j);
                        i2 = i + iZzk;
                    }
                    break;
                case 67:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        jZzl = zzi(t, j);
                        iZzk = zzbbq.zzv(jZzl);
                        i2 = i + iZzk;
                    }
                    break;
                case 68:
                    if (zza(t, i4, i3)) {
                        objZzp2 = zzbek.zzp(t, j);
                        i = i2 * 53;
                        iZzk = objZzp2.hashCode();
                        i2 = i + iZzk;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzdwv.zzac(t).hashCode();
        return this.zzdwm ? (iHashCode2 * 53) + this.zzdww.zzm(t).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final T newInstance() {
        return (T) this.zzdwt.newInstance(this.zzdwl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zza(T t, zzbdl zzbdlVar, zzbbb zzbbbVar) throws IOException {
        long j;
        Object objZza;
        int iZzabu;
        List<Double> listZza;
        List<Float> listZza2;
        List<Long> listZza3;
        List<Long> listZza4;
        List<Integer> listZza5;
        List<Long> listZza6;
        List<Integer> listZza7;
        List<Boolean> listZza8;
        List<Integer> listZza9;
        List<Integer> listZza10;
        zzbbs<?> zzbbsVarZzcs;
        List<Integer> listZza11;
        List<Long> listZza12;
        List<Integer> listZza13;
        List<Long> listZza14;
        if (zzbbbVar == null) {
            throw new NullPointerException();
        }
        zzbee<?, ?> zzbeeVar = this.zzdwv;
        zzbbd<?> zzbbdVar = this.zzdww;
        zzbbg zzbbgVarZzn = null;
        Object objZza2 = null;
        while (true) {
            int i = 0;
            try {
                int iZzaci = zzbdlVar.zzaci();
                int iZzcw = zzcw(iZzaci);
                if (iZzcw >= 0) {
                    int iZzct = zzct(iZzcw);
                    switch ((267386880 & iZzct) >>> 20) {
                        case 0:
                            zzbek.zza(t, iZzct & 1048575, zzbdlVar.readDouble());
                            zzb(t, iZzcw);
                            break;
                        case 1:
                            zzbek.zza((Object) t, iZzct & 1048575, zzbdlVar.readFloat());
                            zzb(t, iZzcw);
                            break;
                        case 2:
                            zzbek.zza((Object) t, iZzct & 1048575, zzbdlVar.zzabm());
                            zzb(t, iZzcw);
                            break;
                        case 3:
                            zzbek.zza((Object) t, iZzct & 1048575, zzbdlVar.zzabl());
                            zzb(t, iZzcw);
                            break;
                        case 4:
                            zzbek.zzb(t, iZzct & 1048575, zzbdlVar.zzabn());
                            zzb(t, iZzcw);
                            break;
                        case 5:
                            zzbek.zza((Object) t, iZzct & 1048575, zzbdlVar.zzabo());
                            zzb(t, iZzcw);
                            break;
                        case 6:
                            zzbek.zzb(t, iZzct & 1048575, zzbdlVar.zzabp());
                            zzb(t, iZzcw);
                            break;
                        case 7:
                            zzbek.zza(t, iZzct & 1048575, zzbdlVar.zzabq());
                            zzb(t, iZzcw);
                            break;
                        case 8:
                            zza(t, iZzct, zzbdlVar);
                            zzb(t, iZzcw);
                            break;
                        case 9:
                            if (!zza(t, iZzcw)) {
                                zzbek.zza(t, iZzct & 1048575, zzbdlVar.zza(zzcq(iZzcw), zzbbbVar));
                                zzb(t, iZzcw);
                            } else {
                                j = iZzct & 1048575;
                                objZza = zzbbq.zza(zzbek.zzp(t, j), zzbdlVar.zza(zzcq(iZzcw), zzbbbVar));
                                zzbek.zza(t, j, objZza);
                            }
                            break;
                        case 10:
                            zzbek.zza(t, iZzct & 1048575, zzbdlVar.zzabs());
                            zzb(t, iZzcw);
                            break;
                        case 11:
                            zzbek.zzb(t, iZzct & 1048575, zzbdlVar.zzabt());
                            zzb(t, iZzcw);
                            break;
                        case 12:
                            iZzabu = zzbdlVar.zzabu();
                            zzbbs<?> zzbbsVarZzcs2 = zzcs(iZzcw);
                            if (zzbbsVarZzcs2 != null && zzbbsVarZzcs2.zzq(iZzabu) == null) {
                                objZza2 = zzbdo.zza(iZzaci, iZzabu, objZza2, (zzbee<UT, Object>) zzbeeVar);
                            } else {
                                zzbek.zzb(t, iZzct & 1048575, iZzabu);
                                zzb(t, iZzcw);
                            }
                            break;
                        case 13:
                            zzbek.zzb(t, iZzct & 1048575, zzbdlVar.zzabv());
                            zzb(t, iZzcw);
                            break;
                        case 14:
                            zzbek.zza((Object) t, iZzct & 1048575, zzbdlVar.zzabw());
                            zzb(t, iZzcw);
                            break;
                        case 15:
                            zzbek.zzb(t, iZzct & 1048575, zzbdlVar.zzabx());
                            zzb(t, iZzcw);
                            break;
                        case 16:
                            zzbek.zza((Object) t, iZzct & 1048575, zzbdlVar.zzaby());
                            zzb(t, iZzcw);
                            break;
                        case 17:
                            if (!zza(t, iZzcw)) {
                                zzbek.zza(t, iZzct & 1048575, zzbdlVar.zzb(zzcq(iZzcw), zzbbbVar));
                                zzb(t, iZzcw);
                            } else {
                                j = iZzct & 1048575;
                                objZza = zzbbq.zza(zzbek.zzp(t, j), zzbdlVar.zzb(zzcq(iZzcw), zzbbbVar));
                                zzbek.zza(t, j, objZza);
                            }
                            break;
                        case 18:
                            listZza = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzp(listZza);
                            break;
                        case 19:
                            listZza2 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzq(listZza2);
                            break;
                        case 20:
                            listZza3 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzs(listZza3);
                            break;
                        case 21:
                            listZza4 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzr(listZza4);
                            break;
                        case 22:
                            listZza5 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzt(listZza5);
                            break;
                        case 23:
                            listZza6 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzu(listZza6);
                            break;
                        case 24:
                            listZza7 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzv(listZza7);
                            break;
                        case 25:
                            listZza8 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzw(listZza8);
                            break;
                        case 26:
                            if (!zzcv(iZzct)) {
                                zzbdlVar.readStringList(this.zzdwu.zza(t, iZzct & 1048575));
                            } else {
                                zzbdlVar.zzx(this.zzdwu.zza(t, iZzct & 1048575));
                            }
                            break;
                        case 27:
                            zzbdlVar.zza(this.zzdwu.zza(t, iZzct & 1048575), zzcq(iZzcw), zzbbbVar);
                            break;
                        case 28:
                            zzbdlVar.zzy(this.zzdwu.zza(t, iZzct & 1048575));
                            break;
                        case 29:
                            listZza9 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzz(listZza9);
                            break;
                        case 30:
                            listZza10 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzaa(listZza10);
                            zzbbsVarZzcs = zzcs(iZzcw);
                            objZza2 = zzbdo.zza(iZzaci, listZza10, zzbbsVarZzcs, objZza2, zzbeeVar);
                            break;
                        case 31:
                            listZza11 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzab(listZza11);
                            break;
                        case 32:
                            listZza12 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzac(listZza12);
                            break;
                        case 33:
                            listZza13 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzad(listZza13);
                            break;
                        case 34:
                            listZza14 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzae(listZza14);
                            break;
                        case 35:
                            listZza = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzp(listZza);
                            break;
                        case 36:
                            listZza2 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzq(listZza2);
                            break;
                        case 37:
                            listZza3 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzs(listZza3);
                            break;
                        case 38:
                            listZza4 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzr(listZza4);
                            break;
                        case 39:
                            listZza5 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzt(listZza5);
                            break;
                        case 40:
                            listZza6 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzu(listZza6);
                            break;
                        case 41:
                            listZza7 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzv(listZza7);
                            break;
                        case 42:
                            listZza8 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzw(listZza8);
                            break;
                        case 43:
                            listZza9 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzz(listZza9);
                            break;
                        case 44:
                            listZza10 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzaa(listZza10);
                            zzbbsVarZzcs = zzcs(iZzcw);
                            objZza2 = zzbdo.zza(iZzaci, listZza10, zzbbsVarZzcs, objZza2, zzbeeVar);
                            break;
                        case 45:
                            listZza11 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzab(listZza11);
                            break;
                        case 46:
                            listZza12 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzac(listZza12);
                            break;
                        case 47:
                            listZza13 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzad(listZza13);
                            break;
                        case 48:
                            listZza14 = this.zzdwu.zza(t, iZzct & 1048575);
                            zzbdlVar.zzae(listZza14);
                            break;
                        case 49:
                            zzbdlVar.zzb(this.zzdwu.zza(t, iZzct & 1048575), zzcq(iZzcw), zzbbbVar);
                            break;
                        case 50:
                            Object objZzcr = zzcr(iZzcw);
                            long jZzct = zzct(iZzcw) & 1048575;
                            Object objZzp = zzbek.zzp(t, jZzct);
                            if (objZzp == null) {
                                objZzp = this.zzdwx.zzw(objZzcr);
                                zzbek.zza(t, jZzct, objZzp);
                            } else if (this.zzdwx.zzu(objZzp)) {
                                Object objZzw = this.zzdwx.zzw(objZzcr);
                                this.zzdwx.zzb(objZzw, objZzp);
                                zzbek.zza(t, jZzct, objZzw);
                                objZzp = objZzw;
                            }
                            zzbdlVar.zza(this.zzdwx.zzs(objZzp), this.zzdwx.zzx(objZzcr), zzbbbVar);
                            break;
                        case 51:
                            zzbek.zza(t, iZzct & 1048575, Double.valueOf(zzbdlVar.readDouble()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 52:
                            zzbek.zza(t, iZzct & 1048575, Float.valueOf(zzbdlVar.readFloat()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 53:
                            zzbek.zza(t, iZzct & 1048575, Long.valueOf(zzbdlVar.zzabm()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 54:
                            zzbek.zza(t, iZzct & 1048575, Long.valueOf(zzbdlVar.zzabl()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 55:
                            zzbek.zza(t, iZzct & 1048575, Integer.valueOf(zzbdlVar.zzabn()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 56:
                            zzbek.zza(t, iZzct & 1048575, Long.valueOf(zzbdlVar.zzabo()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 57:
                            zzbek.zza(t, iZzct & 1048575, Integer.valueOf(zzbdlVar.zzabp()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 58:
                            zzbek.zza(t, iZzct & 1048575, Boolean.valueOf(zzbdlVar.zzabq()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 59:
                            zza(t, iZzct, zzbdlVar);
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 60:
                            if (zza(t, iZzaci, iZzcw)) {
                                long j2 = iZzct & 1048575;
                                zzbek.zza(t, j2, zzbbq.zza(zzbek.zzp(t, j2), zzbdlVar.zza(zzcq(iZzcw), zzbbbVar)));
                            } else {
                                zzbek.zza(t, iZzct & 1048575, zzbdlVar.zza(zzcq(iZzcw), zzbbbVar));
                                zzb(t, iZzcw);
                            }
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 61:
                            zzbek.zza(t, iZzct & 1048575, zzbdlVar.zzabs());
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 62:
                            zzbek.zza(t, iZzct & 1048575, Integer.valueOf(zzbdlVar.zzabt()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 63:
                            iZzabu = zzbdlVar.zzabu();
                            zzbbs<?> zzbbsVarZzcs3 = zzcs(iZzcw);
                            if (zzbbsVarZzcs3 != null && zzbbsVarZzcs3.zzq(iZzabu) == null) {
                                objZza2 = zzbdo.zza(iZzaci, iZzabu, objZza2, (zzbee<UT, Object>) zzbeeVar);
                            }
                            zzbek.zza(t, iZzct & 1048575, Integer.valueOf(iZzabu));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 64:
                            zzbek.zza(t, iZzct & 1048575, Integer.valueOf(zzbdlVar.zzabv()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 65:
                            zzbek.zza(t, iZzct & 1048575, Long.valueOf(zzbdlVar.zzabw()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 66:
                            zzbek.zza(t, iZzct & 1048575, Integer.valueOf(zzbdlVar.zzabx()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 67:
                            zzbek.zza(t, iZzct & 1048575, Long.valueOf(zzbdlVar.zzaby()));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        case 68:
                            zzbek.zza(t, iZzct & 1048575, zzbdlVar.zzb(zzcq(iZzcw), zzbbbVar));
                            zzb(t, iZzaci, iZzcw);
                            break;
                        default:
                            if (objZza2 == null) {
                                try {
                                    objZza2 = zzbeeVar.zzagb();
                                } catch (zzbbv unused) {
                                    zzbeeVar.zza(zzbdlVar);
                                    if (objZza2 == null) {
                                        objZza2 = zzbeeVar.zzad(t);
                                    }
                                    if (!zzbeeVar.zza((Object) objZza2, zzbdlVar)) {
                                        int[] iArr = this.zzdwr;
                                        if (iArr != null) {
                                            int length = iArr.length;
                                            while (i < length) {
                                                objZza2 = zza((Object) t, iArr[i], objZza2, (zzbee<UT, Object>) zzbeeVar);
                                                i++;
                                            }
                                        }
                                        if (objZza2 != null) {
                                            zzbeeVar.zzf(t, (Object) objZza2);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                break;
                            }
                            if (!zzbeeVar.zza((Object) objZza2, zzbdlVar)) {
                                int[] iArr2 = this.zzdwr;
                                if (iArr2 != null) {
                                    int length2 = iArr2.length;
                                    while (i < length2) {
                                        objZza2 = zza((Object) t, iArr2[i], objZza2, (zzbee<UT, Object>) zzbeeVar);
                                        i++;
                                    }
                                }
                                if (objZza2 != null) {
                                    zzbeeVar.zzf(t, (Object) objZza2);
                                    return;
                                }
                                return;
                            }
                            break;
                            break;
                    }
                } else {
                    if (iZzaci == Integer.MAX_VALUE) {
                        int[] iArr3 = this.zzdwr;
                        if (iArr3 != null) {
                            int length3 = iArr3.length;
                            while (i < length3) {
                                objZza2 = zza((Object) t, iArr3[i], objZza2, (zzbee<UT, Object>) zzbeeVar);
                                i++;
                            }
                        }
                        if (objZza2 != null) {
                            zzbeeVar.zzf(t, (Object) objZza2);
                            return;
                        }
                        return;
                    }
                    Object objZza3 = !this.zzdwm ? null : zzbbdVar.zza(zzbbbVar, this.zzdwl, iZzaci);
                    if (objZza3 != null) {
                        if (zzbbgVarZzn == null) {
                            zzbbgVarZzn = zzbbdVar.zzn(t);
                        }
                        zzbbg zzbbgVar = zzbbgVarZzn;
                        objZza2 = zzbbdVar.zza(zzbdlVar, objZza3, zzbbbVar, zzbbgVar, objZza2, zzbeeVar);
                        zzbbgVarZzn = zzbbgVar;
                    } else {
                        zzbeeVar.zza(zzbdlVar);
                        if (objZza2 == null) {
                            objZza2 = zzbeeVar.zzad(t);
                        }
                        if (!zzbeeVar.zza((Object) objZza2, zzbdlVar)) {
                            int[] iArr4 = this.zzdwr;
                            if (iArr4 != null) {
                                int length4 = iArr4.length;
                                while (i < length4) {
                                    objZza2 = zza((Object) t, iArr4[i], objZza2, (zzbee<UT, Object>) zzbeeVar);
                                    i++;
                                }
                            }
                            if (objZza2 != null) {
                                zzbeeVar.zzf(t, (Object) objZza2);
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                int[] iArr5 = this.zzdwr;
                if (iArr5 != null) {
                    int length5 = iArr5.length;
                    while (i < length5) {
                        objZza2 = zza((Object) t, iArr5[i], objZza2, (zzbee<UT, Object>) zzbeeVar);
                        i++;
                    }
                }
                if (objZza2 != null) {
                    zzbeeVar.zzf(t, (Object) objZza2);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0385  */
    /* JADX WARN: Code duplicated, block: B:139:0x0400  */
    /* JADX WARN: Code duplicated, block: B:142:0x0413  */
    /* JADX WARN: Code duplicated, block: B:145:0x0428  */
    /* JADX WARN: Code duplicated, block: B:192:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:295:0x0843  */
    /* JADX WARN: Code duplicated, block: B:322:0x08be  */
    /* JADX WARN: Code duplicated, block: B:325:0x08d1  */
    /* JADX WARN: Code duplicated, block: B:328:0x08e6  */
    /* JADX WARN: Code duplicated, block: B:9:0x0030  */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zza(T t, zzbey zzbeyVar) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        double dZzo;
        float fZzn;
        long jZzl;
        long jZzl2;
        int iZzk;
        long jZzl3;
        int iZzk2;
        boolean zZzm;
        int iZzk3;
        int iZzk4;
        int iZzk5;
        long jZzl4;
        int iZzk6;
        long jZzl5;
        Iterator itDescendingIterator;
        Map.Entry<?, ?> entry2;
        double dZzo2;
        float fZzn2;
        long jZzl6;
        long jZzl7;
        int iZzk7;
        long jZzl8;
        int iZzk8;
        boolean zZzm2;
        int iZzk9;
        int iZzk10;
        int iZzk11;
        long jZzl9;
        int iZzk12;
        long jZzl10;
        if (zzbeyVar.zzacn() == zzbbo.zze.zzdum) {
            zza(this.zzdwv, t, zzbeyVar);
            if (this.zzdwm) {
                zzbbg<T> zzbbgVarZzm = this.zzdww.zzm(t);
                if (zzbbgVarZzm.isEmpty()) {
                    itDescendingIterator = null;
                    entry2 = null;
                } else {
                    itDescendingIterator = zzbbgVarZzm.descendingIterator();
                    entry2 = (Map.Entry) itDescendingIterator.next();
                }
            } else {
                itDescendingIterator = null;
                entry2 = null;
            }
            for (int length = this.zzdwg.length - 4; length >= 0; length -= 4) {
                int iZzct = zzct(length);
                int i = this.zzdwg[length];
                while (entry2 != null && this.zzdww.zza(entry2) > i) {
                    this.zzdww.zza(zzbeyVar, entry2);
                    entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
                }
                switch ((iZzct & 267386880) >>> 20) {
                    case 0:
                        if (zza(t, length)) {
                            dZzo2 = zzbek.zzo(t, iZzct & 1048575);
                            zzbeyVar.zza(i, dZzo2);
                        }
                        break;
                    case 1:
                        if (zza(t, length)) {
                            fZzn2 = zzbek.zzn(t, iZzct & 1048575);
                            zzbeyVar.zza(i, fZzn2);
                        }
                        break;
                    case 2:
                        if (zza(t, length)) {
                            jZzl6 = zzbek.zzl(t, iZzct & 1048575);
                            zzbeyVar.zzi(i, jZzl6);
                        }
                        break;
                    case 3:
                        if (zza(t, length)) {
                            jZzl7 = zzbek.zzl(t, iZzct & 1048575);
                            zzbeyVar.zza(i, jZzl7);
                        }
                        break;
                    case 4:
                        if (zza(t, length)) {
                            iZzk7 = zzbek.zzk(t, iZzct & 1048575);
                            zzbeyVar.zzm(i, iZzk7);
                        }
                        break;
                    case 5:
                        if (zza(t, length)) {
                            jZzl8 = zzbek.zzl(t, iZzct & 1048575);
                            zzbeyVar.zzc(i, jZzl8);
                        }
                        break;
                    case 6:
                        if (zza(t, length)) {
                            iZzk8 = zzbek.zzk(t, iZzct & 1048575);
                            zzbeyVar.zzp(i, iZzk8);
                        }
                        break;
                    case 7:
                        if (zza(t, length)) {
                            zZzm2 = zzbek.zzm(t, iZzct & 1048575);
                            zzbeyVar.zzf(i, zZzm2);
                        }
                        break;
                    case 8:
                        if (zza(t, length)) {
                            zza(i, zzbek.zzp(t, iZzct & 1048575), zzbeyVar);
                        }
                        break;
                    case 9:
                        if (zza(t, length)) {
                            zzbeyVar.zza(i, zzbek.zzp(t, iZzct & 1048575), zzcq(length));
                        }
                        break;
                    case 10:
                        if (zza(t, length)) {
                            zzbeyVar.zza(i, (zzbah) zzbek.zzp(t, iZzct & 1048575));
                        }
                        break;
                    case 11:
                        if (zza(t, length)) {
                            iZzk9 = zzbek.zzk(t, iZzct & 1048575);
                            zzbeyVar.zzn(i, iZzk9);
                        }
                        break;
                    case 12:
                        if (zza(t, length)) {
                            iZzk10 = zzbek.zzk(t, iZzct & 1048575);
                            zzbeyVar.zzx(i, iZzk10);
                        }
                        break;
                    case 13:
                        if (zza(t, length)) {
                            iZzk11 = zzbek.zzk(t, iZzct & 1048575);
                            zzbeyVar.zzw(i, iZzk11);
                        }
                        break;
                    case 14:
                        if (zza(t, length)) {
                            jZzl9 = zzbek.zzl(t, iZzct & 1048575);
                            zzbeyVar.zzj(i, jZzl9);
                        }
                        break;
                    case 15:
                        if (zza(t, length)) {
                            iZzk12 = zzbek.zzk(t, iZzct & 1048575);
                            zzbeyVar.zzo(i, iZzk12);
                        }
                        break;
                    case 16:
                        if (zza(t, length)) {
                            jZzl10 = zzbek.zzl(t, iZzct & 1048575);
                            zzbeyVar.zzb(i, jZzl10);
                        }
                        break;
                    case 17:
                        if (zza(t, length)) {
                            zzbeyVar.zzb(i, zzbek.zzp(t, iZzct & 1048575), zzcq(length));
                        }
                        break;
                    case 18:
                        zzbdo.zza(this.zzdwg[length], (List<Double>) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 19:
                        zzbdo.zzb(this.zzdwg[length], (List<Float>) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 20:
                        zzbdo.zzc(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 21:
                        zzbdo.zzd(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 22:
                        zzbdo.zzh(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 23:
                        zzbdo.zzf(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 24:
                        zzbdo.zzk(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 25:
                        zzbdo.zzn(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 26:
                        zzbdo.zza(this.zzdwg[length], (List<String>) zzbek.zzp(t, iZzct & 1048575), zzbeyVar);
                        break;
                    case 27:
                        zzbdo.zza(this.zzdwg[length], (List<?>) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, zzcq(length));
                        break;
                    case 28:
                        zzbdo.zzb(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar);
                        break;
                    case 29:
                        zzbdo.zzi(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 30:
                        zzbdo.zzm(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 31:
                        zzbdo.zzl(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 32:
                        zzbdo.zzg(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 33:
                        zzbdo.zzj(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 34:
                        zzbdo.zze(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, false);
                        break;
                    case 35:
                        zzbdo.zza(this.zzdwg[length], (List<Double>) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 36:
                        zzbdo.zzb(this.zzdwg[length], (List<Float>) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 37:
                        zzbdo.zzc(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 38:
                        zzbdo.zzd(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 39:
                        zzbdo.zzh(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 40:
                        zzbdo.zzf(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 41:
                        zzbdo.zzk(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 42:
                        zzbdo.zzn(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 43:
                        zzbdo.zzi(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 44:
                        zzbdo.zzm(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 45:
                        zzbdo.zzl(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 46:
                        zzbdo.zzg(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 47:
                        zzbdo.zzj(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 48:
                        zzbdo.zze(this.zzdwg[length], (List) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, true);
                        break;
                    case 49:
                        zzbdo.zzb(this.zzdwg[length], (List<?>) zzbek.zzp(t, iZzct & 1048575), zzbeyVar, zzcq(length));
                        break;
                    case 50:
                        zza(zzbeyVar, i, zzbek.zzp(t, iZzct & 1048575), length);
                        break;
                    case 51:
                        if (zza(t, i, length)) {
                            dZzo2 = zzf(t, iZzct & 1048575);
                            zzbeyVar.zza(i, dZzo2);
                        }
                        break;
                    case 52:
                        if (zza(t, i, length)) {
                            fZzn2 = zzg(t, iZzct & 1048575);
                            zzbeyVar.zza(i, fZzn2);
                        }
                        break;
                    case 53:
                        if (zza(t, i, length)) {
                            jZzl6 = zzi(t, iZzct & 1048575);
                            zzbeyVar.zzi(i, jZzl6);
                        }
                        break;
                    case 54:
                        if (zza(t, i, length)) {
                            jZzl7 = zzi(t, iZzct & 1048575);
                            zzbeyVar.zza(i, jZzl7);
                        }
                        break;
                    case 55:
                        if (zza(t, i, length)) {
                            iZzk7 = zzh(t, iZzct & 1048575);
                            zzbeyVar.zzm(i, iZzk7);
                        }
                        break;
                    case 56:
                        if (zza(t, i, length)) {
                            jZzl8 = zzi(t, iZzct & 1048575);
                            zzbeyVar.zzc(i, jZzl8);
                        }
                        break;
                    case 57:
                        if (zza(t, i, length)) {
                            iZzk8 = zzh(t, iZzct & 1048575);
                            zzbeyVar.zzp(i, iZzk8);
                        }
                        break;
                    case 58:
                        if (zza(t, i, length)) {
                            zZzm2 = zzj(t, iZzct & 1048575);
                            zzbeyVar.zzf(i, zZzm2);
                        }
                        break;
                    case 59:
                        if (zza(t, i, length)) {
                            zza(i, zzbek.zzp(t, iZzct & 1048575), zzbeyVar);
                        }
                        break;
                    case 60:
                        if (zza(t, i, length)) {
                            zzbeyVar.zza(i, zzbek.zzp(t, iZzct & 1048575), zzcq(length));
                        }
                        break;
                    case 61:
                        if (zza(t, i, length)) {
                            zzbeyVar.zza(i, (zzbah) zzbek.zzp(t, iZzct & 1048575));
                        }
                        break;
                    case 62:
                        if (zza(t, i, length)) {
                            iZzk9 = zzh(t, iZzct & 1048575);
                            zzbeyVar.zzn(i, iZzk9);
                        }
                        break;
                    case 63:
                        if (zza(t, i, length)) {
                            iZzk10 = zzh(t, iZzct & 1048575);
                            zzbeyVar.zzx(i, iZzk10);
                        }
                        break;
                    case 64:
                        if (zza(t, i, length)) {
                            iZzk11 = zzh(t, iZzct & 1048575);
                            zzbeyVar.zzw(i, iZzk11);
                        }
                        break;
                    case 65:
                        if (zza(t, i, length)) {
                            jZzl9 = zzi(t, iZzct & 1048575);
                            zzbeyVar.zzj(i, jZzl9);
                        }
                        break;
                    case 66:
                        if (zza(t, i, length)) {
                            iZzk12 = zzh(t, iZzct & 1048575);
                            zzbeyVar.zzo(i, iZzk12);
                        }
                        break;
                    case 67:
                        if (zza(t, i, length)) {
                            jZzl10 = zzi(t, iZzct & 1048575);
                            zzbeyVar.zzb(i, jZzl10);
                        }
                        break;
                    case 68:
                        if (zza(t, i, length)) {
                            zzbeyVar.zzb(i, zzbek.zzp(t, iZzct & 1048575), zzcq(length));
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzdww.zza(zzbeyVar, entry2);
                entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            return;
        }
        if (!this.zzdwo) {
            zzb(t, zzbeyVar);
            return;
        }
        if (this.zzdwm) {
            zzbbg<T> zzbbgVarZzm2 = this.zzdww.zzm(t);
            if (zzbbgVarZzm2.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzbbgVarZzm2.iterator();
                entry = (Map.Entry) it.next();
            }
        } else {
            it = null;
            entry = null;
        }
        int length2 = this.zzdwg.length;
        Map.Entry<?, ?> entry3 = entry;
        for (int i2 = 0; i2 < length2; i2 += 4) {
            int iZzct2 = zzct(i2);
            int i3 = this.zzdwg[i2];
            while (entry3 != null && this.zzdww.zza(entry3) <= i3) {
                this.zzdww.zza(zzbeyVar, entry3);
                entry3 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            switch ((iZzct2 & 267386880) >>> 20) {
                case 0:
                    if (zza(t, i2)) {
                        dZzo = zzbek.zzo(t, iZzct2 & 1048575);
                        zzbeyVar.zza(i3, dZzo);
                    }
                    break;
                case 1:
                    if (zza(t, i2)) {
                        fZzn = zzbek.zzn(t, iZzct2 & 1048575);
                        zzbeyVar.zza(i3, fZzn);
                    }
                    break;
                case 2:
                    if (zza(t, i2)) {
                        jZzl = zzbek.zzl(t, iZzct2 & 1048575);
                        zzbeyVar.zzi(i3, jZzl);
                    }
                    break;
                case 3:
                    if (zza(t, i2)) {
                        jZzl2 = zzbek.zzl(t, iZzct2 & 1048575);
                        zzbeyVar.zza(i3, jZzl2);
                    }
                    break;
                case 4:
                    if (zza(t, i2)) {
                        iZzk = zzbek.zzk(t, iZzct2 & 1048575);
                        zzbeyVar.zzm(i3, iZzk);
                    }
                    break;
                case 5:
                    if (zza(t, i2)) {
                        jZzl3 = zzbek.zzl(t, iZzct2 & 1048575);
                        zzbeyVar.zzc(i3, jZzl3);
                    }
                    break;
                case 6:
                    if (zza(t, i2)) {
                        iZzk2 = zzbek.zzk(t, iZzct2 & 1048575);
                        zzbeyVar.zzp(i3, iZzk2);
                    }
                    break;
                case 7:
                    if (zza(t, i2)) {
                        zZzm = zzbek.zzm(t, iZzct2 & 1048575);
                        zzbeyVar.zzf(i3, zZzm);
                    }
                    break;
                case 8:
                    if (zza(t, i2)) {
                        zza(i3, zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar);
                    }
                    break;
                case 9:
                    if (zza(t, i2)) {
                        zzbeyVar.zza(i3, zzbek.zzp(t, iZzct2 & 1048575), zzcq(i2));
                    }
                    break;
                case 10:
                    if (zza(t, i2)) {
                        zzbeyVar.zza(i3, (zzbah) zzbek.zzp(t, iZzct2 & 1048575));
                    }
                    break;
                case 11:
                    if (zza(t, i2)) {
                        iZzk3 = zzbek.zzk(t, iZzct2 & 1048575);
                        zzbeyVar.zzn(i3, iZzk3);
                    }
                    break;
                case 12:
                    if (zza(t, i2)) {
                        iZzk4 = zzbek.zzk(t, iZzct2 & 1048575);
                        zzbeyVar.zzx(i3, iZzk4);
                    }
                    break;
                case 13:
                    if (zza(t, i2)) {
                        iZzk5 = zzbek.zzk(t, iZzct2 & 1048575);
                        zzbeyVar.zzw(i3, iZzk5);
                    }
                    break;
                case 14:
                    if (zza(t, i2)) {
                        jZzl4 = zzbek.zzl(t, iZzct2 & 1048575);
                        zzbeyVar.zzj(i3, jZzl4);
                    }
                    break;
                case 15:
                    if (zza(t, i2)) {
                        iZzk6 = zzbek.zzk(t, iZzct2 & 1048575);
                        zzbeyVar.zzo(i3, iZzk6);
                    }
                    break;
                case 16:
                    if (zza(t, i2)) {
                        jZzl5 = zzbek.zzl(t, iZzct2 & 1048575);
                        zzbeyVar.zzb(i3, jZzl5);
                    }
                    break;
                case 17:
                    if (zza(t, i2)) {
                        zzbeyVar.zzb(i3, zzbek.zzp(t, iZzct2 & 1048575), zzcq(i2));
                    }
                    break;
                case 18:
                    zzbdo.zza(this.zzdwg[i2], (List<Double>) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 19:
                    zzbdo.zzb(this.zzdwg[i2], (List<Float>) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 20:
                    zzbdo.zzc(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 21:
                    zzbdo.zzd(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 22:
                    zzbdo.zzh(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 23:
                    zzbdo.zzf(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 24:
                    zzbdo.zzk(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 25:
                    zzbdo.zzn(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 26:
                    zzbdo.zza(this.zzdwg[i2], (List<String>) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar);
                    break;
                case 27:
                    zzbdo.zza(this.zzdwg[i2], (List<?>) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, zzcq(i2));
                    break;
                case 28:
                    zzbdo.zzb(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar);
                    break;
                case 29:
                    zzbdo.zzi(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 30:
                    zzbdo.zzm(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 31:
                    zzbdo.zzl(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 32:
                    zzbdo.zzg(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 33:
                    zzbdo.zzj(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 34:
                    zzbdo.zze(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, false);
                    break;
                case 35:
                    zzbdo.zza(this.zzdwg[i2], (List<Double>) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 36:
                    zzbdo.zzb(this.zzdwg[i2], (List<Float>) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 37:
                    zzbdo.zzc(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 38:
                    zzbdo.zzd(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 39:
                    zzbdo.zzh(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 40:
                    zzbdo.zzf(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 41:
                    zzbdo.zzk(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 42:
                    zzbdo.zzn(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 43:
                    zzbdo.zzi(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 44:
                    zzbdo.zzm(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 45:
                    zzbdo.zzl(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 46:
                    zzbdo.zzg(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 47:
                    zzbdo.zzj(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 48:
                    zzbdo.zze(this.zzdwg[i2], (List) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, true);
                    break;
                case 49:
                    zzbdo.zzb(this.zzdwg[i2], (List<?>) zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar, zzcq(i2));
                    break;
                case 50:
                    zza(zzbeyVar, i3, zzbek.zzp(t, iZzct2 & 1048575), i2);
                    break;
                case 51:
                    if (zza(t, i3, i2)) {
                        dZzo = zzf(t, iZzct2 & 1048575);
                        zzbeyVar.zza(i3, dZzo);
                    }
                    break;
                case 52:
                    if (zza(t, i3, i2)) {
                        fZzn = zzg(t, iZzct2 & 1048575);
                        zzbeyVar.zza(i3, fZzn);
                    }
                    break;
                case 53:
                    if (zza(t, i3, i2)) {
                        jZzl = zzi(t, iZzct2 & 1048575);
                        zzbeyVar.zzi(i3, jZzl);
                    }
                    break;
                case 54:
                    if (zza(t, i3, i2)) {
                        jZzl2 = zzi(t, iZzct2 & 1048575);
                        zzbeyVar.zza(i3, jZzl2);
                    }
                    break;
                case 55:
                    if (zza(t, i3, i2)) {
                        iZzk = zzh(t, iZzct2 & 1048575);
                        zzbeyVar.zzm(i3, iZzk);
                    }
                    break;
                case 56:
                    if (zza(t, i3, i2)) {
                        jZzl3 = zzi(t, iZzct2 & 1048575);
                        zzbeyVar.zzc(i3, jZzl3);
                    }
                    break;
                case 57:
                    if (zza(t, i3, i2)) {
                        iZzk2 = zzh(t, iZzct2 & 1048575);
                        zzbeyVar.zzp(i3, iZzk2);
                    }
                    break;
                case 58:
                    if (zza(t, i3, i2)) {
                        zZzm = zzj(t, iZzct2 & 1048575);
                        zzbeyVar.zzf(i3, zZzm);
                    }
                    break;
                case 59:
                    if (zza(t, i3, i2)) {
                        zza(i3, zzbek.zzp(t, iZzct2 & 1048575), zzbeyVar);
                    }
                    break;
                case 60:
                    if (zza(t, i3, i2)) {
                        zzbeyVar.zza(i3, zzbek.zzp(t, iZzct2 & 1048575), zzcq(i2));
                    }
                    break;
                case 61:
                    if (zza(t, i3, i2)) {
                        zzbeyVar.zza(i3, (zzbah) zzbek.zzp(t, iZzct2 & 1048575));
                    }
                    break;
                case 62:
                    if (zza(t, i3, i2)) {
                        iZzk3 = zzh(t, iZzct2 & 1048575);
                        zzbeyVar.zzn(i3, iZzk3);
                    }
                    break;
                case 63:
                    if (zza(t, i3, i2)) {
                        iZzk4 = zzh(t, iZzct2 & 1048575);
                        zzbeyVar.zzx(i3, iZzk4);
                    }
                    break;
                case 64:
                    if (zza(t, i3, i2)) {
                        iZzk5 = zzh(t, iZzct2 & 1048575);
                        zzbeyVar.zzw(i3, iZzk5);
                    }
                    break;
                case 65:
                    if (zza(t, i3, i2)) {
                        jZzl4 = zzi(t, iZzct2 & 1048575);
                        zzbeyVar.zzj(i3, jZzl4);
                    }
                    break;
                case 66:
                    if (zza(t, i3, i2)) {
                        iZzk6 = zzh(t, iZzct2 & 1048575);
                        zzbeyVar.zzo(i3, iZzk6);
                    }
                    break;
                case 67:
                    if (zza(t, i3, i2)) {
                        jZzl5 = zzi(t, iZzct2 & 1048575);
                        zzbeyVar.zzb(i3, jZzl5);
                    }
                    break;
                case 68:
                    if (zza(t, i3, i2)) {
                        zzbeyVar.zzb(i3, zzbek.zzp(t, iZzct2 & 1048575), zzcq(i2));
                    }
                    break;
            }
        }
        while (entry3 != null) {
            this.zzdww.zza(zzbeyVar, entry3);
            entry3 = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zza(this.zzdwv, t, zzbeyVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0164, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0188, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a1, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01a3, code lost:
    
        r2 = r0;
     */
    @Override // com.google.android.gms.internal.ads.zzbdm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r23, byte[] r24, int r25, int r26, com.google.android.gms.internal.ads.zzbae r27) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcy.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzbae):void");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fe A[LOOP:2: B:60:0x00ec->B:65:0x00fe, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x0101  */
    /* JADX WARN: Code duplicated, block: B:88:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0116 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21, types: [com.google.android.gms.internal.ads.zzbdm] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.google.android.gms.internal.ads.zzbdm] */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final boolean zzaa(T t) {
        int i;
        List list;
        boolean z;
        ?? Zzcq;
        int i2;
        boolean z2;
        int[] iArr = this.zzdwq;
        int i3 = 1;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int length = iArr.length;
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        while (i4 < length) {
            int i7 = iArr[i4];
            int iZzcw = zzcw(i7);
            int iZzct = zzct(iZzcw);
            if (this.zzdwo) {
                i = 0;
            } else {
                int i8 = this.zzdwg[iZzcw + 2];
                int i9 = i8 & 1048575;
                i = i3 << (i8 >>> 20);
                if (i9 != i5) {
                    i6 = zzdwf.getInt(t, i9);
                    i5 = i9;
                }
            }
            if (((268435456 & iZzct) != 0) && !zza(t, iZzcw, i6, i)) {
                return false;
            }
            int i10 = (267386880 & iZzct) >>> 20;
            if (i10 != 9 && i10 != 17) {
                if (i10 != 27) {
                    if (i10 != 60 && i10 != 68) {
                        switch (i10) {
                            case 49:
                                list = (List) zzbek.zzp(t, iZzct & 1048575);
                                if (list.isEmpty()) {
                                    z = true;
                                } else {
                                    Zzcq = zzcq(iZzcw);
                                    i2 = 0;
                                    while (true) {
                                        if (i2 < list.size()) {
                                            z = true;
                                        } else if (Zzcq.zzaa(list.get(i2))) {
                                            i2++;
                                        } else {
                                            z = false;
                                        }
                                    }
                                }
                                if (!z) {
                                    return false;
                                }
                                break;
                                break;
                            case 50:
                                Map<?, ?> mapZzt = this.zzdwx.zzt(zzbek.zzp(t, iZzct & 1048575));
                                if (mapZzt.isEmpty()) {
                                    z2 = true;
                                } else {
                                    if (this.zzdwx.zzx(zzcr(iZzcw)).zzdwa.zzagl() == zzbex.MESSAGE) {
                                        ?? Zze = 0;
                                        Iterator<?> it = mapZzt.values().iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                Object next = it.next();
                                                if (Zze == 0) {
                                                    Zze = Zze;
                                                    Zze = zzbdg.zzaeo().zze(next.getClass());
                                                }
                                                Zze = Zze;
                                                if (!Zze.zzaa(next)) {
                                                    z2 = false;
                                                }
                                            } else {
                                                z2 = true;
                                            }
                                        }
                                    } else {
                                        z2 = true;
                                    }
                                }
                                if (!z2) {
                                    return false;
                                }
                                break;
                                break;
                        }
                    } else if (zza(t, i7, iZzcw) && !zza(t, iZzct, zzcq(iZzcw))) {
                        return false;
                    }
                } else {
                    list = (List) zzbek.zzp(t, iZzct & 1048575);
                    if (list.isEmpty()) {
                        Zzcq = zzcq(iZzcw);
                        i2 = 0;
                        while (true) {
                            if (i2 < list.size()) {
                                z = true;
                            } else if (Zzcq.zzaa(list.get(i2))) {
                                z = false;
                            } else {
                                i2++;
                            }
                        }
                    } else {
                        z = true;
                    }
                    if (!z) {
                        return false;
                    }
                }
            } else if (zza(t, iZzcw, i6, i) && !zza(t, iZzct, zzcq(iZzcw))) {
                return false;
            }
            i4++;
            i3 = 1;
        }
        return !this.zzdwm || this.zzdww.zzm(t).isInitialized();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    /* JADX WARN: Code duplicated, block: B:42:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c8  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zzc(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzdwg.length; i += 4) {
            int iZzct = zzct(i);
            long j = 1048575 & iZzct;
            int i2 = this.zzdwg[i];
            switch ((iZzct & 267386880) >>> 20) {
                case 0:
                    if (zza(t2, i)) {
                        zzbek.zza(t, j, zzbek.zzo(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 1:
                    if (zza(t2, i)) {
                        zzbek.zza((Object) t, j, zzbek.zzn(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 2:
                    if (zza(t2, i)) {
                        zzbek.zza((Object) t, j, zzbek.zzl(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 3:
                    if (zza(t2, i)) {
                        zzbek.zza((Object) t, j, zzbek.zzl(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 4:
                    if (zza(t2, i)) {
                        zzbek.zzb(t, j, zzbek.zzk(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 5:
                    if (zza(t2, i)) {
                        zzbek.zza((Object) t, j, zzbek.zzl(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 6:
                    if (zza(t2, i)) {
                        zzbek.zzb(t, j, zzbek.zzk(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 7:
                    if (zza(t2, i)) {
                        zzbek.zza(t, j, zzbek.zzm(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 8:
                    if (zza(t2, i)) {
                        zzbek.zza(t, j, zzbek.zzp(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 9:
                case 17:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zza(t2, i)) {
                        zzbek.zza(t, j, zzbek.zzp(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 11:
                    if (zza(t2, i)) {
                        zzbek.zzb(t, j, zzbek.zzk(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 12:
                    if (zza(t2, i)) {
                        zzbek.zzb(t, j, zzbek.zzk(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 13:
                    if (zza(t2, i)) {
                        zzbek.zzb(t, j, zzbek.zzk(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 14:
                    if (zza(t2, i)) {
                        zzbek.zza((Object) t, j, zzbek.zzl(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 15:
                    if (zza(t2, i)) {
                        zzbek.zzb(t, j, zzbek.zzk(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 16:
                    if (zza(t2, i)) {
                        zzbek.zza((Object) t, j, zzbek.zzl(t2, j));
                        zzb(t, i);
                    }
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzdwu.zza(t, t2, j);
                    break;
                case 50:
                    zzbdo.zza(this.zzdwx, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zza(t2, i2, i)) {
                        zzbek.zza(t, j, zzbek.zzp(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 60:
                case 68:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza(t2, i2, i)) {
                        zzbek.zza(t, j, zzbek.zzp(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
            }
        }
        if (this.zzdwo) {
            return;
        }
        zzbdo.zza(this.zzdwv, t, t2);
        if (this.zzdwm) {
            zzbdo.zza(this.zzdww, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdm
    public final void zzo(T t) {
        int[] iArr = this.zzdwr;
        if (iArr != null) {
            for (int i : iArr) {
                long jZzct = zzct(i) & 1048575;
                Object objZzp = zzbek.zzp(t, jZzct);
                if (objZzp != null) {
                    zzbek.zza(t, jZzct, this.zzdwx.zzv(objZzp));
                }
            }
        }
        int[] iArr2 = this.zzdws;
        if (iArr2 != null) {
            for (int i2 : iArr2) {
                this.zzdwu.zzb(t, i2);
            }
        }
        this.zzdwv.zzo(t);
        if (this.zzdwm) {
            this.zzdww.zzo(t);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:142:0x020d A[PHI: r5
      0x020d: PHI (r5v83 int) = 
      (r5v46 int)
      (r5v49 int)
      (r5v52 int)
      (r5v55 int)
      (r5v58 int)
      (r5v61 int)
      (r5v64 int)
      (r5v67 int)
      (r5v70 int)
      (r5v73 int)
      (r5v76 int)
      (r5v79 int)
      (r5v82 int)
      (r5v87 int)
     binds: [B:141:0x020b, B:136:0x01fa, B:131:0x01e9, B:126:0x01d8, B:121:0x01c7, B:116:0x01b6, B:111:0x01a5, B:106:0x0193, B:101:0x0181, B:96:0x016f, B:91:0x015d, B:86:0x014b, B:81:0x0139, B:76:0x0127] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:160:0x029f  */
    /* JADX WARN: Code duplicated, block: B:171:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:174:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:185:0x0306  */
    /* JADX WARN: Code duplicated, block: B:186:0x030a A[PHI: r5
      0x030a: PHI (r5v106 java.lang.Object) = (r5v24 java.lang.Object), (r5v104 java.lang.Object), (r5v108 java.lang.Object) binds: [B:193:0x0331, B:45:0x00ab, B:185:0x0306] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:189:0x0317  */
    /* JADX WARN: Code duplicated, block: B:195:0x0334 A[PHI: r5
      0x0334: PHI (r5v102 java.lang.Object) = (r5v24 java.lang.Object), (r5v104 java.lang.Object) binds: [B:193:0x0331, B:45:0x00ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:198:0x0342  */
    /* JADX WARN: Code duplicated, block: B:201:0x034e  */
    /* JADX WARN: Code duplicated, block: B:204:0x035a  */
    /* JADX WARN: Code duplicated, block: B:219:0x0396  */
    /* JADX WARN: Code duplicated, block: B:222:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:375:0x05fd A[PHI: r4
      0x05fd: PHI (r4v105 int) = 
      (r4v68 int)
      (r4v71 int)
      (r4v74 int)
      (r4v77 int)
      (r4v80 int)
      (r4v83 int)
      (r4v86 int)
      (r4v89 int)
      (r4v92 int)
      (r4v95 int)
      (r4v98 int)
      (r4v101 int)
      (r4v104 int)
      (r4v109 int)
     binds: [B:374:0x05fb, B:369:0x05ea, B:364:0x05d9, B:359:0x05c8, B:354:0x05b7, B:349:0x05a6, B:344:0x0595, B:339:0x0583, B:334:0x0571, B:329:0x055f, B:324:0x054d, B:319:0x053b, B:314:0x0529, B:309:0x0517] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:391:0x06ad A[PHI: r5
      0x06ad: PHI (r5v4 int) = 
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v13 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v14 int)
      (r5v1 int)
     binds: [B:246:0x040e, B:436:0x0754, B:433:0x074a, B:427:0x0735, B:424:0x0723, B:420:0x0714, B:416:0x0707, B:412:0x06fa, B:408:0x06ef, B:405:0x06e4, B:401:0x06d7, B:397:0x06ca, B:394:0x06b7, B:372:0x05f7, B:367:0x05e6, B:362:0x05d5, B:357:0x05c4, B:352:0x05b3, B:347:0x05a2, B:342:0x0591, B:337:0x057f, B:332:0x056d, B:327:0x055b, B:322:0x0549, B:317:0x0537, B:312:0x0525, B:307:0x0513, B:302:0x04df, B:299:0x04d2, B:296:0x04c2, B:293:0x04b2, B:290:0x04a2, B:287:0x0494, B:284:0x0487, B:281:0x047f, B:276:0x046f, B:273:0x0467, B:270:0x045f, B:267:0x0453, B:264:0x0447, B:410:0x06f6, B:261:0x043f, B:258:0x0437, B:255:0x042b, B:252:0x041f, B:390:0x06ac, B:249:0x0417] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:422:0x071a A[PHI: r4
      0x071a: PHI (r4v140 java.lang.Object) = (r4v14 java.lang.Object), (r4v136 java.lang.Object), (r4v143 java.lang.Object) binds: [B:429:0x073d, B:278:0x0477, B:421:0x0716] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:431:0x0740 A[PHI: r4
      0x0740: PHI (r4v132 java.lang.Object) = (r4v14 java.lang.Object), (r4v136 java.lang.Object) binds: [B:429:0x073d, B:278:0x0477] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0417, code lost:
    
        if (zza(r20, r15, r3) != false) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0437, code lost:
    
        if (zza(r20, r15, r3) != false) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x043f, code lost:
    
        if (zza(r20, r15, r3) != false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x045f, code lost:
    
        if (zza(r20, r15, r3) != false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0467, code lost:
    
        if (zza(r20, r15, r3) != false) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x047f, code lost:
    
        if (zza(r20, r15, r3) != false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x06b7, code lost:
    
        if ((r12 & r18) != 0) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x06b9, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzbav.zzc(r15, (com.google.android.gms.internal.ads.zzbcu) r2.getObject(r20, r9), zzcq(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x06e4, code lost:
    
        if ((r12 & r18) != 0) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x06e6, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzbav.zzh(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x06ef, code lost:
    
        if ((r12 & r18) != 0) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x06f1, code lost:
    
        r9 = com.google.android.gms.internal.ads.zzbav.zzu(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0714, code lost:
    
        if ((r12 & r18) != 0) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0716, code lost:
    
        r4 = r2.getObject(r20, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0723, code lost:
    
        if ((r12 & r18) != 0) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0725, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzbdo.zzc(r15, r2.getObject(r20, r9), zzcq(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x074a, code lost:
    
        if ((r12 & r18) != 0) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x074c, code lost:
    
        r4 = com.google.android.gms.internal.ads.zzbav.zzg(r15, true);
     */
    @Override // com.google.android.gms.internal.ads.zzbdm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzy(T r20) {
        /*
            Method dump skipped, instruction units count: 2296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcy.zzy(java.lang.Object):int");
    }
}
