package com.facebook.common.memory;

import com.facebook.common.internal.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class PooledByteStreams {
    private final ByteArrayPool mByteArrayPool;
    private final int mTempBufSize;

    public PooledByteStreams(ByteArrayPool byteArrayPool) {
        this(byteArrayPool, 16384);
    }

    public PooledByteStreams(ByteArrayPool byteArrayPool, int i) {
        Preconditions.checkArgument(i > 0);
        this.mTempBufSize = i;
        this.mByteArrayPool = byteArrayPool;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = this.mByteArrayPool.get(this.mTempBufSize);
        long j = 0;
        while (true) {
            try {
                int i = inputStream.read(bArr, 0, this.mTempBufSize);
                if (i != -1) {
                    outputStream.write(bArr, 0, i);
                    j += (long) i;
                } else {
                    this.mByteArrayPool.release(bArr);
                    return j;
                }
            } catch (Throwable th) {
                this.mByteArrayPool.release(bArr);
                throw th;
            }
        }
    }
}
