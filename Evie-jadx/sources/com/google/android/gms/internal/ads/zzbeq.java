package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbeq extends zzben {
    zzbeq() {
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        switch (i2) {
            case 0:
                return zzbem.zzda(i);
            case 1:
                return zzbem.zzz(i, zzbek.zza(bArr, j));
            case 2:
                return zzbem.zzf(i, zzbek.zza(bArr, j), zzbek.zza(bArr, j + 1));
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzben
    final int zzb(int i, byte[] bArr, int i2, int i3) {
        int i4;
        if ((i2 | i3 | (bArr.length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j = i2;
        int i5 = (int) (((long) i3) - j);
        if (i5 >= 16) {
            long j2 = j;
            i4 = 0;
            while (true) {
                if (i4 >= i5) {
                    i4 = i5;
                    break;
                }
                long j3 = j2 + 1;
                if (zzbek.zza(bArr, j2) < 0) {
                    break;
                }
                i4++;
                j2 = j3;
            }
        } else {
            i4 = 0;
        }
        int i6 = i5 - i4;
        long j4 = j + ((long) i4);
        while (true) {
            byte b = 0;
            while (i6 > 0) {
                long j5 = j4 + 1;
                byte bZza = zzbek.zza(bArr, j4);
                if (bZza < 0) {
                    b = bZza;
                    j4 = j5;
                    break;
                }
                i6--;
                b = bZza;
                j4 = j5;
            }
            if (i6 == 0) {
                return 0;
            }
            int i7 = i6 - 1;
            if (b < -32) {
                if (i7 == 0) {
                    return b;
                }
                i6 = i7 - 1;
                if (b >= -62) {
                    long j6 = j4 + 1;
                    if (zzbek.zza(bArr, j4) <= -65) {
                        j4 = j6;
                    }
                }
                return -1;
            }
            if (b >= -16) {
                if (i7 < 3) {
                    return zza(bArr, b, j4, i7);
                }
                i6 = i7 - 3;
                long j7 = j4 + 1;
                byte bZza2 = zzbek.zza(bArr, j4);
                if (bZza2 <= -65 && (((b << 28) + (bZza2 + 112)) >> 30) == 0) {
                    long j8 = j7 + 1;
                    if (zzbek.zza(bArr, j7) <= -65) {
                        j4 = j8 + 1;
                        if (zzbek.zza(bArr, j8) > -65) {
                        }
                    }
                }
                return -1;
            }
            if (i7 < 2) {
                return zza(bArr, b, j4, i7);
            }
            i6 = i7 - 2;
            long j9 = j4 + 1;
            byte bZza3 = zzbek.zza(bArr, j4);
            if (bZza3 <= -65 && ((b != -32 || bZza3 >= -96) && (b != -19 || bZza3 < -96))) {
                j4 = j9 + 1;
                if (zzbek.zza(bArr, j9) > -65) {
                }
            }
            return -1;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzben
    final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
        long j;
        int i3;
        int i4;
        char cCharAt;
        long j2 = i;
        long j3 = ((long) i2) + j2;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i5 = 0;
        while (i5 < length && (cCharAt = charSequence.charAt(i5)) < 128) {
            zzbek.zza(bArr, j2, (byte) cCharAt);
            i5++;
            j2 = 1 + j2;
        }
        if (i5 == length) {
            return (int) j2;
        }
        while (i5 < length) {
            char cCharAt3 = charSequence.charAt(i5);
            if (cCharAt3 >= 128 || j2 >= j3) {
                if (cCharAt3 < 2048 && j2 <= j3 - 2) {
                    long j4 = j2 + 1;
                    zzbek.zza(bArr, j2, (byte) ((cCharAt3 >>> 6) | 960));
                    j2 = j4 + 1;
                    zzbek.zza(bArr, j4, (byte) ((cCharAt3 & '?') | 128));
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j2 > j3 - 3) {
                        if (j2 > j3 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i5 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new zzbep(i5, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(j2);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i6 = i5 + 1;
                        if (i6 != length) {
                            char cCharAt4 = charSequence.charAt(i6);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                long j5 = j2 + 1;
                                zzbek.zza(bArr, j2, (byte) ((codePoint >>> 18) | 240));
                                long j6 = j5 + 1;
                                zzbek.zza(bArr, j5, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j7 = j6 + 1;
                                zzbek.zza(bArr, j6, (byte) (((codePoint >>> 6) & 63) | 128));
                                j2 = j7 + 1;
                                zzbek.zza(bArr, j7, (byte) ((codePoint & 63) | 128));
                                i5 = i6;
                            }
                        } else {
                            i6 = i5;
                        }
                        throw new zzbep(i6 - 1, length);
                    }
                    long j8 = j2 + 1;
                    zzbek.zza(bArr, j2, (byte) ((cCharAt3 >>> '\f') | 480));
                    j2 = j8 + 1;
                    zzbek.zza(bArr, j8, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    j = j2 + 1;
                    i4 = (cCharAt3 & '?') | 128;
                }
                i5++;
            } else {
                j = j2 + 1;
                i4 = cCharAt3;
            }
            zzbek.zza(bArr, j2, (byte) i4);
            j2 = j;
            i5++;
        }
        return (int) j2;
    }
}
