package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: classes.dex */
public final class zzyy {
    private final ByteBuffer zzbva;
    private zzut zzcfa;
    private int zzcfb;

    private zzyy(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static int zzbi(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int zzbj(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    private zzyy(ByteBuffer byteBuffer) {
        this.zzbva = byteBuffer;
        this.zzbva.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static zzyy zzo(byte[] bArr) {
        return zzk(bArr, 0, bArr.length);
    }

    public static zzyy zzk(byte[] bArr, int i, int i2) {
        return new zzyy(bArr, 0, i2);
    }

    private final zzut zzys() throws IOException {
        if (this.zzcfa == null) {
            this.zzcfa = zzut.zza(this.zzbva);
            this.zzcfb = this.zzbva.position();
        } else if (this.zzcfb != this.zzbva.position()) {
            this.zzcfa.write(this.zzbva.array(), this.zzcfb, this.zzbva.position() - this.zzcfb);
            this.zzcfb = this.zzbva.position();
        }
        return this.zzcfa;
    }

    public final void zza(int i, double d) throws IOException {
        zzc(i, 1);
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        if (this.zzbva.remaining() < 8) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.putLong(jDoubleToLongBits);
    }

    public final void zza(int i, float f) throws IOException {
        zzc(i, 5);
        int iFloatToIntBits = Float.floatToIntBits(f);
        if (this.zzbva.remaining() < 4) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.putInt(iFloatToIntBits);
    }

    public final void zza(int i, long j) throws IOException {
        zzc(i, 0);
        zzbh(j);
    }

    public final void zzi(int i, long j) throws IOException {
        zzc(i, 0);
        zzbh(j);
    }

    public final void zzd(int i, int i2) throws IOException {
        zzc(i, 0);
        if (i2 >= 0) {
            zzca(i2);
        } else {
            zzbh(i2);
        }
    }

    public final void zzb(int i, boolean z) throws IOException {
        zzc(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (!this.zzbva.hasRemaining()) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.put(b);
    }

    public final void zzb(int i, String str) throws IOException {
        zzc(i, 2);
        try {
            int iZzbj = zzbj(str.length());
            if (iZzbj == zzbj(str.length() * 3)) {
                int iPosition = this.zzbva.position();
                if (this.zzbva.remaining() < iZzbj) {
                    throw new zzyz(iPosition + iZzbj, this.zzbva.limit());
                }
                this.zzbva.position(iPosition + iZzbj);
                zzd(str, this.zzbva);
                int iPosition2 = this.zzbva.position();
                this.zzbva.position(iPosition);
                zzca((iPosition2 - iPosition) - iZzbj);
                this.zzbva.position(iPosition2);
                return;
            }
            zzca(zza(str));
            zzd(str, this.zzbva);
        } catch (BufferOverflowException e) {
            zzyz zzyzVar = new zzyz(this.zzbva.position(), this.zzbva.limit());
            zzyzVar.initCause(e);
            throw zzyzVar;
        }
    }

    public final void zza(int i, zzzg zzzgVar) throws IOException {
        zzc(i, 2);
        zzb(zzzgVar);
    }

    public final void zze(int i, zzwt zzwtVar) throws IOException {
        zzut zzutVarZzys = zzys();
        zzutVarZzys.zza(i, zzwtVar);
        zzutVarZzys.flush();
        this.zzcfb = this.zzbva.position();
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt >= 2048) {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
                break;
            }
            i3 += (127 - cCharAt) >>> 31;
            i2++;
        }
        if (i3 >= length) {
            return i3;
        }
        long j = ((long) i3) + 4294967296L;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static void zzd(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        char cCharAt;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i2 = 0;
        if (byteBuffer.hasArray()) {
            try {
                byte[] bArrArray = byteBuffer.array();
                int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                int iRemaining = byteBuffer.remaining();
                int length = charSequence.length();
                int i3 = iRemaining + iArrayOffset;
                while (i2 < length) {
                    int i4 = i2 + iArrayOffset;
                    if (i4 >= i3 || (cCharAt = charSequence.charAt(i2)) >= 128) {
                        break;
                    }
                    bArrArray[i4] = (byte) cCharAt;
                    i2++;
                }
                if (i2 == length) {
                    i = iArrayOffset + length;
                } else {
                    i = iArrayOffset + i2;
                    while (i2 < length) {
                        char cCharAt2 = charSequence.charAt(i2);
                        if (cCharAt2 < 128 && i < i3) {
                            bArrArray[i] = (byte) cCharAt2;
                            i++;
                        } else if (cCharAt2 < 2048 && i <= i3 - 2) {
                            int i5 = i + 1;
                            bArrArray[i] = (byte) ((cCharAt2 >>> 6) | 960);
                            i = i5 + 1;
                            bArrArray[i5] = (byte) ((cCharAt2 & '?') | 128);
                        } else {
                            if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i > i3 - 3) {
                                if (i <= i3 - 4) {
                                    int i6 = i2 + 1;
                                    if (i6 != charSequence.length()) {
                                        char cCharAt3 = charSequence.charAt(i6);
                                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                            int i7 = i + 1;
                                            bArrArray[i] = (byte) ((codePoint >>> 18) | 240);
                                            int i8 = i7 + 1;
                                            bArrArray[i7] = (byte) (((codePoint >>> 12) & 63) | 128);
                                            int i9 = i8 + 1;
                                            bArrArray[i8] = (byte) (((codePoint >>> 6) & 63) | 128);
                                            i = i9 + 1;
                                            bArrArray[i9] = (byte) ((codePoint & 63) | 128);
                                            i2 = i6;
                                        } else {
                                            i2 = i6;
                                        }
                                    }
                                    StringBuilder sb = new StringBuilder(39);
                                    sb.append("Unpaired surrogate at index ");
                                    sb.append(i2 - 1);
                                    throw new IllegalArgumentException(sb.toString());
                                }
                                StringBuilder sb2 = new StringBuilder(37);
                                sb2.append("Failed writing ");
                                sb2.append(cCharAt2);
                                sb2.append(" at index ");
                                sb2.append(i);
                                throw new ArrayIndexOutOfBoundsException(sb2.toString());
                            }
                            int i10 = i + 1;
                            bArrArray[i] = (byte) ((cCharAt2 >>> '\f') | 480);
                            int i11 = i10 + 1;
                            bArrArray[i10] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                            bArrArray[i11] = (byte) ((cCharAt2 & '?') | 128);
                            i = i11 + 1;
                        }
                        i2++;
                    }
                }
                byteBuffer.position(i - byteBuffer.arrayOffset());
                return;
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        }
        int length2 = charSequence.length();
        while (i2 < length2) {
            char cCharAt4 = charSequence.charAt(i2);
            if (cCharAt4 < 128) {
                byteBuffer.put((byte) cCharAt4);
            } else if (cCharAt4 < 2048) {
                byteBuffer.put((byte) ((cCharAt4 >>> 6) | 960));
                byteBuffer.put((byte) ((cCharAt4 & '?') | 128));
            } else if (cCharAt4 < 55296 || 57343 < cCharAt4) {
                byteBuffer.put((byte) ((cCharAt4 >>> '\f') | 480));
                byteBuffer.put((byte) (((cCharAt4 >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((cCharAt4 & '?') | 128));
            } else {
                int i12 = i2 + 1;
                if (i12 != charSequence.length()) {
                    char cCharAt5 = charSequence.charAt(i12);
                    if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                        int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                        byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                        byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                        i2 = i12;
                    } else {
                        i2 = i12;
                    }
                }
                StringBuilder sb3 = new StringBuilder(39);
                sb3.append("Unpaired surrogate at index ");
                sb3.append(i2 - 1);
                throw new IllegalArgumentException(sb3.toString());
            }
            i2++;
        }
    }

    public final void zzb(zzzg zzzgVar) throws IOException {
        zzca(zzzgVar.zzza());
        zzzgVar.zza(this);
    }

    public static int zzd(int i, long j) {
        return zzbb(i) + zzbi(j);
    }

    public static int zzh(int i, int i2) {
        return zzbb(i) + zzbc(i2);
    }

    public static int zzc(int i, String str) {
        return zzbb(i) + zzfx(str);
    }

    public static int zzb(int i, zzzg zzzgVar) {
        int iZzbb = zzbb(i);
        int iZzvu = zzzgVar.zzvu();
        return iZzbb + zzbj(iZzvu) + iZzvu;
    }

    public static int zzbc(int i) {
        if (i >= 0) {
            return zzbj(i);
        }
        return 10;
    }

    public static int zzfx(String str) {
        int iZza = zza(str);
        return zzbj(iZza) + iZza;
    }

    public final void zzyt() {
        if (this.zzbva.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zzbva.remaining())));
        }
    }

    private final void zzbz(int i) throws IOException {
        byte b = (byte) i;
        if (!this.zzbva.hasRemaining()) {
            throw new zzyz(this.zzbva.position(), this.zzbva.limit());
        }
        this.zzbva.put(b);
    }

    public final void zzp(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.zzbva.remaining() >= length) {
            this.zzbva.put(bArr, 0, length);
            return;
        }
        throw new zzyz(this.zzbva.position(), this.zzbva.limit());
    }

    public final void zzc(int i, int i2) throws IOException {
        zzca((i << 3) | i2);
    }

    public static int zzbb(int i) {
        return zzbj(i << 3);
    }

    public final void zzca(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzbz((i & 127) | 128);
            i >>>= 7;
        }
        zzbz(i);
    }

    private final void zzbh(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzbz((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzbz((int) j);
    }
}
