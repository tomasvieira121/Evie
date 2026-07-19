package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes.dex */
public final class zzit implements Cloneable {
    private static final zziu zzmy = new zziu();
    private int mSize;
    private boolean zzmz;
    private int[] zzna;
    private zziu[] zznb;

    zzit() {
        this(10);
    }

    private zzit(int i) {
        this.zzmz = false;
        int iIdealIntArraySize = idealIntArraySize(i);
        this.zzna = new int[iIdealIntArraySize];
        this.zznb = new zziu[iIdealIntArraySize];
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

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzit zzitVar = new zzit(i);
        System.arraycopy(this.zzna, 0, zzitVar.zzna, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            zziu[] zziuVarArr = this.zznb;
            if (zziuVarArr[i2] != null) {
                zzitVar.zznb[i2] = (zziu) zziuVarArr[i2].clone();
            }
        }
        zzitVar.mSize = i;
        return zzitVar;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0043 A[RETURN] */
    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzit)) {
            return false;
        }
        zzit zzitVar = (zzit) obj;
        int i = this.mSize;
        if (i != zzitVar.mSize) {
            return false;
        }
        int[] iArr = this.zzna;
        int[] iArr2 = zzitVar.zzna;
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
            zziu[] zziuVarArr = this.zznb;
            zziu[] zziuVarArr2 = zzitVar.zznb;
            int i3 = this.mSize;
            for (int i4 = 0; i4 < i3; i4++) {
                if (!zziuVarArr[i4].equals(zziuVarArr2[i4])) {
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
            iHashCode = (((iHashCode * 31) + this.zzna[i]) * 31) + this.zznb[i].hashCode();
        }
        return iHashCode;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    final int size() {
        return this.mSize;
    }

    final zziu zzs(int i) {
        return this.zznb[i];
    }
}
