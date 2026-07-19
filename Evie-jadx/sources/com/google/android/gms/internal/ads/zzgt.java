package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzgt {
    private ByteArrayOutputStream zzajc = new ByteArrayOutputStream(CodedOutputStream.DEFAULT_BUFFER_SIZE);
    private Base64OutputStream zzajd = new Base64OutputStream(this.zzajc, 10);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final String toString() {
        String string;
        try {
            this.zzajd.close();
        } catch (IOException e) {
            zzakb.zzb("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.zzajc.close();
                string = this.zzajc.toString();
            } catch (IOException e2) {
                zzakb.zzb("HashManager: Unable to convert to Base64.", e2);
                string = "";
            }
            return string;
        } finally {
            this.zzajc = null;
            this.zzajd = null;
        }
    }

    public final void write(byte[] bArr) throws IOException {
        this.zzajd.write(bArr);
    }
}
