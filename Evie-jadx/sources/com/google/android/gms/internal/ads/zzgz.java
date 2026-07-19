package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public final class zzgz extends zzgq {
    private MessageDigest zzaje;
    private final int zzajh;
    private final int zzaji;

    public zzgz(int i) {
        int i2 = i / 8;
        this.zzajh = i % 8 > 0 ? i2 + 1 : i2;
        this.zzaji = i;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzgq
    public final byte[] zzx(String str) {
        synchronized (this.mLock) {
            this.zzaje = zzhg();
            if (this.zzaje == null) {
                return new byte[0];
            }
            this.zzaje.reset();
            this.zzaje.update(str.getBytes(Charset.forName("UTF-8")));
            byte[] bArrDigest = this.zzaje.digest();
            byte[] bArr = new byte[bArrDigest.length > this.zzajh ? this.zzajh : bArrDigest.length];
            System.arraycopy(bArrDigest, 0, bArr, 0, bArr.length);
            if (this.zzaji % 8 > 0) {
                long j = 0;
                for (int i = 0; i < bArr.length; i++) {
                    if (i > 0) {
                        j <<= 8;
                    }
                    j += (long) (bArr[i] & 255);
                }
                long j2 = j >>> (8 - (this.zzaji % 8));
                for (int i2 = this.zzajh - 1; i2 >= 0; i2--) {
                    bArr[i2] = (byte) (255 & j2);
                    j2 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
