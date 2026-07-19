package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzuq extends zzuo {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzbum;
    private int zzbun;
    private int zzbuo;
    private int zzbup;
    private int zzbuq;

    private zzuq(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzbuq = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzbuo = this.pos;
        this.zzbum = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzug() throws IOException {
        if (zzuw()) {
            this.zzbup = 0;
            return 0;
        }
        this.zzbup = zzuy();
        int i = this.zzbup;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw new zzvt("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final void zzan(int i) throws zzvt {
        if (this.zzbup != i) {
            throw zzvt.zzwn();
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzuo
    public final boolean zzao(int i) throws IOException {
        int iZzug;
        int i2 = 0;
        switch (i & 7) {
            case 0:
                if (this.limit - this.pos >= 10) {
                    while (i2 < 10) {
                        byte[] bArr = this.buffer;
                        int i3 = this.pos;
                        this.pos = i3 + 1;
                        if (bArr[i3] < 0) {
                            i2++;
                        }
                    }
                    throw zzvt.zzwm();
                }
                while (i2 < 10) {
                    if (zzvd() < 0) {
                        i2++;
                    }
                }
                throw zzvt.zzwm();
                return true;
            case 1:
                zzas(8);
                return true;
            case 2:
                zzas(zzuy());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzas(4);
                return true;
            default:
                throw zzvt.zzwo();
        }
        do {
            iZzug = zzug();
            if (iZzug != 0) {
            }
            zzan(((i >>> 3) << 3) | 4);
            return true;
        } while (zzao(iZzug));
        zzan(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzvb());
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzva());
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzuh() throws IOException {
        return zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzui() throws IOException {
        return zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzuj() throws IOException {
        return zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzuk() throws IOException {
        return zzvb();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzul() throws IOException {
        return zzva();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final boolean zzum() throws IOException {
        return zzuz() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final String readString() throws IOException {
        int iZzuy = zzuy();
        if (iZzuy > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (iZzuy <= i - i2) {
                String str = new String(this.buffer, i2, iZzuy, zzvo.UTF_8);
                this.pos += iZzuy;
                return str;
            }
        }
        if (iZzuy == 0) {
            return "";
        }
        if (iZzuy < 0) {
            throw zzvt.zzwl();
        }
        throw zzvt.zzwk();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final String zzun() throws IOException {
        int iZzuy = zzuy();
        if (iZzuy > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (iZzuy <= i - i2) {
                String strZzh = zzyj.zzh(this.buffer, i2, iZzuy);
                this.pos += iZzuy;
                return strZzh;
            }
        }
        if (iZzuy == 0) {
            return "";
        }
        if (iZzuy <= 0) {
            throw zzvt.zzwl();
        }
        throw zzvt.zzwk();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final <T extends zzwt> T zza(zzxd<T> zzxdVar, zzuz zzuzVar) throws IOException {
        int iZzuy = zzuy();
        if (this.zzbuh >= this.zzbui) {
            throw zzvt.zzwp();
        }
        int iZzaq = zzaq(iZzuy);
        this.zzbuh++;
        T tZza = zzxdVar.zza(this, zzuzVar);
        zzan(0);
        this.zzbuh--;
        zzar(iZzaq);
        return tZza;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0033 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0037  */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    @Override // com.google.android.gms.internal.measurement.zzuo
    public final zzud zzuo() throws IOException {
        byte[] bArrCopyOfRange;
        int iZzuy = zzuy();
        if (iZzuy > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (iZzuy <= i - i2) {
                zzud zzudVarZzb = zzud.zzb(this.buffer, i2, iZzuy);
                this.pos += iZzuy;
                return zzudVarZzb;
            }
        }
        if (iZzuy == 0) {
            return zzud.zzbtz;
        }
        if (iZzuy > 0) {
            int i3 = this.limit;
            int i4 = this.pos;
            if (iZzuy <= i3 - i4) {
                this.pos = iZzuy + i4;
                bArrCopyOfRange = Arrays.copyOfRange(this.buffer, i4, this.pos);
            } else {
                if (iZzuy <= 0) {
                    throw zzvt.zzwk();
                }
                if (iZzuy == 0) {
                    bArrCopyOfRange = zzvo.zzbzj;
                } else {
                    throw zzvt.zzwl();
                }
            }
        } else {
            if (iZzuy <= 0) {
                throw zzvt.zzwk();
            }
            if (iZzuy == 0) {
                bArrCopyOfRange = zzvo.zzbzj;
            } else {
                throw zzvt.zzwl();
            }
        }
        return zzud.zzi(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzup() throws IOException {
        return zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzuq() throws IOException {
        return zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzur() throws IOException {
        return zzva();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzus() throws IOException {
        return zzvb();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzut() throws IOException {
        int iZzuy = zzuy();
        return (-(iZzuy & 1)) ^ (iZzuy >>> 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final long zzuu() throws IOException {
        long jZzuz = zzuz();
        return (-(jZzuz & 1)) ^ (jZzuz >>> 1);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0069 A[PHI: r3
      0x0069: PHI (r3v7 int) = (r3v6 int), (r3v9 int), (r3v11 int) binds: [B:20:0x0048, B:24:0x0054, B:28:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzuy() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.pos
            int r1 = r5.limit
            if (r1 == r0) goto L6d
            byte[] r2 = r5.buffer
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.pos = r3
            return r0
        L11:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6d
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L22
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L6a
        L22:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L2f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            r1 = r3
            goto L6a
        L2f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L6a
        L3d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L69
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L6a
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L69
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L6a
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L69
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6d
            goto L6a
        L69:
            r1 = r3
        L6a:
            r5.pos = r1
            return r0
        L6d:
            long r0 = r5.zzuv()
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzuq.zzuy():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b7, code lost:
    
        if (r2[r0] >= 0) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzuz() throws java.io.IOException {
        /*
            r11 = this;
            int r0 = r11.pos
            int r1 = r11.limit
            if (r1 == r0) goto Lbe
            byte[] r2 = r11.buffer
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r11.pos = r3
            long r0 = (long) r0
            return r0
        L12:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto Lbe
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L26
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            long r2 = (long) r0
            r3 = r2
            goto Lbb
        L26:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L37
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            long r0 = (long) r0
            r9 = r0
            r1 = r3
            r3 = r9
            goto Lbb
        L37:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L48
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            long r2 = (long) r0
            r3 = r2
            goto Lbb
        L48:
            long r3 = (long) r0
            int r0 = r1 + 1
            r1 = r2[r1]
            long r5 = (long) r1
            r1 = 28
            long r5 = r5 << r1
            long r3 = r3 ^ r5
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L5f
            r1 = 266354560(0xfe03f80, double:1.315966377E-315)
            long r1 = r1 ^ r3
            r3 = r1
            r1 = r0
            goto Lbb
        L5f:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 35
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L73
            r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
            long r3 = r3 ^ r5
            goto Lbb
        L73:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 42
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L89
            r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            long r1 = r1 ^ r3
            r3 = r1
            r1 = r0
            goto Lbb
        L89:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 49
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L9d
            r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            long r3 = r3 ^ r5
            goto Lbb
        L9d:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 56
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto Lba
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 < 0) goto Lbe
            goto Lbb
        Lba:
            r1 = r0
        Lbb:
            r11.pos = r1
            return r3
        Lbe:
            long r0 = r11.zzuv()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzuq.zzuz():long");
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.measurement.zzuo
    final long zzuv() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzvd = zzvd();
            j |= ((long) (bZzvd & 127)) << i;
            if ((bZzvd & 128) == 0) {
                return j;
            }
        }
        throw zzvt.zzwm();
    }

    private final int zzva() throws IOException {
        int i = this.pos;
        if (this.limit - i < 4) {
            throw zzvt.zzwk();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzvb() throws IOException {
        int i = this.pos;
        if (this.limit - i < 8) {
            throw zzvt.zzwk();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzaq(int i) throws zzvt {
        if (i < 0) {
            throw zzvt.zzwl();
        }
        int iZzux = i + zzux();
        int i2 = this.zzbuq;
        if (iZzux > i2) {
            throw zzvt.zzwk();
        }
        this.zzbuq = iZzux;
        zzvc();
        return i2;
    }

    private final void zzvc() {
        this.limit += this.zzbun;
        int i = this.limit;
        int i2 = i - this.zzbuo;
        int i3 = this.zzbuq;
        if (i2 > i3) {
            this.zzbun = i2 - i3;
            this.limit = i - this.zzbun;
        } else {
            this.zzbun = 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final void zzar(int i) {
        this.zzbuq = i;
        zzvc();
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final boolean zzuw() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final int zzux() {
        return this.pos - this.zzbuo;
    }

    private final byte zzvd() throws IOException {
        int i = this.pos;
        if (i == this.limit) {
            throw zzvt.zzwk();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzuo
    public final void zzas(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (i <= i2 - i3) {
                this.pos = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzvt.zzwl();
        }
        throw zzvt.zzwk();
    }
}
