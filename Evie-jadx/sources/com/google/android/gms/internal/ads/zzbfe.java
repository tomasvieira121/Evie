package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbfe implements Cloneable {
    private static final zzbff zzebm = new zzbff();
    private int mSize;
    private boolean zzebn;
    private int[] zzebo;
    private zzbff[] zzebp;

    zzbfe() {
        this(10);
    }

    private zzbfe(int i) {
        this.zzebn = false;
        int iIdealIntArraySize = idealIntArraySize(i);
        this.zzebo = new int[iIdealIntArraySize];
        this.zzebp = new zzbff[iIdealIntArraySize];
        this.mSize = 0;
    }

    private static int idealIntArraySize(int i) {
        int i2 = i << 2;
        for (int i3 = 4; i3 < 32; i3++) {
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
        }
        return i2 / 4;
    }

    private final int zzdh(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzebo[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else {
                if (i5 <= i) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzbfe zzbfeVar = new zzbfe(i);
        System.arraycopy(this.zzebo, 0, zzbfeVar.zzebo, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            zzbff[] zzbffVarArr = this.zzebp;
            if (zzbffVarArr[i2] != null) {
                zzbfeVar.zzebp[i2] = (zzbff) zzbffVarArr[i2].clone();
            }
        }
        zzbfeVar.mSize = i;
        return zzbfeVar;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0043 A[RETURN] */
    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbfe)) {
            return false;
        }
        zzbfe zzbfeVar = (zzbfe) obj;
        int i = this.mSize;
        if (i != zzbfeVar.mSize) {
            return false;
        }
        int[] iArr = this.zzebo;
        int[] iArr2 = zzbfeVar.zzebo;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            }
            if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            zzbff[] zzbffVarArr = this.zzebp;
            zzbff[] zzbffVarArr2 = zzbfeVar.zzebp;
            int i3 = this.mSize;
            for (int i4 = 0; i4 < i3; i4++) {
                if (!zzbffVarArr[i4].equals(zzbffVarArr2[i4])) {
                    z2 = false;
                    if (z2) {
                        return true;
                    }
                }
            }
            z2 = true;
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 17;
        for (int i = 0; i < this.mSize; i++) {
            iHashCode = (((iHashCode * 31) + this.zzebo[i]) * 31) + this.zzebp[i].hashCode();
        }
        return iHashCode;
    }

    final int size() {
        return this.mSize;
    }

    final void zza(int i, zzbff zzbffVar) {
        int iZzdh = zzdh(i);
        if (iZzdh >= 0) {
            this.zzebp[iZzdh] = zzbffVar;
            return;
        }
        int i2 = iZzdh ^ (-1);
        if (i2 < this.mSize) {
            zzbff[] zzbffVarArr = this.zzebp;
            if (zzbffVarArr[i2] == zzebm) {
                this.zzebo[i2] = i;
                zzbffVarArr[i2] = zzbffVar;
                return;
            }
        }
        int i3 = this.mSize;
        if (i3 >= this.zzebo.length) {
            int iIdealIntArraySize = idealIntArraySize(i3 + 1);
            int[] iArr = new int[iIdealIntArraySize];
            zzbff[] zzbffVarArr2 = new zzbff[iIdealIntArraySize];
            int[] iArr2 = this.zzebo;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            zzbff[] zzbffVarArr3 = this.zzebp;
            System.arraycopy(zzbffVarArr3, 0, zzbffVarArr2, 0, zzbffVarArr3.length);
            this.zzebo = iArr;
            this.zzebp = zzbffVarArr2;
        }
        int i4 = this.mSize;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.zzebo;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            zzbff[] zzbffVarArr4 = this.zzebp;
            System.arraycopy(zzbffVarArr4, i2, zzbffVarArr4, i5, this.mSize - i2);
        }
        this.zzebo[i2] = i;
        this.zzebp[i2] = zzbffVar;
        this.mSize++;
    }

    final zzbff zzdf(int i) {
        int iZzdh = zzdh(i);
        if (iZzdh < 0) {
            return null;
        }
        zzbff[] zzbffVarArr = this.zzebp;
        if (zzbffVarArr[iZzdh] == zzebm) {
            return null;
        }
        return zzbffVarArr[iZzdh];
    }

    final zzbff zzdg(int i) {
        return this.zzebp[i];
    }
}
