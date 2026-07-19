package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class zzzc implements Cloneable {
    private static final zzzd zzcff = new zzzd();
    private int mSize;
    private boolean zzcfg;
    private int[] zzcfh;
    private zzzd[] zzcfi;

    zzzc() {
        this(10);
    }

    private zzzc(int i) {
        this.zzcfg = false;
        int iIdealIntArraySize = idealIntArraySize(i);
        this.zzcfh = new int[iIdealIntArraySize];
        this.zzcfi = new zzzd[iIdealIntArraySize];
        this.mSize = 0;
    }

    final zzzd zzcb(int i) {
        int iZzcd = zzcd(i);
        if (iZzcd < 0) {
            return null;
        }
        zzzd[] zzzdVarArr = this.zzcfi;
        if (zzzdVarArr[iZzcd] == zzcff) {
            return null;
        }
        return zzzdVarArr[iZzcd];
    }

    final void zza(int i, zzzd zzzdVar) {
        int iZzcd = zzcd(i);
        if (iZzcd >= 0) {
            this.zzcfi[iZzcd] = zzzdVar;
            return;
        }
        int i2 = iZzcd ^ (-1);
        if (i2 < this.mSize) {
            zzzd[] zzzdVarArr = this.zzcfi;
            if (zzzdVarArr[i2] == zzcff) {
                this.zzcfh[i2] = i;
                zzzdVarArr[i2] = zzzdVar;
                return;
            }
        }
        int i3 = this.mSize;
        if (i3 >= this.zzcfh.length) {
            int iIdealIntArraySize = idealIntArraySize(i3 + 1);
            int[] iArr = new int[iIdealIntArraySize];
            zzzd[] zzzdVarArr2 = new zzzd[iIdealIntArraySize];
            int[] iArr2 = this.zzcfh;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            zzzd[] zzzdVarArr3 = this.zzcfi;
            System.arraycopy(zzzdVarArr3, 0, zzzdVarArr2, 0, zzzdVarArr3.length);
            this.zzcfh = iArr;
            this.zzcfi = zzzdVarArr2;
        }
        int i4 = this.mSize;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.zzcfh;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            zzzd[] zzzdVarArr4 = this.zzcfi;
            System.arraycopy(zzzdVarArr4, i2, zzzdVarArr4, i5, this.mSize - i2);
        }
        this.zzcfh[i2] = i;
        this.zzcfi[i2] = zzzdVar;
        this.mSize++;
    }

    final int size() {
        return this.mSize;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    final zzzd zzcc(int i) {
        return this.zzcfi[i];
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0043 A[RETURN] */
    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzc)) {
            return false;
        }
        zzzc zzzcVar = (zzzc) obj;
        int i = this.mSize;
        if (i != zzzcVar.mSize) {
            return false;
        }
        int[] iArr = this.zzcfh;
        int[] iArr2 = zzzcVar.zzcfh;
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
            zzzd[] zzzdVarArr = this.zzcfi;
            zzzd[] zzzdVarArr2 = zzzcVar.zzcfi;
            int i3 = this.mSize;
            for (int i4 = 0; i4 < i3; i4++) {
                if (!zzzdVarArr[i4].equals(zzzdVarArr2[i4])) {
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
            iHashCode = (((iHashCode * 31) + this.zzcfh[i]) * 31) + this.zzcfi[i].hashCode();
        }
        return iHashCode;
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

    private final int zzcd(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzcfh[i4];
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
        zzzc zzzcVar = new zzzc(i);
        System.arraycopy(this.zzcfh, 0, zzzcVar.zzcfh, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            zzzd[] zzzdVarArr = this.zzcfi;
            if (zzzdVarArr[i2] != null) {
                zzzcVar.zzcfi[i2] = (zzzd) zzzdVarArr[i2].clone();
            }
        }
        zzzcVar.mSize = i;
        return zzzcVar;
    }
}
