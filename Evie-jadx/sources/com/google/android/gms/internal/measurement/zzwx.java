package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzwx<T> implements zzxj<T> {
    private static final int[] zzcax = new int[0];
    private static final Unsafe zzcay = zzyh.zzyk();
    private final int[] zzcaz;
    private final Object[] zzcba;
    private final int zzcbb;
    private final int zzcbc;
    private final zzwt zzcbd;
    private final boolean zzcbe;
    private final boolean zzcbf;
    private final boolean zzcbg;
    private final boolean zzcbh;
    private final int[] zzcbi;
    private final int zzcbj;
    private final int zzcbk;
    private final zzxa zzcbl;
    private final zzwd zzcbm;
    private final zzyb<?, ?> zzcbn;
    private final zzva<?> zzcbo;
    private final zzwo zzcbp;

    private zzwx(int[] iArr, Object[] objArr, int i, int i2, zzwt zzwtVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzxa zzxaVar, zzwd zzwdVar, zzyb<?, ?> zzybVar, zzva<?> zzvaVar, zzwo zzwoVar) {
        this.zzcaz = iArr;
        this.zzcba = objArr;
        this.zzcbb = i;
        this.zzcbc = i2;
        this.zzcbf = zzwtVar instanceof zzvm;
        this.zzcbg = z;
        this.zzcbe = zzvaVar != null && zzvaVar.zze(zzwtVar);
        this.zzcbh = false;
        this.zzcbi = iArr2;
        this.zzcbj = i3;
        this.zzcbk = i4;
        this.zzcbl = zzxaVar;
        this.zzcbm = zzwdVar;
        this.zzcbn = zzybVar;
        this.zzcbo = zzvaVar;
        this.zzcbd = zzwtVar;
        this.zzcbp = zzwoVar;
    }

    private static boolean zzbs(int i) {
        return (i & 536870912) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:189:0x0420  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static <T> zzwx<T> zza(Class<T> cls, zzwr zzwrVar, zzxa zzxaVar, zzwd zzwdVar, zzyb<?, ?> zzybVar, zzva<?> zzvaVar, zzwo zzwoVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int iCharAt;
        int i6;
        int iCharAt2;
        int iCharAt3;
        int i7;
        int[] iArr;
        int i8;
        int i9;
        int i10;
        int i11;
        char cCharAt;
        int i12;
        char cCharAt2;
        int i13;
        char cCharAt3;
        int i14;
        char cCharAt4;
        char cCharAt5;
        char cCharAt6;
        char cCharAt7;
        char cCharAt8;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int iObjectFieldOffset;
        int i21;
        int iObjectFieldOffset2;
        Field fieldZza;
        int i22;
        char cCharAt9;
        int i23;
        Field fieldZza2;
        Field fieldZza3;
        int i24;
        char cCharAt10;
        int i25;
        char cCharAt11;
        int i26;
        char cCharAt12;
        char cCharAt13;
        char cCharAt14;
        if (zzwrVar instanceof zzxh) {
            zzxh zzxhVar = (zzxh) zzwrVar;
            int iCharAt4 = 0;
            boolean z = zzxhVar.zzxg() == zzvm.zze.zzbzc;
            String strZzxp = zzxhVar.zzxp();
            int length = strZzxp.length();
            int iCharAt5 = strZzxp.charAt(0);
            if (iCharAt5 >= 55296) {
                int i27 = iCharAt5 & 8191;
                int i28 = 1;
                int i29 = 13;
                while (true) {
                    i = i28 + 1;
                    cCharAt14 = strZzxp.charAt(i28);
                    if (cCharAt14 < 55296) {
                        break;
                    }
                    i27 |= (cCharAt14 & 8191) << i29;
                    i29 += 13;
                    i28 = i;
                }
                iCharAt5 = (cCharAt14 << i29) | i27;
            } else {
                i = 1;
            }
            int i30 = i + 1;
            int iCharAt6 = strZzxp.charAt(i);
            if (iCharAt6 >= 55296) {
                int i31 = iCharAt6 & 8191;
                int i32 = 13;
                while (true) {
                    i2 = i30 + 1;
                    cCharAt13 = strZzxp.charAt(i30);
                    if (cCharAt13 < 55296) {
                        break;
                    }
                    i31 |= (cCharAt13 & 8191) << i32;
                    i32 += 13;
                    i30 = i2;
                }
                iCharAt6 = i31 | (cCharAt13 << i32);
            } else {
                i2 = i30;
            }
            if (iCharAt6 == 0) {
                iArr = zzcax;
                iCharAt3 = 0;
                i10 = 0;
                i8 = 0;
                iCharAt = 0;
                iCharAt2 = 0;
                i9 = 0;
            } else {
                int i33 = i2 + 1;
                int iCharAt7 = strZzxp.charAt(i2);
                if (iCharAt7 >= 55296) {
                    int i34 = iCharAt7 & 8191;
                    int i35 = 13;
                    while (true) {
                        i3 = i33 + 1;
                        cCharAt8 = strZzxp.charAt(i33);
                        if (cCharAt8 < 55296) {
                            break;
                        }
                        i34 |= (cCharAt8 & 8191) << i35;
                        i35 += 13;
                        i33 = i3;
                    }
                    iCharAt7 = (cCharAt8 << i35) | i34;
                } else {
                    i3 = i33;
                }
                int i36 = i3 + 1;
                int iCharAt8 = strZzxp.charAt(i3);
                if (iCharAt8 >= 55296) {
                    int i37 = iCharAt8 & 8191;
                    int i38 = 13;
                    while (true) {
                        i4 = i36 + 1;
                        cCharAt7 = strZzxp.charAt(i36);
                        if (cCharAt7 < 55296) {
                            break;
                        }
                        i37 |= (cCharAt7 & 8191) << i38;
                        i38 += 13;
                        i36 = i4;
                    }
                    iCharAt8 = i37 | (cCharAt7 << i38);
                } else {
                    i4 = i36;
                }
                int i39 = i4 + 1;
                int iCharAt9 = strZzxp.charAt(i4);
                if (iCharAt9 >= 55296) {
                    int i40 = iCharAt9 & 8191;
                    int i41 = 13;
                    while (true) {
                        i5 = i39 + 1;
                        cCharAt6 = strZzxp.charAt(i39);
                        if (cCharAt6 < 55296) {
                            break;
                        }
                        i40 |= (cCharAt6 & 8191) << i41;
                        i41 += 13;
                        i39 = i5;
                    }
                    iCharAt9 = (cCharAt6 << i41) | i40;
                } else {
                    i5 = i39;
                }
                int i42 = i5 + 1;
                iCharAt = strZzxp.charAt(i5);
                if (iCharAt >= 55296) {
                    int i43 = iCharAt & 8191;
                    int i44 = 13;
                    while (true) {
                        i6 = i42 + 1;
                        cCharAt5 = strZzxp.charAt(i42);
                        if (cCharAt5 < 55296) {
                            break;
                        }
                        i43 |= (cCharAt5 & 8191) << i44;
                        i44 += 13;
                        i42 = i6;
                    }
                    iCharAt = (cCharAt5 << i44) | i43;
                } else {
                    i6 = i42;
                }
                int i45 = i6 + 1;
                iCharAt2 = strZzxp.charAt(i6);
                if (iCharAt2 >= 55296) {
                    int i46 = iCharAt2 & 8191;
                    int i47 = 13;
                    while (true) {
                        i14 = i45 + 1;
                        cCharAt4 = strZzxp.charAt(i45);
                        if (cCharAt4 < 55296) {
                            break;
                        }
                        i46 |= (cCharAt4 & 8191) << i47;
                        i47 += 13;
                        i45 = i14;
                    }
                    iCharAt2 = (cCharAt4 << i47) | i46;
                    i45 = i14;
                }
                int i48 = i45 + 1;
                iCharAt3 = strZzxp.charAt(i45);
                if (iCharAt3 >= 55296) {
                    int i49 = iCharAt3 & 8191;
                    int i50 = 13;
                    while (true) {
                        i13 = i48 + 1;
                        cCharAt3 = strZzxp.charAt(i48);
                        if (cCharAt3 < 55296) {
                            break;
                        }
                        i49 |= (cCharAt3 & 8191) << i50;
                        i50 += 13;
                        i48 = i13;
                    }
                    iCharAt3 = i49 | (cCharAt3 << i50);
                    i48 = i13;
                }
                int i51 = i48 + 1;
                int iCharAt10 = strZzxp.charAt(i48);
                if (iCharAt10 >= 55296) {
                    int i52 = 13;
                    int i53 = iCharAt10 & 8191;
                    int i54 = i51;
                    while (true) {
                        i12 = i54 + 1;
                        cCharAt2 = strZzxp.charAt(i54);
                        if (cCharAt2 < 55296) {
                            break;
                        }
                        i53 |= (cCharAt2 & 8191) << i52;
                        i52 += 13;
                        i54 = i12;
                    }
                    iCharAt10 = i53 | (cCharAt2 << i52);
                    i7 = i12;
                } else {
                    i7 = i51;
                }
                int i55 = i7 + 1;
                iCharAt4 = strZzxp.charAt(i7);
                if (iCharAt4 >= 55296) {
                    int i56 = 13;
                    int i57 = iCharAt4 & 8191;
                    int i58 = i55;
                    while (true) {
                        i11 = i58 + 1;
                        cCharAt = strZzxp.charAt(i58);
                        if (cCharAt < 55296) {
                            break;
                        }
                        i57 |= (cCharAt & 8191) << i56;
                        i56 += 13;
                        i58 = i11;
                    }
                    iCharAt4 = i57 | (cCharAt << i56);
                    i55 = i11;
                }
                iArr = new int[iCharAt4 + iCharAt3 + iCharAt10];
                i8 = (iCharAt7 << 1) + iCharAt8;
                int i59 = i55;
                i9 = iCharAt7;
                i10 = iCharAt9;
                i2 = i59;
            }
            Unsafe unsafe = zzcay;
            Object[] objArrZzxq = zzxhVar.zzxq();
            Class<?> cls2 = zzxhVar.zzxi().getClass();
            int i60 = i8;
            int[] iArr2 = new int[iCharAt2 * 3];
            Object[] objArr = new Object[iCharAt2 << 1];
            int i61 = iCharAt4 + iCharAt3;
            int i62 = iCharAt4;
            int i63 = i60;
            int i64 = i61;
            int i65 = 0;
            int i66 = 0;
            while (i2 < length) {
                int i67 = i2 + 1;
                int iCharAt11 = strZzxp.charAt(i2);
                char c = 55296;
                if (iCharAt11 >= 55296) {
                    int i68 = 13;
                    int i69 = iCharAt11 & 8191;
                    int i70 = i67;
                    while (true) {
                        i26 = i70 + 1;
                        cCharAt12 = strZzxp.charAt(i70);
                        if (cCharAt12 < c) {
                            break;
                        }
                        i69 |= (cCharAt12 & 8191) << i68;
                        i68 += 13;
                        i70 = i26;
                        c = 55296;
                    }
                    iCharAt11 = i69 | (cCharAt12 << i68);
                    i15 = i26;
                } else {
                    i15 = i67;
                }
                int i71 = i15 + 1;
                int iCharAt12 = strZzxp.charAt(i15);
                int i72 = length;
                char c2 = 55296;
                if (iCharAt12 >= 55296) {
                    int i73 = 13;
                    int i74 = iCharAt12 & 8191;
                    int i75 = i71;
                    while (true) {
                        i25 = i75 + 1;
                        cCharAt11 = strZzxp.charAt(i75);
                        if (cCharAt11 < c2) {
                            break;
                        }
                        i74 |= (cCharAt11 & 8191) << i73;
                        i73 += 13;
                        i75 = i25;
                        c2 = 55296;
                    }
                    iCharAt12 = i74 | (cCharAt11 << i73);
                    i16 = i25;
                } else {
                    i16 = i71;
                }
                int i76 = iCharAt4;
                int i77 = iCharAt12 & 255;
                boolean z2 = z;
                if ((iCharAt12 & 1024) != 0) {
                    iArr[i65] = i66;
                    i65++;
                }
                if (i77 > zzvg.MAP.m362id()) {
                    int i78 = i16 + 1;
                    int iCharAt13 = strZzxp.charAt(i16);
                    i17 = i65;
                    char c3 = 55296;
                    if (iCharAt13 >= 55296) {
                        int i79 = iCharAt13 & 8191;
                        int i80 = 13;
                        while (true) {
                            i24 = i78 + 1;
                            cCharAt10 = strZzxp.charAt(i78);
                            if (cCharAt10 < c3) {
                                break;
                            }
                            i79 |= (cCharAt10 & 8191) << i80;
                            i80 += 13;
                            i78 = i24;
                            c3 = 55296;
                        }
                        iCharAt13 = i79 | (cCharAt10 << i80);
                        i78 = i24;
                    }
                    if (i77 == zzvg.MESSAGE.m362id() + 51 || i77 == zzvg.GROUP.m362id() + 51) {
                        i23 = 1;
                        objArr[((i66 / 3) << 1) + 1] = objArrZzxq[i63];
                        i63++;
                    } else {
                        if (i77 == zzvg.ENUM.m362id() + 51) {
                            i78 = i78;
                            if ((iCharAt5 & 1) == 1) {
                                objArr[((i66 / 3) << 1) + 1] = objArrZzxq[i63];
                                i63++;
                                i23 = 1;
                            }
                        } else {
                            i78 = i78;
                        }
                        i23 = 1;
                    }
                    int i81 = iCharAt13 << i23;
                    Object obj = objArrZzxq[i81];
                    if (obj instanceof Field) {
                        fieldZza2 = (Field) obj;
                    } else {
                        fieldZza2 = zza(cls2, (String) obj);
                        objArrZzxq[i81] = fieldZza2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZza2);
                    int i82 = i81 + 1;
                    Object obj2 = objArrZzxq[i82];
                    if (obj2 instanceof Field) {
                        fieldZza3 = (Field) obj2;
                    } else {
                        fieldZza3 = zza(cls2, (String) obj2);
                        objArrZzxq[i82] = fieldZza3;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZza3);
                    cls2 = cls2;
                    i19 = i63;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    i18 = i10;
                    i21 = 0;
                    int i83 = iCharAt;
                    iCharAt11 = iCharAt11;
                    i2 = i78;
                    i20 = i83;
                } else {
                    i17 = i65;
                    i18 = i10;
                    i19 = i63 + 1;
                    Field fieldZza4 = zza(cls2, (String) objArrZzxq[i63]);
                    i20 = iCharAt;
                    if (i77 == zzvg.MESSAGE.m362id() || i77 == zzvg.GROUP.m362id()) {
                        i18 = i18;
                        objArr[((i66 / 3) << 1) + 1] = fieldZza4.getType();
                    } else {
                        if (i77 == zzvg.MESSAGE_LIST.m362id() || i77 == zzvg.GROUP_LIST.m362id()) {
                            int i84 = 1;
                            objArr[((i66 / 3) << i84) + i84] = objArrZzxq[i19];
                            i19++;
                        } else if (i77 == zzvg.ENUM.m362id() || i77 == zzvg.ENUM_LIST.m362id() || i77 == zzvg.ENUM_LIST_PACKED.m362id()) {
                            i18 = i18;
                            if ((iCharAt5 & 1) == 1) {
                                objArr[((i66 / 3) << 1) + 1] = objArrZzxq[i19];
                                i19++;
                            }
                        } else if (i77 == zzvg.MAP.m362id()) {
                            int i85 = i62 + 1;
                            iArr[i62] = i66;
                            int i86 = (i66 / 3) << 1;
                            int i87 = i19 + 1;
                            objArr[i86] = objArrZzxq[i19];
                            if ((iCharAt12 & 2048) != 0) {
                                i19 = i87 + 1;
                                objArr[i86 + 1] = objArrZzxq[i87];
                                i18 = i18;
                                i62 = i85;
                            } else {
                                i18 = i18;
                                i19 = i87;
                                i62 = i85;
                            }
                        } else {
                            i18 = i18;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                        if ((iCharAt5 & 1) == 1 || i77 > zzvg.GROUP.m362id()) {
                            cls2 = cls2;
                            i19 = i19;
                            i2 = i16;
                            i21 = 0;
                            iObjectFieldOffset2 = 0;
                        } else {
                            int i88 = i16 + 1;
                            int iCharAt14 = strZzxp.charAt(i16);
                            if (iCharAt14 >= 55296) {
                                int i89 = iCharAt14 & 8191;
                                int i90 = 13;
                                while (true) {
                                    i22 = i88 + 1;
                                    cCharAt9 = strZzxp.charAt(i88);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i89 |= (cCharAt9 & 8191) << i90;
                                    i90 += 13;
                                    i88 = i22;
                                }
                                iCharAt14 = i89 | (cCharAt9 << i90);
                                i88 = i22;
                            }
                            int i91 = (i9 << 1) + (iCharAt14 / 32);
                            Object obj3 = objArrZzxq[i91];
                            if (obj3 instanceof Field) {
                                fieldZza = (Field) obj3;
                            } else {
                                fieldZza = zza(cls2, (String) obj3);
                                objArrZzxq[i91] = fieldZza;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza);
                            i21 = iCharAt14 % 32;
                            i2 = i88;
                        }
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                    if ((iCharAt5 & 1) == 1) {
                        cls2 = cls2;
                        i19 = i19;
                        i2 = i16;
                        i21 = 0;
                        iObjectFieldOffset2 = 0;
                    } else {
                        cls2 = cls2;
                        i19 = i19;
                        i2 = i16;
                        i21 = 0;
                        iObjectFieldOffset2 = 0;
                    }
                }
                if (i77 >= 18 && i77 <= 49) {
                    iArr[i64] = iObjectFieldOffset;
                    i64++;
                }
                int i92 = i66 + 1;
                iArr2[i66] = iCharAt11;
                int i93 = i92 + 1;
                iArr2[i92] = (i77 << 20) | ((iCharAt12 & 256) != 0 ? 268435456 : 0) | ((iCharAt12 & 512) != 0 ? 536870912 : 0) | iObjectFieldOffset;
                i66 = i93 + 1;
                iArr2[i93] = (i21 << 20) | iObjectFieldOffset2;
                cls2 = cls2;
                i10 = i18;
                iCharAt4 = i76;
                i63 = i19;
                length = i72;
                z = z2;
                i65 = i17;
                iCharAt = i20;
                strZzxp = strZzxp;
            }
            return new zzwx<>(iArr2, objArr, i10, iCharAt, zzxhVar.zzxi(), z, false, iArr, iCharAt4, i61, zzxaVar, zzwdVar, zzybVar, zzvaVar, zzwoVar);
        }
        ((zzxw) zzwrVar).zzxg();
        throw new NoSuchMethodError();
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final T newInstance() {
        return (T) this.zzcbl.newInstance(this.zzcbd);
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final boolean equals(T t, T t2) {
        int length = this.zzcaz.length;
        int i = 0;
        while (true) {
            boolean zZze = true;
            if (i < length) {
                int iZzbq = zzbq(i);
                long j = iZzbq & 1048575;
                switch ((iZzbq & 267386880) >>> 20) {
                    case 0:
                        if (!zzc(t, t2, i) || zzyh.zzl(t, j) != zzyh.zzl(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 1:
                        if (!zzc(t, t2, i) || zzyh.zzk(t, j) != zzyh.zzk(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 2:
                        if (!zzc(t, t2, i) || zzyh.zzl(t, j) != zzyh.zzl(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 3:
                        if (!zzc(t, t2, i) || zzyh.zzl(t, j) != zzyh.zzl(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 4:
                        if (!zzc(t, t2, i) || zzyh.zzk(t, j) != zzyh.zzk(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 5:
                        if (!zzc(t, t2, i) || zzyh.zzl(t, j) != zzyh.zzl(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 6:
                        if (!zzc(t, t2, i) || zzyh.zzk(t, j) != zzyh.zzk(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 7:
                        if (!zzc(t, t2, i) || zzyh.zzm(t, j) != zzyh.zzm(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 8:
                        if (!zzc(t, t2, i) || !zzxl.zze(zzyh.zzp(t, j), zzyh.zzp(t2, j))) {
                            zZze = false;
                        }
                        break;
                    case 9:
                        if (!zzc(t, t2, i) || !zzxl.zze(zzyh.zzp(t, j), zzyh.zzp(t2, j))) {
                            zZze = false;
                        }
                        break;
                    case 10:
                        if (!zzc(t, t2, i) || !zzxl.zze(zzyh.zzp(t, j), zzyh.zzp(t2, j))) {
                            zZze = false;
                        }
                        break;
                    case 11:
                        if (!zzc(t, t2, i) || zzyh.zzk(t, j) != zzyh.zzk(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 12:
                        if (!zzc(t, t2, i) || zzyh.zzk(t, j) != zzyh.zzk(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 13:
                        if (!zzc(t, t2, i) || zzyh.zzk(t, j) != zzyh.zzk(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 14:
                        if (!zzc(t, t2, i) || zzyh.zzl(t, j) != zzyh.zzl(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 15:
                        if (!zzc(t, t2, i) || zzyh.zzk(t, j) != zzyh.zzk(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 16:
                        if (!zzc(t, t2, i) || zzyh.zzl(t, j) != zzyh.zzl(t2, j)) {
                            zZze = false;
                        }
                        break;
                    case 17:
                        if (!zzc(t, t2, i) || !zzxl.zze(zzyh.zzp(t, j), zzyh.zzp(t2, j))) {
                            zZze = false;
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
                        zZze = zzxl.zze(zzyh.zzp(t, j), zzyh.zzp(t2, j));
                        break;
                    case 50:
                        zZze = zzxl.zze(zzyh.zzp(t, j), zzyh.zzp(t2, j));
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
                        long jZzbr = zzbr(i) & 1048575;
                        if (zzyh.zzk(t, jZzbr) != zzyh.zzk(t2, jZzbr) || !zzxl.zze(zzyh.zzp(t, j), zzyh.zzp(t2, j))) {
                            zZze = false;
                        }
                        break;
                }
                if (!zZze) {
                    return false;
                }
                i += 3;
            } else {
                if (!this.zzcbn.zzah(t).equals(this.zzcbn.zzah(t2))) {
                    return false;
                }
                if (this.zzcbe) {
                    return this.zzcbo.zzs(t).equals(this.zzcbo.zzs(t2));
                }
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int hashCode(T t) {
        int length = this.zzcaz.length;
        int iZzbf = 0;
        for (int i = 0; i < length; i += 3) {
            int iZzbq = zzbq(i);
            int i2 = this.zzcaz[i];
            long j = 1048575 & iZzbq;
            switch ((iZzbq & 267386880) >>> 20) {
                case 0:
                    iZzbf = (iZzbf * 53) + zzvo.zzbf(Double.doubleToLongBits(zzyh.zzo(t, j)));
                    break;
                case 1:
                    iZzbf = (iZzbf * 53) + Float.floatToIntBits(zzyh.zzn(t, j));
                    break;
                case 2:
                    iZzbf = (iZzbf * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 3:
                    iZzbf = (iZzbf * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 4:
                    iZzbf = (iZzbf * 53) + zzyh.zzk(t, j);
                    break;
                case 5:
                    iZzbf = (iZzbf * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 6:
                    iZzbf = (iZzbf * 53) + zzyh.zzk(t, j);
                    break;
                case 7:
                    iZzbf = (iZzbf * 53) + zzvo.zzw(zzyh.zzm(t, j));
                    break;
                case 8:
                    iZzbf = (iZzbf * 53) + ((String) zzyh.zzp(t, j)).hashCode();
                    break;
                case 9:
                    Object objZzp = zzyh.zzp(t, j);
                    iZzbf = (iZzbf * 53) + (objZzp != null ? objZzp.hashCode() : 37);
                    break;
                case 10:
                    iZzbf = (iZzbf * 53) + zzyh.zzp(t, j).hashCode();
                    break;
                case 11:
                    iZzbf = (iZzbf * 53) + zzyh.zzk(t, j);
                    break;
                case 12:
                    iZzbf = (iZzbf * 53) + zzyh.zzk(t, j);
                    break;
                case 13:
                    iZzbf = (iZzbf * 53) + zzyh.zzk(t, j);
                    break;
                case 14:
                    iZzbf = (iZzbf * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 15:
                    iZzbf = (iZzbf * 53) + zzyh.zzk(t, j);
                    break;
                case 16:
                    iZzbf = (iZzbf * 53) + zzvo.zzbf(zzyh.zzl(t, j));
                    break;
                case 17:
                    Object objZzp2 = zzyh.zzp(t, j);
                    iZzbf = (iZzbf * 53) + (objZzp2 != null ? objZzp2.hashCode() : 37);
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
                    iZzbf = (iZzbf * 53) + zzyh.zzp(t, j).hashCode();
                    break;
                case 50:
                    iZzbf = (iZzbf * 53) + zzyh.zzp(t, j).hashCode();
                    break;
                case 51:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzvo.zzbf(Double.doubleToLongBits(zzf(t, j)));
                    }
                    break;
                case 52:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + Float.floatToIntBits(zzg(t, j));
                    }
                    break;
                case 53:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzvo.zzbf(zzi(t, j));
                    }
                    break;
                case 54:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzvo.zzbf(zzi(t, j));
                    }
                    break;
                case 55:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzh(t, j);
                    }
                    break;
                case 56:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzvo.zzbf(zzi(t, j));
                    }
                    break;
                case 57:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzh(t, j);
                    }
                    break;
                case 58:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzvo.zzw(zzj(t, j));
                    }
                    break;
                case 59:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + ((String) zzyh.zzp(t, j)).hashCode();
                    }
                    break;
                case 60:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzyh.zzp(t, j).hashCode();
                    }
                    break;
                case 61:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzyh.zzp(t, j).hashCode();
                    }
                    break;
                case 62:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzh(t, j);
                    }
                    break;
                case 63:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzh(t, j);
                    }
                    break;
                case 64:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzh(t, j);
                    }
                    break;
                case 65:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzvo.zzbf(zzi(t, j));
                    }
                    break;
                case 66:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzh(t, j);
                    }
                    break;
                case 67:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzvo.zzbf(zzi(t, j));
                    }
                    break;
                case 68:
                    if (zza(t, i2, i)) {
                        iZzbf = (iZzbf * 53) + zzyh.zzp(t, j).hashCode();
                    }
                    break;
            }
        }
        int iHashCode = (iZzbf * 53) + this.zzcbn.zzah(t).hashCode();
        return this.zzcbe ? (iHashCode * 53) + this.zzcbo.zzs(t).hashCode() : iHashCode;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzd(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzcaz.length; i += 3) {
            int iZzbq = zzbq(i);
            long j = 1048575 & iZzbq;
            int i2 = this.zzcaz[i];
            switch ((iZzbq & 267386880) >>> 20) {
                case 0:
                    if (zzb(t2, i)) {
                        zzyh.zza(t, j, zzyh.zzo(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 1:
                    if (zzb(t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzn(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 2:
                    if (zzb(t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 3:
                    if (zzb(t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 4:
                    if (zzb(t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 5:
                    if (zzb(t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 6:
                    if (zzb(t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 7:
                    if (zzb(t2, i)) {
                        zzyh.zza(t, j, zzyh.zzm(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 8:
                    if (zzb(t2, i)) {
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zzb(t2, i)) {
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 11:
                    if (zzb(t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 12:
                    if (zzb(t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 13:
                    if (zzb(t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 14:
                    if (zzb(t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 15:
                    if (zzb(t2, i)) {
                        zzyh.zzb(t, j, zzyh.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 16:
                    if (zzb(t2, i)) {
                        zzyh.zza((Object) t, j, zzyh.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 17:
                    zza(t, t2, i);
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
                    this.zzcbm.zza(t, t2, j);
                    break;
                case 50:
                    zzxl.zza(this.zzcbp, t, t2, j);
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
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 60:
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
                        zzyh.zza(t, j, zzyh.zzp(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        if (this.zzcbg) {
            return;
        }
        zzxl.zza(this.zzcbn, t, t2);
        if (this.zzcbe) {
            zzxl.zza(this.zzcbo, t, t2);
        }
    }

    private final void zza(T t, T t2, int i) {
        long jZzbq = zzbq(i) & 1048575;
        if (zzb(t2, i)) {
            Object objZzp = zzyh.zzp(t, jZzbq);
            Object objZzp2 = zzyh.zzp(t2, jZzbq);
            if (objZzp != null && objZzp2 != null) {
                zzyh.zza(t, jZzbq, zzvo.zzb(objZzp, objZzp2));
                zzc(t, i);
            } else if (objZzp2 != null) {
                zzyh.zza(t, jZzbq, objZzp2);
                zzc(t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int iZzbq = zzbq(i);
        int i2 = this.zzcaz[i];
        long j = iZzbq & 1048575;
        if (zza(t2, i2, i)) {
            Object objZzp = zzyh.zzp(t, j);
            Object objZzp2 = zzyh.zzp(t2, j);
            if (objZzp != null && objZzp2 != null) {
                zzyh.zza(t, j, zzvo.zzb(objZzp, objZzp2));
                zzb(t, i2, i);
            } else if (objZzp2 != null) {
                zzyh.zza(t, j, objZzp2);
                zzb(t, i2, i);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final int zzae(T t) {
        int i;
        int i2;
        long j;
        int i3 = 267386880;
        if (this.zzcbg) {
            Unsafe unsafe = zzcay;
            int i4 = 0;
            int iZzb = 0;
            while (i4 < this.zzcaz.length) {
                int iZzbq = zzbq(i4);
                int i5 = (iZzbq & i3) >>> 20;
                int i6 = this.zzcaz[i4];
                long j2 = iZzbq & 1048575;
                int i7 = (i5 < zzvg.DOUBLE_LIST_PACKED.m362id() || i5 > zzvg.SINT64_LIST_PACKED.m362id()) ? 0 : this.zzcaz[i4 + 2] & 1048575;
                switch (i5) {
                    case 0:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzb(i6, 0.0d);
                        }
                        break;
                    case 1:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzb(i6, 0.0f);
                        }
                        break;
                    case 2:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzd(i6, zzyh.zzl(t, j2));
                        }
                        break;
                    case 3:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zze(i6, zzyh.zzl(t, j2));
                        }
                        break;
                    case 4:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzh(i6, zzyh.zzk(t, j2));
                        }
                        break;
                    case 5:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzg(i6, 0L);
                        }
                        break;
                    case 6:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzk(i6, 0);
                        }
                        break;
                    case 7:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzc(i6, true);
                        }
                        break;
                    case 8:
                        if (zzb(t, i4)) {
                            Object objZzp = zzyh.zzp(t, j2);
                            if (objZzp instanceof zzud) {
                                iZzb += zzut.zzc(i6, (zzud) objZzp);
                            } else {
                                iZzb += zzut.zzc(i6, (String) objZzp);
                            }
                        }
                        break;
                    case 9:
                        if (zzb(t, i4)) {
                            iZzb += zzxl.zzc(i6, zzyh.zzp(t, j2), zzbn(i4));
                        }
                        break;
                    case 10:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzc(i6, (zzud) zzyh.zzp(t, j2));
                        }
                        break;
                    case 11:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzi(i6, zzyh.zzk(t, j2));
                        }
                        break;
                    case 12:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzm(i6, zzyh.zzk(t, j2));
                        }
                        break;
                    case 13:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzl(i6, 0);
                        }
                        break;
                    case 14:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzh(i6, 0L);
                        }
                        break;
                    case 15:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzj(i6, zzyh.zzk(t, j2));
                        }
                        break;
                    case 16:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzf(i6, zzyh.zzl(t, j2));
                        }
                        break;
                    case 17:
                        if (zzb(t, i4)) {
                            iZzb += zzut.zzc(i6, (zzwt) zzyh.zzp(t, j2), zzbn(i4));
                        }
                        break;
                    case 18:
                        iZzb += zzxl.zzw(i6, zze(t, j2), false);
                        break;
                    case 19:
                        iZzb += zzxl.zzv(i6, zze(t, j2), false);
                        break;
                    case 20:
                        iZzb += zzxl.zzo(i6, zze(t, j2), false);
                        break;
                    case 21:
                        iZzb += zzxl.zzp(i6, zze(t, j2), false);
                        break;
                    case 22:
                        iZzb += zzxl.zzs(i6, zze(t, j2), false);
                        break;
                    case 23:
                        iZzb += zzxl.zzw(i6, zze(t, j2), false);
                        break;
                    case 24:
                        iZzb += zzxl.zzv(i6, zze(t, j2), false);
                        break;
                    case 25:
                        iZzb += zzxl.zzx(i6, zze(t, j2), false);
                        break;
                    case 26:
                        iZzb += zzxl.zzc(i6, zze(t, j2));
                        break;
                    case 27:
                        iZzb += zzxl.zzc(i6, (List<?>) zze(t, j2), zzbn(i4));
                        break;
                    case 28:
                        iZzb += zzxl.zzd(i6, zze(t, j2));
                        break;
                    case 29:
                        iZzb += zzxl.zzt(i6, zze(t, j2), false);
                        break;
                    case 30:
                        iZzb += zzxl.zzr(i6, zze(t, j2), false);
                        break;
                    case 31:
                        iZzb += zzxl.zzv(i6, zze(t, j2), false);
                        break;
                    case 32:
                        iZzb += zzxl.zzw(i6, zze(t, j2), false);
                        break;
                    case 33:
                        iZzb += zzxl.zzu(i6, zze(t, j2), false);
                        break;
                    case 34:
                        iZzb += zzxl.zzq(i6, zze(t, j2), false);
                        break;
                    case 35:
                        int iZzaf = zzxl.zzaf((List) unsafe.getObject(t, j2));
                        if (iZzaf > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzaf);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzaf) + iZzaf;
                        }
                        break;
                    case 36:
                        int iZzae = zzxl.zzae((List) unsafe.getObject(t, j2));
                        if (iZzae > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzae);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzae) + iZzae;
                        }
                        break;
                    case 37:
                        int iZzx = zzxl.zzx((List<Long>) unsafe.getObject(t, j2));
                        if (iZzx > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzx);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzx) + iZzx;
                        }
                        break;
                    case 38:
                        int iZzy = zzxl.zzy((List) unsafe.getObject(t, j2));
                        if (iZzy > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzy);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzy) + iZzy;
                        }
                        break;
                    case 39:
                        int iZzab = zzxl.zzab((List) unsafe.getObject(t, j2));
                        if (iZzab > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzab);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzab) + iZzab;
                        }
                        break;
                    case 40:
                        int iZzaf2 = zzxl.zzaf((List) unsafe.getObject(t, j2));
                        if (iZzaf2 > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzaf2);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzaf2) + iZzaf2;
                        }
                        break;
                    case 41:
                        int iZzae2 = zzxl.zzae((List) unsafe.getObject(t, j2));
                        if (iZzae2 > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzae2);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzae2) + iZzae2;
                        }
                        break;
                    case 42:
                        int iZzag = zzxl.zzag((List) unsafe.getObject(t, j2));
                        if (iZzag > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzag);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzag) + iZzag;
                        }
                        break;
                    case 43:
                        int iZzac = zzxl.zzac((List) unsafe.getObject(t, j2));
                        if (iZzac > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzac);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzac) + iZzac;
                        }
                        break;
                    case 44:
                        int iZzaa = zzxl.zzaa((List) unsafe.getObject(t, j2));
                        if (iZzaa > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzaa);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzaa) + iZzaa;
                        }
                        break;
                    case 45:
                        int iZzae3 = zzxl.zzae((List) unsafe.getObject(t, j2));
                        if (iZzae3 > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzae3);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzae3) + iZzae3;
                        }
                        break;
                    case 46:
                        int iZzaf3 = zzxl.zzaf((List) unsafe.getObject(t, j2));
                        if (iZzaf3 > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzaf3);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzaf3) + iZzaf3;
                        }
                        break;
                    case 47:
                        int iZzad = zzxl.zzad((List) unsafe.getObject(t, j2));
                        if (iZzad > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzad);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzad) + iZzad;
                        }
                        break;
                    case 48:
                        int iZzz = zzxl.zzz((List) unsafe.getObject(t, j2));
                        if (iZzz > 0) {
                            if (this.zzcbh) {
                                unsafe.putInt(t, i7, iZzz);
                            }
                            iZzb += zzut.zzbb(i6) + zzut.zzbd(iZzz) + iZzz;
                        }
                        break;
                    case 49:
                        iZzb += zzxl.zzd(i6, zze(t, j2), zzbn(i4));
                        break;
                    case 50:
                        iZzb += this.zzcbp.zzb(i6, zzyh.zzp(t, j2), zzbo(i4));
                        break;
                    case 51:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzb(i6, 0.0d);
                        }
                        break;
                    case 52:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzb(i6, 0.0f);
                        }
                        break;
                    case 53:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzd(i6, zzi(t, j2));
                        }
                        break;
                    case 54:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zze(i6, zzi(t, j2));
                        }
                        break;
                    case 55:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzh(i6, zzh(t, j2));
                        }
                        break;
                    case 56:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzg(i6, 0L);
                        }
                        break;
                    case 57:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzk(i6, 0);
                        }
                        break;
                    case 58:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzc(i6, true);
                        }
                        break;
                    case 59:
                        if (zza(t, i6, i4)) {
                            Object objZzp2 = zzyh.zzp(t, j2);
                            if (objZzp2 instanceof zzud) {
                                iZzb += zzut.zzc(i6, (zzud) objZzp2);
                            } else {
                                iZzb += zzut.zzc(i6, (String) objZzp2);
                            }
                        }
                        break;
                    case 60:
                        if (zza(t, i6, i4)) {
                            iZzb += zzxl.zzc(i6, zzyh.zzp(t, j2), zzbn(i4));
                        }
                        break;
                    case 61:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzc(i6, (zzud) zzyh.zzp(t, j2));
                        }
                        break;
                    case 62:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzi(i6, zzh(t, j2));
                        }
                        break;
                    case 63:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzm(i6, zzh(t, j2));
                        }
                        break;
                    case 64:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzl(i6, 0);
                        }
                        break;
                    case 65:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzh(i6, 0L);
                        }
                        break;
                    case 66:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzj(i6, zzh(t, j2));
                        }
                        break;
                    case 67:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzf(i6, zzi(t, j2));
                        }
                        break;
                    case 68:
                        if (zza(t, i6, i4)) {
                            iZzb += zzut.zzc(i6, (zzwt) zzyh.zzp(t, j2), zzbn(i4));
                        }
                        break;
                }
                i4 += 3;
                i3 = 267386880;
            }
            return iZzb + zza(this.zzcbn, t);
        }
        Unsafe unsafe2 = zzcay;
        int iZzb2 = 0;
        int i8 = -1;
        int i9 = 0;
        for (int i10 = 0; i10 < this.zzcaz.length; i10 += 3) {
            int iZzbq2 = zzbq(i10);
            int[] iArr = this.zzcaz;
            int i11 = iArr[i10];
            int i12 = (iZzbq2 & 267386880) >>> 20;
            if (i12 <= 17) {
                i = iArr[i10 + 2];
                int i13 = i & 1048575;
                i2 = 1 << (i >>> 20);
                if (i13 != i8) {
                    i9 = unsafe2.getInt(t, i13);
                } else {
                    i13 = i8;
                }
                i8 = i13;
            } else if (!this.zzcbh || i12 < zzvg.DOUBLE_LIST_PACKED.m362id() || i12 > zzvg.SINT64_LIST_PACKED.m362id()) {
                i = 0;
                i2 = 0;
            } else {
                i = this.zzcaz[i10 + 2] & 1048575;
                i2 = 0;
            }
            long j3 = iZzbq2 & 1048575;
            switch (i12) {
                case 0:
                    j = 0;
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzb(i11, 0.0d);
                    }
                    break;
                case 1:
                    j = 0;
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzb(i11, 0.0f);
                    }
                    break;
                case 2:
                    j = 0;
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzd(i11, unsafe2.getLong(t, j3));
                    }
                    break;
                case 3:
                    j = 0;
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zze(i11, unsafe2.getLong(t, j3));
                    }
                    break;
                case 4:
                    j = 0;
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzh(i11, unsafe2.getInt(t, j3));
                    }
                    break;
                case 5:
                    if ((i9 & i2) != 0) {
                        j = 0;
                        iZzb2 += zzut.zzg(i11, 0L);
                    } else {
                        j = 0;
                    }
                    break;
                case 6:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzk(i11, 0);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 7:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzc(i11, true);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 8:
                    if ((i9 & i2) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        if (object instanceof zzud) {
                            iZzb2 += zzut.zzc(i11, (zzud) object);
                            j = 0;
                        } else {
                            iZzb2 += zzut.zzc(i11, (String) object);
                            j = 0;
                        }
                    } else {
                        j = 0;
                    }
                    break;
                case 9:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzxl.zzc(i11, unsafe2.getObject(t, j3), zzbn(i10));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 10:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzc(i11, (zzud) unsafe2.getObject(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 11:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzi(i11, unsafe2.getInt(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 12:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzm(i11, unsafe2.getInt(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 13:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzl(i11, 0);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 14:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzh(i11, 0L);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 15:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzj(i11, unsafe2.getInt(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 16:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzf(i11, unsafe2.getLong(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 17:
                    if ((i9 & i2) != 0) {
                        iZzb2 += zzut.zzc(i11, (zzwt) unsafe2.getObject(t, j3), zzbn(i10));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 18:
                    iZzb2 += zzxl.zzw(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 19:
                    iZzb2 += zzxl.zzv(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 20:
                    iZzb2 += zzxl.zzo(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 21:
                    iZzb2 += zzxl.zzp(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 22:
                    iZzb2 += zzxl.zzs(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 23:
                    iZzb2 += zzxl.zzw(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 24:
                    iZzb2 += zzxl.zzv(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 25:
                    iZzb2 += zzxl.zzx(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 26:
                    iZzb2 += zzxl.zzc(i11, (List) unsafe2.getObject(t, j3));
                    j = 0;
                    break;
                case 27:
                    iZzb2 += zzxl.zzc(i11, (List<?>) unsafe2.getObject(t, j3), zzbn(i10));
                    j = 0;
                    break;
                case 28:
                    iZzb2 += zzxl.zzd(i11, (List) unsafe2.getObject(t, j3));
                    j = 0;
                    break;
                case 29:
                    iZzb2 += zzxl.zzt(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 30:
                    iZzb2 += zzxl.zzr(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 31:
                    iZzb2 += zzxl.zzv(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 32:
                    iZzb2 += zzxl.zzw(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 33:
                    iZzb2 += zzxl.zzu(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 34:
                    iZzb2 += zzxl.zzq(i11, (List) unsafe2.getObject(t, j3), false);
                    j = 0;
                    break;
                case 35:
                    int iZzaf4 = zzxl.zzaf((List) unsafe2.getObject(t, j3));
                    if (iZzaf4 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzaf4);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzaf4) + iZzaf4;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 36:
                    int iZzae4 = zzxl.zzae((List) unsafe2.getObject(t, j3));
                    if (iZzae4 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzae4);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzae4) + iZzae4;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 37:
                    int iZzx2 = zzxl.zzx((List<Long>) unsafe2.getObject(t, j3));
                    if (iZzx2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzx2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzx2) + iZzx2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 38:
                    int iZzy2 = zzxl.zzy((List) unsafe2.getObject(t, j3));
                    if (iZzy2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzy2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzy2) + iZzy2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 39:
                    int iZzab2 = zzxl.zzab((List) unsafe2.getObject(t, j3));
                    if (iZzab2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzab2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzab2) + iZzab2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 40:
                    int iZzaf5 = zzxl.zzaf((List) unsafe2.getObject(t, j3));
                    if (iZzaf5 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzaf5);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzaf5) + iZzaf5;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 41:
                    int iZzae5 = zzxl.zzae((List) unsafe2.getObject(t, j3));
                    if (iZzae5 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzae5);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzae5) + iZzae5;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 42:
                    int iZzag2 = zzxl.zzag((List) unsafe2.getObject(t, j3));
                    if (iZzag2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzag2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzag2) + iZzag2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 43:
                    int iZzac2 = zzxl.zzac((List) unsafe2.getObject(t, j3));
                    if (iZzac2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzac2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzac2) + iZzac2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 44:
                    int iZzaa2 = zzxl.zzaa((List) unsafe2.getObject(t, j3));
                    if (iZzaa2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzaa2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzaa2) + iZzaa2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 45:
                    int iZzae6 = zzxl.zzae((List) unsafe2.getObject(t, j3));
                    if (iZzae6 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzae6);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzae6) + iZzae6;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 46:
                    int iZzaf6 = zzxl.zzaf((List) unsafe2.getObject(t, j3));
                    if (iZzaf6 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzaf6);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzaf6) + iZzaf6;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 47:
                    int iZzad2 = zzxl.zzad((List) unsafe2.getObject(t, j3));
                    if (iZzad2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzad2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzad2) + iZzad2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 48:
                    int iZzz2 = zzxl.zzz((List) unsafe2.getObject(t, j3));
                    if (iZzz2 > 0) {
                        if (this.zzcbh) {
                            unsafe2.putInt(t, i, iZzz2);
                        }
                        iZzb2 += zzut.zzbb(i11) + zzut.zzbd(iZzz2) + iZzz2;
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 49:
                    iZzb2 += zzxl.zzd(i11, (List) unsafe2.getObject(t, j3), zzbn(i10));
                    j = 0;
                    break;
                case 50:
                    iZzb2 += this.zzcbp.zzb(i11, unsafe2.getObject(t, j3), zzbo(i10));
                    j = 0;
                    break;
                case 51:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzb(i11, 0.0d);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 52:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzb(i11, 0.0f);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 53:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzd(i11, zzi(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 54:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zze(i11, zzi(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 55:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzh(i11, zzh(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 56:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzg(i11, 0L);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 57:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzk(i11, 0);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 58:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzc(i11, true);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 59:
                    if (zza(t, i11, i10)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        if (object2 instanceof zzud) {
                            iZzb2 += zzut.zzc(i11, (zzud) object2);
                            j = 0;
                        } else {
                            iZzb2 += zzut.zzc(i11, (String) object2);
                            j = 0;
                        }
                    } else {
                        j = 0;
                    }
                    break;
                case 60:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzxl.zzc(i11, unsafe2.getObject(t, j3), zzbn(i10));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 61:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzc(i11, (zzud) unsafe2.getObject(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 62:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzi(i11, zzh(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 63:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzm(i11, zzh(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 64:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzl(i11, 0);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 65:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzh(i11, 0L);
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 66:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzj(i11, zzh(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 67:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzf(i11, zzi(t, j3));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                case 68:
                    if (zza(t, i11, i10)) {
                        iZzb2 += zzut.zzc(i11, (zzwt) unsafe2.getObject(t, j3), zzbn(i10));
                        j = 0;
                    } else {
                        j = 0;
                    }
                    break;
                default:
                    j = 0;
                    break;
            }
        }
        int iZza = iZzb2 + zza(this.zzcbn, t);
        return this.zzcbe ? iZza + this.zzcbo.zzs(t).zzvu() : iZza;
    }

    private static <UT, UB> int zza(zzyb<UT, UB> zzybVar, T t) {
        return zzybVar.zzae(zzybVar.zzah(t));
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zzyh.zzp(obj, j);
    }

    /* JADX WARN: Code duplicated, block: B:178:0x0546  */
    /* JADX WARN: Code duplicated, block: B:9:0x0030  */
    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zza(T t, zzyw zzywVar) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        Iterator itDescendingIterator;
        Map.Entry<?, ?> entry2;
        if (zzywVar.zzvj() == zzvm.zze.zzbzf) {
            zza(this.zzcbn, t, zzywVar);
            if (this.zzcbe) {
                zzvd<T> zzvdVarZzs = this.zzcbo.zzs(t);
                if (zzvdVarZzs.isEmpty()) {
                    itDescendingIterator = null;
                    entry2 = null;
                } else {
                    itDescendingIterator = zzvdVarZzs.descendingIterator();
                    entry2 = (Map.Entry) itDescendingIterator.next();
                }
            } else {
                itDescendingIterator = null;
                entry2 = null;
            }
            for (int length = this.zzcaz.length - 3; length >= 0; length -= 3) {
                int iZzbq = zzbq(length);
                int i = this.zzcaz[length];
                while (entry2 != null && this.zzcbo.zzb(entry2) > i) {
                    this.zzcbo.zza(zzywVar, entry2);
                    entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
                }
                switch ((iZzbq & 267386880) >>> 20) {
                    case 0:
                        if (zzb(t, length)) {
                            zzywVar.zza(i, zzyh.zzo(t, iZzbq & 1048575));
                        }
                        break;
                    case 1:
                        if (zzb(t, length)) {
                            zzywVar.zza(i, zzyh.zzn(t, iZzbq & 1048575));
                        }
                        break;
                    case 2:
                        if (zzb(t, length)) {
                            zzywVar.zzi(i, zzyh.zzl(t, iZzbq & 1048575));
                        }
                        break;
                    case 3:
                        if (zzb(t, length)) {
                            zzywVar.zza(i, zzyh.zzl(t, iZzbq & 1048575));
                        }
                        break;
                    case 4:
                        if (zzb(t, length)) {
                            zzywVar.zzd(i, zzyh.zzk(t, iZzbq & 1048575));
                        }
                        break;
                    case 5:
                        if (zzb(t, length)) {
                            zzywVar.zzc(i, zzyh.zzl(t, iZzbq & 1048575));
                        }
                        break;
                    case 6:
                        if (zzb(t, length)) {
                            zzywVar.zzg(i, zzyh.zzk(t, iZzbq & 1048575));
                        }
                        break;
                    case 7:
                        if (zzb(t, length)) {
                            zzywVar.zzb(i, zzyh.zzm(t, iZzbq & 1048575));
                        }
                        break;
                    case 8:
                        if (zzb(t, length)) {
                            zza(i, zzyh.zzp(t, iZzbq & 1048575), zzywVar);
                        }
                        break;
                    case 9:
                        if (zzb(t, length)) {
                            zzywVar.zza(i, zzyh.zzp(t, iZzbq & 1048575), zzbn(length));
                        }
                        break;
                    case 10:
                        if (zzb(t, length)) {
                            zzywVar.zza(i, (zzud) zzyh.zzp(t, iZzbq & 1048575));
                        }
                        break;
                    case 11:
                        if (zzb(t, length)) {
                            zzywVar.zze(i, zzyh.zzk(t, iZzbq & 1048575));
                        }
                        break;
                    case 12:
                        if (zzb(t, length)) {
                            zzywVar.zzo(i, zzyh.zzk(t, iZzbq & 1048575));
                        }
                        break;
                    case 13:
                        if (zzb(t, length)) {
                            zzywVar.zzn(i, zzyh.zzk(t, iZzbq & 1048575));
                        }
                        break;
                    case 14:
                        if (zzb(t, length)) {
                            zzywVar.zzj(i, zzyh.zzl(t, iZzbq & 1048575));
                        }
                        break;
                    case 15:
                        if (zzb(t, length)) {
                            zzywVar.zzf(i, zzyh.zzk(t, iZzbq & 1048575));
                        }
                        break;
                    case 16:
                        if (zzb(t, length)) {
                            zzywVar.zzb(i, zzyh.zzl(t, iZzbq & 1048575));
                        }
                        break;
                    case 17:
                        if (zzb(t, length)) {
                            zzywVar.zzb(i, zzyh.zzp(t, iZzbq & 1048575), zzbn(length));
                        }
                        break;
                    case 18:
                        zzxl.zza(this.zzcaz[length], (List<Double>) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 19:
                        zzxl.zzb(this.zzcaz[length], (List<Float>) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 20:
                        zzxl.zzc(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 21:
                        zzxl.zzd(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 22:
                        zzxl.zzh(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 23:
                        zzxl.zzf(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 24:
                        zzxl.zzk(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 25:
                        zzxl.zzn(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 26:
                        zzxl.zza(this.zzcaz[length], (List<String>) zzyh.zzp(t, iZzbq & 1048575), zzywVar);
                        break;
                    case 27:
                        zzxl.zza(this.zzcaz[length], (List<?>) zzyh.zzp(t, iZzbq & 1048575), zzywVar, zzbn(length));
                        break;
                    case 28:
                        zzxl.zzb(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar);
                        break;
                    case 29:
                        zzxl.zzi(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 30:
                        zzxl.zzm(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 31:
                        zzxl.zzl(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 32:
                        zzxl.zzg(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 33:
                        zzxl.zzj(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 34:
                        zzxl.zze(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, false);
                        break;
                    case 35:
                        zzxl.zza(this.zzcaz[length], (List<Double>) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 36:
                        zzxl.zzb(this.zzcaz[length], (List<Float>) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 37:
                        zzxl.zzc(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 38:
                        zzxl.zzd(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 39:
                        zzxl.zzh(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 40:
                        zzxl.zzf(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 41:
                        zzxl.zzk(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 42:
                        zzxl.zzn(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 43:
                        zzxl.zzi(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 44:
                        zzxl.zzm(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 45:
                        zzxl.zzl(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 46:
                        zzxl.zzg(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 47:
                        zzxl.zzj(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 48:
                        zzxl.zze(this.zzcaz[length], (List) zzyh.zzp(t, iZzbq & 1048575), zzywVar, true);
                        break;
                    case 49:
                        zzxl.zzb(this.zzcaz[length], (List<?>) zzyh.zzp(t, iZzbq & 1048575), zzywVar, zzbn(length));
                        break;
                    case 50:
                        zza(zzywVar, i, zzyh.zzp(t, iZzbq & 1048575), length);
                        break;
                    case 51:
                        if (zza(t, i, length)) {
                            zzywVar.zza(i, zzf(t, iZzbq & 1048575));
                        }
                        break;
                    case 52:
                        if (zza(t, i, length)) {
                            zzywVar.zza(i, zzg(t, iZzbq & 1048575));
                        }
                        break;
                    case 53:
                        if (zza(t, i, length)) {
                            zzywVar.zzi(i, zzi(t, iZzbq & 1048575));
                        }
                        break;
                    case 54:
                        if (zza(t, i, length)) {
                            zzywVar.zza(i, zzi(t, iZzbq & 1048575));
                        }
                        break;
                    case 55:
                        if (zza(t, i, length)) {
                            zzywVar.zzd(i, zzh(t, iZzbq & 1048575));
                        }
                        break;
                    case 56:
                        if (zza(t, i, length)) {
                            zzywVar.zzc(i, zzi(t, iZzbq & 1048575));
                        }
                        break;
                    case 57:
                        if (zza(t, i, length)) {
                            zzywVar.zzg(i, zzh(t, iZzbq & 1048575));
                        }
                        break;
                    case 58:
                        if (zza(t, i, length)) {
                            zzywVar.zzb(i, zzj(t, iZzbq & 1048575));
                        }
                        break;
                    case 59:
                        if (zza(t, i, length)) {
                            zza(i, zzyh.zzp(t, iZzbq & 1048575), zzywVar);
                        }
                        break;
                    case 60:
                        if (zza(t, i, length)) {
                            zzywVar.zza(i, zzyh.zzp(t, iZzbq & 1048575), zzbn(length));
                        }
                        break;
                    case 61:
                        if (zza(t, i, length)) {
                            zzywVar.zza(i, (zzud) zzyh.zzp(t, iZzbq & 1048575));
                        }
                        break;
                    case 62:
                        if (zza(t, i, length)) {
                            zzywVar.zze(i, zzh(t, iZzbq & 1048575));
                        }
                        break;
                    case 63:
                        if (zza(t, i, length)) {
                            zzywVar.zzo(i, zzh(t, iZzbq & 1048575));
                        }
                        break;
                    case 64:
                        if (zza(t, i, length)) {
                            zzywVar.zzn(i, zzh(t, iZzbq & 1048575));
                        }
                        break;
                    case 65:
                        if (zza(t, i, length)) {
                            zzywVar.zzj(i, zzi(t, iZzbq & 1048575));
                        }
                        break;
                    case 66:
                        if (zza(t, i, length)) {
                            zzywVar.zzf(i, zzh(t, iZzbq & 1048575));
                        }
                        break;
                    case 67:
                        if (zza(t, i, length)) {
                            zzywVar.zzb(i, zzi(t, iZzbq & 1048575));
                        }
                        break;
                    case 68:
                        if (zza(t, i, length)) {
                            zzywVar.zzb(i, zzyh.zzp(t, iZzbq & 1048575), zzbn(length));
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzcbo.zza(zzywVar, entry2);
                entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            return;
        }
        if (this.zzcbg) {
            if (this.zzcbe) {
                zzvd<T> zzvdVarZzs2 = this.zzcbo.zzs(t);
                if (zzvdVarZzs2.isEmpty()) {
                    it = null;
                    entry = null;
                } else {
                    it = zzvdVarZzs2.iterator();
                    entry = (Map.Entry) it.next();
                }
            } else {
                it = null;
                entry = null;
            }
            int length2 = this.zzcaz.length;
            Map.Entry<?, ?> entry3 = entry;
            for (int i2 = 0; i2 < length2; i2 += 3) {
                int iZzbq2 = zzbq(i2);
                int i3 = this.zzcaz[i2];
                while (entry3 != null && this.zzcbo.zzb(entry3) <= i3) {
                    this.zzcbo.zza(zzywVar, entry3);
                    entry3 = it.hasNext() ? (Map.Entry) it.next() : null;
                }
                switch ((iZzbq2 & 267386880) >>> 20) {
                    case 0:
                        if (zzb(t, i2)) {
                            zzywVar.zza(i3, zzyh.zzo(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 1:
                        if (zzb(t, i2)) {
                            zzywVar.zza(i3, zzyh.zzn(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 2:
                        if (zzb(t, i2)) {
                            zzywVar.zzi(i3, zzyh.zzl(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 3:
                        if (zzb(t, i2)) {
                            zzywVar.zza(i3, zzyh.zzl(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 4:
                        if (zzb(t, i2)) {
                            zzywVar.zzd(i3, zzyh.zzk(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 5:
                        if (zzb(t, i2)) {
                            zzywVar.zzc(i3, zzyh.zzl(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 6:
                        if (zzb(t, i2)) {
                            zzywVar.zzg(i3, zzyh.zzk(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 7:
                        if (zzb(t, i2)) {
                            zzywVar.zzb(i3, zzyh.zzm(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 8:
                        if (zzb(t, i2)) {
                            zza(i3, zzyh.zzp(t, iZzbq2 & 1048575), zzywVar);
                        }
                        break;
                    case 9:
                        if (zzb(t, i2)) {
                            zzywVar.zza(i3, zzyh.zzp(t, iZzbq2 & 1048575), zzbn(i2));
                        }
                        break;
                    case 10:
                        if (zzb(t, i2)) {
                            zzywVar.zza(i3, (zzud) zzyh.zzp(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 11:
                        if (zzb(t, i2)) {
                            zzywVar.zze(i3, zzyh.zzk(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 12:
                        if (zzb(t, i2)) {
                            zzywVar.zzo(i3, zzyh.zzk(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 13:
                        if (zzb(t, i2)) {
                            zzywVar.zzn(i3, zzyh.zzk(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 14:
                        if (zzb(t, i2)) {
                            zzywVar.zzj(i3, zzyh.zzl(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 15:
                        if (zzb(t, i2)) {
                            zzywVar.zzf(i3, zzyh.zzk(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 16:
                        if (zzb(t, i2)) {
                            zzywVar.zzb(i3, zzyh.zzl(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 17:
                        if (zzb(t, i2)) {
                            zzywVar.zzb(i3, zzyh.zzp(t, iZzbq2 & 1048575), zzbn(i2));
                        }
                        break;
                    case 18:
                        zzxl.zza(this.zzcaz[i2], (List<Double>) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 19:
                        zzxl.zzb(this.zzcaz[i2], (List<Float>) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 20:
                        zzxl.zzc(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 21:
                        zzxl.zzd(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 22:
                        zzxl.zzh(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 23:
                        zzxl.zzf(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 24:
                        zzxl.zzk(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 25:
                        zzxl.zzn(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 26:
                        zzxl.zza(this.zzcaz[i2], (List<String>) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar);
                        break;
                    case 27:
                        zzxl.zza(this.zzcaz[i2], (List<?>) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, zzbn(i2));
                        break;
                    case 28:
                        zzxl.zzb(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar);
                        break;
                    case 29:
                        zzxl.zzi(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 30:
                        zzxl.zzm(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 31:
                        zzxl.zzl(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 32:
                        zzxl.zzg(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 33:
                        zzxl.zzj(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 34:
                        zzxl.zze(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, false);
                        break;
                    case 35:
                        zzxl.zza(this.zzcaz[i2], (List<Double>) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 36:
                        zzxl.zzb(this.zzcaz[i2], (List<Float>) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 37:
                        zzxl.zzc(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 38:
                        zzxl.zzd(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 39:
                        zzxl.zzh(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 40:
                        zzxl.zzf(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 41:
                        zzxl.zzk(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 42:
                        zzxl.zzn(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 43:
                        zzxl.zzi(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 44:
                        zzxl.zzm(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 45:
                        zzxl.zzl(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 46:
                        zzxl.zzg(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 47:
                        zzxl.zzj(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 48:
                        zzxl.zze(this.zzcaz[i2], (List) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, true);
                        break;
                    case 49:
                        zzxl.zzb(this.zzcaz[i2], (List<?>) zzyh.zzp(t, iZzbq2 & 1048575), zzywVar, zzbn(i2));
                        break;
                    case 50:
                        zza(zzywVar, i3, zzyh.zzp(t, iZzbq2 & 1048575), i2);
                        break;
                    case 51:
                        if (zza(t, i3, i2)) {
                            zzywVar.zza(i3, zzf(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 52:
                        if (zza(t, i3, i2)) {
                            zzywVar.zza(i3, zzg(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 53:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzi(i3, zzi(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 54:
                        if (zza(t, i3, i2)) {
                            zzywVar.zza(i3, zzi(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 55:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzd(i3, zzh(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 56:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzc(i3, zzi(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 57:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzg(i3, zzh(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 58:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzb(i3, zzj(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 59:
                        if (zza(t, i3, i2)) {
                            zza(i3, zzyh.zzp(t, iZzbq2 & 1048575), zzywVar);
                        }
                        break;
                    case 60:
                        if (zza(t, i3, i2)) {
                            zzywVar.zza(i3, zzyh.zzp(t, iZzbq2 & 1048575), zzbn(i2));
                        }
                        break;
                    case 61:
                        if (zza(t, i3, i2)) {
                            zzywVar.zza(i3, (zzud) zzyh.zzp(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 62:
                        if (zza(t, i3, i2)) {
                            zzywVar.zze(i3, zzh(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 63:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzo(i3, zzh(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 64:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzn(i3, zzh(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 65:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzj(i3, zzi(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 66:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzf(i3, zzh(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 67:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzb(i3, zzi(t, iZzbq2 & 1048575));
                        }
                        break;
                    case 68:
                        if (zza(t, i3, i2)) {
                            zzywVar.zzb(i3, zzyh.zzp(t, iZzbq2 & 1048575), zzbn(i2));
                        }
                        break;
                }
            }
            while (entry3 != null) {
                this.zzcbo.zza(zzywVar, entry3);
                entry3 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            zza(this.zzcbn, t, zzywVar);
            return;
        }
        zzb(t, zzywVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private final void zzb(T t, zzyw zzywVar) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        int i;
        if (this.zzcbe) {
            zzvd<T> zzvdVarZzs = this.zzcbo.zzs(t);
            if (zzvdVarZzs.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzvdVarZzs.iterator();
                entry = (Map.Entry) it.next();
            }
        } else {
            it = null;
            entry = null;
        }
        int i2 = -1;
        int length = this.zzcaz.length;
        Unsafe unsafe = zzcay;
        Map.Entry<?, ?> entry2 = entry;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iZzbq = zzbq(i4);
            int[] iArr = this.zzcaz;
            int i5 = iArr[i4];
            int i6 = (267386880 & iZzbq) >>> 20;
            if (this.zzcbg || i6 > 17) {
                entry2 = entry2;
                i = 0;
            } else {
                int i7 = iArr[i4 + 2];
                int i8 = i7 & 1048575;
                if (i8 != i2) {
                    i3 = unsafe.getInt(t, i8);
                } else {
                    i8 = i2;
                }
                i = 1 << (i7 >>> 20);
                i2 = i8;
                entry2 = entry2;
            }
            while (entry2 != null && this.zzcbo.zzb(entry2) <= i5) {
                this.zzcbo.zza(zzywVar, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzbq & 1048575;
            switch (i6) {
                case 0:
                    if ((i3 & i) != 0) {
                        zzywVar.zza(i5, zzyh.zzo(t, j));
                    }
                    break;
                case 1:
                    if ((i3 & i) != 0) {
                        zzywVar.zza(i5, zzyh.zzn(t, j));
                    }
                    break;
                case 2:
                    if ((i3 & i) != 0) {
                        zzywVar.zzi(i5, unsafe.getLong(t, j));
                    }
                    break;
                case 3:
                    if ((i3 & i) != 0) {
                        zzywVar.zza(i5, unsafe.getLong(t, j));
                    }
                    break;
                case 4:
                    if ((i3 & i) != 0) {
                        zzywVar.zzd(i5, unsafe.getInt(t, j));
                    }
                    break;
                case 5:
                    if ((i3 & i) != 0) {
                        zzywVar.zzc(i5, unsafe.getLong(t, j));
                    }
                    break;
                case 6:
                    if ((i3 & i) != 0) {
                        zzywVar.zzg(i5, unsafe.getInt(t, j));
                    }
                    break;
                case 7:
                    if ((i3 & i) != 0) {
                        zzywVar.zzb(i5, zzyh.zzm(t, j));
                    }
                    break;
                case 8:
                    if ((i3 & i) != 0) {
                        zza(i5, unsafe.getObject(t, j), zzywVar);
                    }
                    break;
                case 9:
                    if ((i3 & i) != 0) {
                        zzywVar.zza(i5, unsafe.getObject(t, j), zzbn(i4));
                    }
                    break;
                case 10:
                    if ((i3 & i) != 0) {
                        zzywVar.zza(i5, (zzud) unsafe.getObject(t, j));
                    }
                    break;
                case 11:
                    if ((i3 & i) != 0) {
                        zzywVar.zze(i5, unsafe.getInt(t, j));
                    }
                    break;
                case 12:
                    if ((i3 & i) != 0) {
                        zzywVar.zzo(i5, unsafe.getInt(t, j));
                    }
                    break;
                case 13:
                    if ((i3 & i) != 0) {
                        zzywVar.zzn(i5, unsafe.getInt(t, j));
                    }
                    break;
                case 14:
                    if ((i3 & i) != 0) {
                        zzywVar.zzj(i5, unsafe.getLong(t, j));
                    }
                    break;
                case 15:
                    if ((i3 & i) != 0) {
                        zzywVar.zzf(i5, unsafe.getInt(t, j));
                    }
                    break;
                case 16:
                    if ((i3 & i) != 0) {
                        zzywVar.zzb(i5, unsafe.getLong(t, j));
                    }
                    break;
                case 17:
                    if ((i3 & i) != 0) {
                        zzywVar.zzb(i5, unsafe.getObject(t, j), zzbn(i4));
                    }
                    break;
                case 18:
                    zzxl.zza(this.zzcaz[i4], (List<Double>) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 19:
                    zzxl.zzb(this.zzcaz[i4], (List<Float>) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 20:
                    zzxl.zzc(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 21:
                    zzxl.zzd(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 22:
                    zzxl.zzh(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 23:
                    zzxl.zzf(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 24:
                    zzxl.zzk(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 25:
                    zzxl.zzn(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 26:
                    zzxl.zza(this.zzcaz[i4], (List<String>) unsafe.getObject(t, j), zzywVar);
                    break;
                case 27:
                    zzxl.zza(this.zzcaz[i4], (List<?>) unsafe.getObject(t, j), zzywVar, zzbn(i4));
                    break;
                case 28:
                    zzxl.zzb(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar);
                    break;
                case 29:
                    zzxl.zzi(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 30:
                    zzxl.zzm(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 31:
                    zzxl.zzl(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 32:
                    zzxl.zzg(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 33:
                    zzxl.zzj(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 34:
                    zzxl.zze(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, false);
                    break;
                case 35:
                    zzxl.zza(this.zzcaz[i4], (List<Double>) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 36:
                    zzxl.zzb(this.zzcaz[i4], (List<Float>) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 37:
                    zzxl.zzc(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 38:
                    zzxl.zzd(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 39:
                    zzxl.zzh(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 40:
                    zzxl.zzf(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 41:
                    zzxl.zzk(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 42:
                    zzxl.zzn(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 43:
                    zzxl.zzi(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 44:
                    zzxl.zzm(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 45:
                    zzxl.zzl(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 46:
                    zzxl.zzg(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 47:
                    zzxl.zzj(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 48:
                    zzxl.zze(this.zzcaz[i4], (List) unsafe.getObject(t, j), zzywVar, true);
                    break;
                case 49:
                    zzxl.zzb(this.zzcaz[i4], (List<?>) unsafe.getObject(t, j), zzywVar, zzbn(i4));
                    break;
                case 50:
                    zza(zzywVar, i5, unsafe.getObject(t, j), i4);
                    break;
                case 51:
                    if (zza(t, i5, i4)) {
                        zzywVar.zza(i5, zzf(t, j));
                    }
                    break;
                case 52:
                    if (zza(t, i5, i4)) {
                        zzywVar.zza(i5, zzg(t, j));
                    }
                    break;
                case 53:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzi(i5, zzi(t, j));
                    }
                    break;
                case 54:
                    if (zza(t, i5, i4)) {
                        zzywVar.zza(i5, zzi(t, j));
                    }
                    break;
                case 55:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzd(i5, zzh(t, j));
                    }
                    break;
                case 56:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzc(i5, zzi(t, j));
                    }
                    break;
                case 57:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzg(i5, zzh(t, j));
                    }
                    break;
                case 58:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzb(i5, zzj(t, j));
                    }
                    break;
                case 59:
                    if (zza(t, i5, i4)) {
                        zza(i5, unsafe.getObject(t, j), zzywVar);
                    }
                    break;
                case 60:
                    if (zza(t, i5, i4)) {
                        zzywVar.zza(i5, unsafe.getObject(t, j), zzbn(i4));
                    }
                    break;
                case 61:
                    if (zza(t, i5, i4)) {
                        zzywVar.zza(i5, (zzud) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (zza(t, i5, i4)) {
                        zzywVar.zze(i5, zzh(t, j));
                    }
                    break;
                case 63:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzo(i5, zzh(t, j));
                    }
                    break;
                case 64:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzn(i5, zzh(t, j));
                    }
                    break;
                case 65:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzj(i5, zzi(t, j));
                    }
                    break;
                case 66:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzf(i5, zzh(t, j));
                    }
                    break;
                case 67:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzb(i5, zzi(t, j));
                    }
                    break;
                case 68:
                    if (zza(t, i5, i4)) {
                        zzywVar.zzb(i5, unsafe.getObject(t, j), zzbn(i4));
                    }
                    break;
            }
        }
        Map.Entry<?, ?> entry3 = entry2;
        while (entry3 != null) {
            this.zzcbo.zza(zzywVar, entry3);
            entry3 = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zza(this.zzcbn, t, zzywVar);
    }

    private final <K, V> void zza(zzyw zzywVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzywVar.zza(i, this.zzcbp.zzad(zzbo(i2)), this.zzcbp.zzz(obj));
        }
    }

    private static <UT, UB> void zza(zzyb<UT, UB> zzybVar, T t, zzyw zzywVar) throws IOException {
        zzybVar.zza(zzybVar.zzah(t), zzywVar);
    }

    /* JADX WARN: Code duplicated, block: B:178:0x05de A[LOOP:6: B:176:0x05da->B:178:0x05de, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:180:0x05eb  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zza(T t, zzxi zzxiVar, zzuz zzuzVar) throws IOException {
        int i;
        if (zzuzVar == null) {
            throw new NullPointerException();
        }
        zzyb<?, ?> zzybVar = this.zzcbn;
        zzva<?> zzvaVar = this.zzcbo;
        Object obj = null;
        Object objZza = null;
        while (true) {
            try {
                int iZzve = zzxiVar.zzve();
                int i2 = -1;
                if (iZzve >= this.zzcbb && iZzve <= this.zzcbc) {
                    int i3 = 0;
                    int length = (this.zzcaz.length / 3) - 1;
                    while (i3 <= length) {
                        int i4 = (length + i3) >>> 1;
                        int i5 = i4 * 3;
                        int i6 = this.zzcaz[i5];
                        if (iZzve == i6) {
                            i2 = i5;
                        } else if (iZzve < i6) {
                            length = i4 - 1;
                        } else {
                            i3 = i4 + 1;
                        }
                    }
                }
                if (i2 >= 0) {
                    int iZzbq = zzbq(i2);
                    switch ((267386880 & iZzbq) >>> 20) {
                        case 0:
                            zzyh.zza(t, iZzbq & 1048575, zzxiVar.readDouble());
                            zzc(t, i2);
                            continue;
                        case 1:
                            zzyh.zza((Object) t, iZzbq & 1048575, zzxiVar.readFloat());
                            zzc(t, i2);
                            continue;
                        case 2:
                            zzyh.zza((Object) t, iZzbq & 1048575, zzxiVar.zzui());
                            zzc(t, i2);
                            continue;
                        case 3:
                            zzyh.zza((Object) t, iZzbq & 1048575, zzxiVar.zzuh());
                            zzc(t, i2);
                            continue;
                        case 4:
                            zzyh.zzb(t, iZzbq & 1048575, zzxiVar.zzuj());
                            zzc(t, i2);
                            continue;
                        case 5:
                            zzyh.zza((Object) t, iZzbq & 1048575, zzxiVar.zzuk());
                            zzc(t, i2);
                            continue;
                        case 6:
                            zzyh.zzb(t, iZzbq & 1048575, zzxiVar.zzul());
                            zzc(t, i2);
                            continue;
                        case 7:
                            zzyh.zza(t, iZzbq & 1048575, zzxiVar.zzum());
                            zzc(t, i2);
                            continue;
                        case 8:
                            zza(t, iZzbq, zzxiVar);
                            zzc(t, i2);
                            continue;
                        case 9:
                            if (zzb(t, i2)) {
                                long j = iZzbq & 1048575;
                                zzyh.zza(t, j, zzvo.zzb(zzyh.zzp(t, j), zzxiVar.zza(zzbn(i2), zzuzVar)));
                            } else {
                                zzyh.zza(t, iZzbq & 1048575, zzxiVar.zza(zzbn(i2), zzuzVar));
                                zzc(t, i2);
                                continue;
                            }
                            break;
                        case 10:
                            zzyh.zza(t, iZzbq & 1048575, zzxiVar.zzuo());
                            zzc(t, i2);
                            continue;
                        case 11:
                            zzyh.zzb(t, iZzbq & 1048575, zzxiVar.zzup());
                            zzc(t, i2);
                            continue;
                        case 12:
                            int iZzuq = zzxiVar.zzuq();
                            zzvr zzvrVarZzbp = zzbp(i2);
                            if (zzvrVarZzbp == null || zzvrVarZzbp.zzb(iZzuq)) {
                                zzyh.zzb(t, iZzbq & 1048575, iZzuq);
                                zzc(t, i2);
                                continue;
                            } else {
                                objZza = zzxl.zza(iZzve, iZzuq, objZza, (zzyb<UT, Object>) zzybVar);
                            }
                            break;
                        case 13:
                            zzyh.zzb(t, iZzbq & 1048575, zzxiVar.zzur());
                            zzc(t, i2);
                            continue;
                        case 14:
                            zzyh.zza((Object) t, iZzbq & 1048575, zzxiVar.zzus());
                            zzc(t, i2);
                            continue;
                        case 15:
                            zzyh.zzb(t, iZzbq & 1048575, zzxiVar.zzut());
                            zzc(t, i2);
                            continue;
                        case 16:
                            zzyh.zza((Object) t, iZzbq & 1048575, zzxiVar.zzuu());
                            zzc(t, i2);
                            continue;
                        case 17:
                            if (zzb(t, i2)) {
                                long j2 = iZzbq & 1048575;
                                zzyh.zza(t, j2, zzvo.zzb(zzyh.zzp(t, j2), zzxiVar.zzb(zzbn(i2), zzuzVar)));
                            } else {
                                zzyh.zza(t, iZzbq & 1048575, zzxiVar.zzb(zzbn(i2), zzuzVar));
                                zzc(t, i2);
                                continue;
                            }
                            break;
                        case 18:
                            zzxiVar.zzh(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 19:
                            zzxiVar.zzi(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 20:
                            zzxiVar.zzk(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 21:
                            zzxiVar.zzj(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 22:
                            zzxiVar.zzl(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 23:
                            zzxiVar.zzm(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 24:
                            zzxiVar.zzn(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 25:
                            zzxiVar.zzo(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 26:
                            if (zzbs(iZzbq)) {
                                zzxiVar.zzp(this.zzcbm.zza(t, iZzbq & 1048575));
                            } else {
                                zzxiVar.readStringList(this.zzcbm.zza(t, iZzbq & 1048575));
                                continue;
                            }
                            break;
                        case 27:
                            zzxiVar.zza(this.zzcbm.zza(t, iZzbq & 1048575), zzbn(i2), zzuzVar);
                            continue;
                        case 28:
                            zzxiVar.zzq(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 29:
                            zzxiVar.zzr(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 30:
                            List<Integer> listZza = this.zzcbm.zza(t, iZzbq & 1048575);
                            zzxiVar.zzs(listZza);
                            objZza = zzxl.zza(iZzve, listZza, zzbp(i2), objZza, zzybVar);
                            continue;
                        case 31:
                            zzxiVar.zzt(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 32:
                            zzxiVar.zzu(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 33:
                            zzxiVar.zzv(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 34:
                            zzxiVar.zzw(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 35:
                            zzxiVar.zzh(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 36:
                            zzxiVar.zzi(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 37:
                            zzxiVar.zzk(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 38:
                            zzxiVar.zzj(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 39:
                            zzxiVar.zzl(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 40:
                            zzxiVar.zzm(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 41:
                            zzxiVar.zzn(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 42:
                            zzxiVar.zzo(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 43:
                            zzxiVar.zzr(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 44:
                            List<Integer> listZza2 = this.zzcbm.zza(t, iZzbq & 1048575);
                            zzxiVar.zzs(listZza2);
                            objZza = zzxl.zza(iZzve, listZza2, zzbp(i2), objZza, zzybVar);
                            continue;
                        case 45:
                            zzxiVar.zzt(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 46:
                            zzxiVar.zzu(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 47:
                            zzxiVar.zzv(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 48:
                            zzxiVar.zzw(this.zzcbm.zza(t, iZzbq & 1048575));
                            continue;
                        case 49:
                            zzxiVar.zzb(this.zzcbm.zza(t, iZzbq & 1048575), zzbn(i2), zzuzVar);
                            continue;
                        case 50:
                            Object objZzbo = zzbo(i2);
                            long jZzbq = zzbq(i2) & 1048575;
                            Object objZzp = zzyh.zzp(t, jZzbq);
                            if (objZzp == null) {
                                objZzp = this.zzcbp.zzac(objZzbo);
                                zzyh.zza(t, jZzbq, objZzp);
                            } else if (this.zzcbp.zzaa(objZzp)) {
                                Object objZzac = this.zzcbp.zzac(objZzbo);
                                this.zzcbp.zzc(objZzac, objZzp);
                                zzyh.zza(t, jZzbq, objZzac);
                                objZzp = objZzac;
                            }
                            zzxiVar.zza(this.zzcbp.zzy(objZzp), this.zzcbp.zzad(objZzbo), zzuzVar);
                            continue;
                        case 51:
                            zzyh.zza(t, iZzbq & 1048575, Double.valueOf(zzxiVar.readDouble()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 52:
                            zzyh.zza(t, iZzbq & 1048575, Float.valueOf(zzxiVar.readFloat()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 53:
                            zzyh.zza(t, iZzbq & 1048575, Long.valueOf(zzxiVar.zzui()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 54:
                            zzyh.zza(t, iZzbq & 1048575, Long.valueOf(zzxiVar.zzuh()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 55:
                            zzyh.zza(t, iZzbq & 1048575, Integer.valueOf(zzxiVar.zzuj()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 56:
                            zzyh.zza(t, iZzbq & 1048575, Long.valueOf(zzxiVar.zzuk()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 57:
                            zzyh.zza(t, iZzbq & 1048575, Integer.valueOf(zzxiVar.zzul()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 58:
                            zzyh.zza(t, iZzbq & 1048575, Boolean.valueOf(zzxiVar.zzum()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 59:
                            zza(t, iZzbq, zzxiVar);
                            zzb(t, iZzve, i2);
                            continue;
                        case 60:
                            if (zza(t, iZzve, i2)) {
                                long j3 = iZzbq & 1048575;
                                zzyh.zza(t, j3, zzvo.zzb(zzyh.zzp(t, j3), zzxiVar.zza(zzbn(i2), zzuzVar)));
                            } else {
                                zzyh.zza(t, iZzbq & 1048575, zzxiVar.zza(zzbn(i2), zzuzVar));
                                zzc(t, i2);
                            }
                            zzb(t, iZzve, i2);
                            continue;
                        case 61:
                            zzyh.zza(t, iZzbq & 1048575, zzxiVar.zzuo());
                            zzb(t, iZzve, i2);
                            continue;
                        case 62:
                            zzyh.zza(t, iZzbq & 1048575, Integer.valueOf(zzxiVar.zzup()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 63:
                            int iZzuq2 = zzxiVar.zzuq();
                            zzvr zzvrVarZzbp2 = zzbp(i2);
                            if (zzvrVarZzbp2 == null || zzvrVarZzbp2.zzb(iZzuq2)) {
                                zzyh.zza(t, iZzbq & 1048575, Integer.valueOf(iZzuq2));
                                zzb(t, iZzve, i2);
                                continue;
                            } else {
                                objZza = zzxl.zza(iZzve, iZzuq2, objZza, (zzyb<UT, Object>) zzybVar);
                            }
                            break;
                        case 64:
                            zzyh.zza(t, iZzbq & 1048575, Integer.valueOf(zzxiVar.zzur()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 65:
                            zzyh.zza(t, iZzbq & 1048575, Long.valueOf(zzxiVar.zzus()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 66:
                            zzyh.zza(t, iZzbq & 1048575, Integer.valueOf(zzxiVar.zzut()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 67:
                            zzyh.zza(t, iZzbq & 1048575, Long.valueOf(zzxiVar.zzuu()));
                            zzb(t, iZzve, i2);
                            continue;
                        case 68:
                            zzyh.zza(t, iZzbq & 1048575, zzxiVar.zzb(zzbn(i2), zzuzVar));
                            zzb(t, iZzve, i2);
                            continue;
                        default:
                            if (objZza == null) {
                                try {
                                    objZza = zzybVar.zzye();
                                } catch (zzvu unused) {
                                    zzybVar.zza(zzxiVar);
                                    if (objZza == null) {
                                        objZza = zzybVar.zzai(t);
                                    }
                                    if (!zzybVar.zza((Object) objZza, zzxiVar)) {
                                        for (int i7 = this.zzcbj; i7 < this.zzcbk; i7++) {
                                            objZza = zza((Object) t, this.zzcbi[i7], objZza, (zzyb<UT, Object>) zzybVar);
                                        }
                                        if (objZza != null) {
                                            zzybVar.zzg(t, (Object) objZza);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                break;
                            }
                            if (!zzybVar.zza((Object) objZza, zzxiVar)) {
                                for (int i8 = this.zzcbj; i8 < this.zzcbk; i8++) {
                                    objZza = zza((Object) t, this.zzcbi[i8], objZza, (zzyb<UT, Object>) zzybVar);
                                }
                                if (objZza != null) {
                                    zzybVar.zzg(t, (Object) objZza);
                                    return;
                                }
                                return;
                            }
                            break;
                            break;
                    }
                    for (i = this.zzcbj; i < this.zzcbk; i++) {
                        objZza = zza((Object) t, this.zzcbi[i], objZza, (zzyb<UT, Object>) zzybVar);
                    }
                    if (objZza != null) {
                        zzybVar.zzg(t, (Object) objZza);
                    }
                    throw th;
                }
                if (iZzve == Integer.MAX_VALUE) {
                    for (int i9 = this.zzcbj; i9 < this.zzcbk; i9++) {
                        objZza = zza((Object) t, this.zzcbi[i9], objZza, (zzyb<UT, Object>) zzybVar);
                    }
                    if (objZza != null) {
                        zzybVar.zzg(t, (Object) objZza);
                        return;
                    }
                    return;
                }
                Object objZza2 = !this.zzcbe ? null : zzvaVar.zza(zzuzVar, this.zzcbd, iZzve);
                if (objZza2 != null) {
                    Object objZzt = obj == null ? zzvaVar.zzt(t) : obj;
                    objZza = zzvaVar.zza(zzxiVar, objZza2, zzuzVar, objZzt, objZza, zzybVar);
                    obj = objZzt;
                } else {
                    zzybVar.zza(zzxiVar);
                    if (objZza == null) {
                        objZza = zzybVar.zzai(t);
                    }
                    if (!zzybVar.zza((Object) objZza, zzxiVar)) {
                        for (int i10 = this.zzcbj; i10 < this.zzcbk; i10++) {
                            objZza = zza((Object) t, this.zzcbi[i10], objZza, (zzyb<UT, Object>) zzybVar);
                        }
                        if (objZza != null) {
                            zzybVar.zzg(t, (Object) objZza);
                            return;
                        }
                        return;
                    }
                }
            } catch (Throwable th) {
                while (i < this.zzcbk) {
                    objZza = zza((Object) t, this.zzcbi[i], objZza, (zzyb<UT, Object>) zzybVar);
                }
                if (objZza != null) {
                    zzybVar.zzg(t, (Object) objZza);
                }
                throw th;
            }
        }
    }

    private final zzxj zzbn(int i) {
        int i2 = (i / 3) << 1;
        zzxj zzxjVar = (zzxj) this.zzcba[i2];
        if (zzxjVar != null) {
            return zzxjVar;
        }
        zzxj<T> zzxjVarZzi = zzxf.zzxn().zzi((Class) this.zzcba[i2 + 1]);
        this.zzcba[i2] = zzxjVarZzi;
        return zzxjVarZzi;
    }

    private final Object zzbo(int i) {
        return this.zzcba[(i / 3) << 1];
    }

    private final zzvr zzbp(int i) {
        return (zzvr) this.zzcba[((i / 3) << 1) + 1];
    }

    @Override // com.google.android.gms.internal.measurement.zzxj
    public final void zzu(T t) {
        int i;
        int i2 = this.zzcbj;
        while (true) {
            i = this.zzcbk;
            if (i2 >= i) {
                break;
            }
            long jZzbq = zzbq(this.zzcbi[i2]) & 1048575;
            Object objZzp = zzyh.zzp(t, jZzbq);
            if (objZzp != null) {
                zzyh.zza(t, jZzbq, this.zzcbp.zzab(objZzp));
            }
            i2++;
        }
        int length = this.zzcbi.length;
        while (i < length) {
            this.zzcbm.zzb(t, this.zzcbi[i]);
            i++;
        }
        this.zzcbn.zzu(t);
        if (this.zzcbe) {
            this.zzcbo.zzu(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzyb<UT, UB> zzybVar) {
        zzvr zzvrVarZzbp;
        int i2 = this.zzcaz[i];
        Object objZzp = zzyh.zzp(obj, zzbq(i) & 1048575);
        return (objZzp == null || (zzvrVarZzbp = zzbp(i)) == null) ? ub : (UB) zza(i, i2, this.zzcbp.zzy(objZzp), zzvrVarZzbp, ub, zzybVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzvr zzvrVar, UB ub, zzyb<UT, UB> zzybVar) {
        zzwm<?, ?> zzwmVarZzad = this.zzcbp.zzad(zzbo(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzvrVar.zzb(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzybVar.zzye();
                }
                zzuk zzukVarZzam = zzud.zzam(zzwl.zza(zzwmVarZzad, next.getKey(), next.getValue()));
                try {
                    zzwl.zza(zzukVarZzam.zzuf(), zzwmVarZzad, next.getKey(), next.getValue());
                    zzybVar.zza(ub, i2, zzukVarZzam.zzue());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ed A[LOOP:2: B:54:0x00db->B:59:0x00ed, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:78:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.measurement.zzxj] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.measurement.zzxj] */
    @Override // com.google.android.gms.internal.measurement.zzxj
    public final boolean zzaf(T t) {
        int i;
        List list;
        ?? Zzbn;
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.zzcbj) {
                return !this.zzcbe || this.zzcbo.zzs(t).isInitialized();
            }
            int i6 = this.zzcbi[i3];
            int i7 = this.zzcaz[i6];
            int iZzbq = zzbq(i6);
            if (this.zzcbg) {
                i = 0;
            } else {
                int i8 = this.zzcaz[i6 + 2];
                int i9 = i8 & 1048575;
                i = 1 << (i8 >>> 20);
                if (i9 != i4) {
                    i5 = zzcay.getInt(t, i9);
                    i4 = i9;
                }
            }
            if (((268435456 & iZzbq) != 0) && !zza(t, i6, i5, i)) {
                return false;
            }
            int i10 = (267386880 & iZzbq) >>> 20;
            if (i10 == 9 || i10 == 17) {
                if (zza(t, i6, i5, i) && !zza(t, iZzbq, zzbn(i6))) {
                    return false;
                }
            } else if (i10 == 27) {
                list = (List) zzyh.zzp(t, iZzbq & 1048575);
                if (!list.isEmpty()) {
                    Zzbn = zzbn(i6);
                    while (i2 < list.size()) {
                        if (!Zzbn.zzaf(list.get(i2))) {
                            z = false;
                        }
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (i10 != 60 && i10 != 68) {
                switch (i10) {
                    case 49:
                        list = (List) zzyh.zzp(t, iZzbq & 1048575);
                        if (!list.isEmpty()) {
                            Zzbn = zzbn(i6);
                            for (i2 = 0; i2 < list.size(); i2++) {
                                if (!Zzbn.zzaf(list.get(i2))) {
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
                        Map<?, ?> mapZzz = this.zzcbp.zzz(zzyh.zzp(t, iZzbq & 1048575));
                        if (!mapZzz.isEmpty()) {
                            if (this.zzcbp.zzad(zzbo(i6)).zzcat.zzyp() == zzyv.MESSAGE) {
                                ?? Zzi = 0;
                                for (Object obj : mapZzz.values()) {
                                    if (Zzi == 0) {
                                        Zzi = Zzi;
                                        Zzi = zzxf.zzxn().zzi(obj.getClass());
                                    }
                                    Zzi = Zzi;
                                    if (!Zzi.zzaf(obj)) {
                                        z = false;
                                    }
                                }
                            }
                        }
                        if (!z) {
                            return false;
                        }
                        break;
                        break;
                }
            } else if (zza(t, i7, i6) && !zza(t, iZzbq, zzbn(i6))) {
                return false;
            }
            i3++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzxj zzxjVar) {
        return zzxjVar.zzaf(zzyh.zzp(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzyw zzywVar) throws IOException {
        if (obj instanceof String) {
            zzywVar.zzb(i, (String) obj);
        } else {
            zzywVar.zza(i, (zzud) obj);
        }
    }

    private final void zza(Object obj, int i, zzxi zzxiVar) throws IOException {
        if (zzbs(i)) {
            zzyh.zza(obj, i & 1048575, zzxiVar.zzun());
        } else if (this.zzcbf) {
            zzyh.zza(obj, i & 1048575, zzxiVar.readString());
        } else {
            zzyh.zza(obj, i & 1048575, zzxiVar.zzuo());
        }
    }

    private final int zzbq(int i) {
        return this.zzcaz[i + 1];
    }

    private final int zzbr(int i) {
        return this.zzcaz[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzyh.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzyh.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzyh.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzyh.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzyh.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zzb(t, i) == zzb(t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzcbg) {
            return zzb(t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zzb(T t, int i) {
        if (this.zzcbg) {
            int iZzbq = zzbq(i);
            long j = iZzbq & 1048575;
            switch ((iZzbq & 267386880) >>> 20) {
                case 0:
                    return zzyh.zzo(t, j) != 0.0d;
                case 1:
                    return zzyh.zzn(t, j) != 0.0f;
                case 2:
                    return zzyh.zzl(t, j) != 0;
                case 3:
                    return zzyh.zzl(t, j) != 0;
                case 4:
                    return zzyh.zzk(t, j) != 0;
                case 5:
                    return zzyh.zzl(t, j) != 0;
                case 6:
                    return zzyh.zzk(t, j) != 0;
                case 7:
                    return zzyh.zzm(t, j);
                case 8:
                    Object objZzp = zzyh.zzp(t, j);
                    if (objZzp instanceof String) {
                        return !((String) objZzp).isEmpty();
                    }
                    if (objZzp instanceof zzud) {
                        return !zzud.zzbtz.equals(objZzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzyh.zzp(t, j) != null;
                case 10:
                    return !zzud.zzbtz.equals(zzyh.zzp(t, j));
                case 11:
                    return zzyh.zzk(t, j) != 0;
                case 12:
                    return zzyh.zzk(t, j) != 0;
                case 13:
                    return zzyh.zzk(t, j) != 0;
                case 14:
                    return zzyh.zzl(t, j) != 0;
                case 15:
                    return zzyh.zzk(t, j) != 0;
                case 16:
                    return zzyh.zzl(t, j) != 0;
                case 17:
                    return zzyh.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int iZzbr = zzbr(i);
        return (zzyh.zzk(t, (long) (iZzbr & 1048575)) & (1 << (iZzbr >>> 20))) != 0;
    }

    private final void zzc(T t, int i) {
        if (this.zzcbg) {
            return;
        }
        int iZzbr = zzbr(i);
        long j = iZzbr & 1048575;
        zzyh.zzb(t, j, zzyh.zzk(t, j) | (1 << (iZzbr >>> 20)));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzyh.zzk(t, (long) (zzbr(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzyh.zzb(t, zzbr(i2) & 1048575, i);
    }
}
