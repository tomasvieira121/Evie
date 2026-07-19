package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzbdj {
    private final int flags;
    private final Object[] zzdwh;
    private final int zzdwi;
    private final int zzdwj;
    private final int zzdwk;
    private final int[] zzdwq;
    private final zzbdk zzdxf;
    private Class<?> zzdxg;
    private final int zzdxh;
    private final int zzdxi;
    private final int zzdxj;
    private final int zzdxk;
    private final int zzdxl;
    private final int zzdxm;
    private int zzdxn;
    private int zzdxo;
    private int zzdxp = Integer.MAX_VALUE;
    private int zzdxq = Integer.MIN_VALUE;
    private int zzdxr = 0;
    private int zzdxs = 0;
    private int zzdxt = 0;
    private int zzdxu = 0;
    private int zzdxv = 0;
    private int zzdxw;
    private int zzdxx;
    private int zzdxy;
    private int zzdxz;
    private int zzdya;
    private Field zzdyb;
    private Object zzdyc;
    private Object zzdyd;
    private Object zzdye;

    zzbdj(Class<?> cls, String str, Object[] objArr) {
        this.zzdxg = cls;
        this.zzdxf = new zzbdk(str);
        this.zzdwh = objArr;
        this.flags = this.zzdxf.next();
        this.zzdxh = this.zzdxf.next();
        if (this.zzdxh == 0) {
            this.zzdxi = 0;
            this.zzdxj = 0;
            this.zzdwi = 0;
            this.zzdwj = 0;
            this.zzdxk = 0;
            this.zzdxl = 0;
            this.zzdwk = 0;
            this.zzdxm = 0;
            this.zzdwq = null;
            return;
        }
        this.zzdxi = this.zzdxf.next();
        this.zzdxj = this.zzdxf.next();
        this.zzdwi = this.zzdxf.next();
        this.zzdwj = this.zzdxf.next();
        this.zzdxl = this.zzdxf.next();
        this.zzdwk = this.zzdxf.next();
        this.zzdxk = this.zzdxf.next();
        this.zzdxm = this.zzdxf.next();
        int next = this.zzdxf.next();
        this.zzdwq = next != 0 ? new int[next] : null;
        this.zzdxn = (this.zzdxi << 1) + this.zzdxj;
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

    private final Object zzaey() {
        Object[] objArr = this.zzdwh;
        int i = this.zzdxn;
        this.zzdxn = i + 1;
        return objArr[i];
    }

    private final boolean zzafa() {
        return (this.flags & 1) == 1;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00da  */
    final boolean next() {
        int i;
        Object type;
        if (!this.zzdxf.hasNext()) {
            return false;
        }
        this.zzdxw = this.zzdxf.next();
        this.zzdxx = this.zzdxf.next();
        this.zzdxy = this.zzdxx & 255;
        int i2 = this.zzdxw;
        if (i2 < this.zzdxp) {
            this.zzdxp = i2;
        }
        int i3 = this.zzdxw;
        if (i3 > this.zzdxq) {
            this.zzdxq = i3;
        }
        if (this.zzdxy == zzbbj.MAP.m360id()) {
            this.zzdxr++;
        } else if (this.zzdxy >= zzbbj.DOUBLE_LIST.m360id() && this.zzdxy <= zzbbj.GROUP_LIST.m360id()) {
            this.zzdxs++;
        }
        this.zzdxv++;
        if (zzbdo.zze(this.zzdxp, this.zzdxw, this.zzdxv)) {
            this.zzdxu = this.zzdxw + 1;
            i = this.zzdxu - this.zzdxp;
        } else {
            i = this.zzdxt + 1;
        }
        this.zzdxt = i;
        if ((this.zzdxx & 1024) != 0) {
            int[] iArr = this.zzdwq;
            int i4 = this.zzdxo;
            this.zzdxo = i4 + 1;
            iArr[i4] = this.zzdxw;
        }
        this.zzdyc = null;
        this.zzdyd = null;
        this.zzdye = null;
        if (zzafb()) {
            this.zzdxz = this.zzdxf.next();
            if (this.zzdxy == zzbbj.MESSAGE.m360id() + 51 || this.zzdxy == zzbbj.GROUP.m360id() + 51) {
                type = zzaey();
                this.zzdyc = type;
            } else if (this.zzdxy == zzbbj.ENUM.m360id() + 51 && zzafa()) {
                this.zzdyd = zzaey();
            }
        } else {
            this.zzdyb = zza(this.zzdxg, (String) zzaey());
            if (zzaff()) {
                this.zzdya = this.zzdxf.next();
            }
            if (this.zzdxy == zzbbj.MESSAGE.m360id() || this.zzdxy == zzbbj.GROUP.m360id()) {
                type = this.zzdyb.getType();
                this.zzdyc = type;
            } else if (this.zzdxy == zzbbj.MESSAGE_LIST.m360id() || this.zzdxy == zzbbj.GROUP_LIST.m360id()) {
                type = zzaey();
                this.zzdyc = type;
            } else if (this.zzdxy == zzbbj.ENUM.m360id() || this.zzdxy == zzbbj.ENUM_LIST.m360id() || this.zzdxy == zzbbj.ENUM_LIST_PACKED.m360id()) {
                if (zzafa()) {
                    this.zzdyd = zzaey();
                }
            } else if (this.zzdxy == zzbbj.MAP.m360id()) {
                this.zzdye = zzaey();
                if ((this.zzdxx & 2048) != 0) {
                    this.zzdyd = zzaey();
                }
            }
        }
        return true;
    }

    final int zzaci() {
        return this.zzdxw;
    }

    final int zzaez() {
        return this.zzdxy;
    }

    final boolean zzafb() {
        return this.zzdxy > zzbbj.MAP.m360id();
    }

    final Field zzafc() {
        int i = this.zzdxz << 1;
        Object obj = this.zzdwh[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field fieldZza = zza(this.zzdxg, (String) obj);
        this.zzdwh[i] = fieldZza;
        return fieldZza;
    }

    final Field zzafd() {
        int i = (this.zzdxz << 1) + 1;
        Object obj = this.zzdwh[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field fieldZza = zza(this.zzdxg, (String) obj);
        this.zzdwh[i] = fieldZza;
        return fieldZza;
    }

    final Field zzafe() {
        return this.zzdyb;
    }

    final boolean zzaff() {
        return zzafa() && this.zzdxy <= zzbbj.GROUP.m360id();
    }

    final Field zzafg() {
        int i = (this.zzdxi << 1) + (this.zzdya / 32);
        Object obj = this.zzdwh[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field fieldZza = zza(this.zzdxg, (String) obj);
        this.zzdwh[i] = fieldZza;
        return fieldZza;
    }

    final int zzafh() {
        return this.zzdya % 32;
    }

    final boolean zzafi() {
        return (this.zzdxx & 256) != 0;
    }

    final boolean zzafj() {
        return (this.zzdxx & 512) != 0;
    }

    final Object zzafk() {
        return this.zzdyc;
    }

    final Object zzafl() {
        return this.zzdyd;
    }

    final Object zzafm() {
        return this.zzdye;
    }
}
