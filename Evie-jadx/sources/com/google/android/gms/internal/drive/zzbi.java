package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveId;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class zzbi implements DriveContents {
    private static final GmsLogger zzbx = new GmsLogger("DriveContentsImpl", "");
    private final Contents zzeq;
    private boolean closed = false;
    private boolean zzer = false;
    private boolean zzes = false;

    public zzbi(Contents contents) {
        this.zzeq = (Contents) Preconditions.checkNotNull(contents);
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final DriveId getDriveId() {
        return this.zzeq.getDriveId();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final InputStream getInputStream() {
        if (this.closed) {
            throw new IllegalStateException("Contents have been closed, cannot access the input stream.");
        }
        if (this.zzeq.getMode() != 268435456) {
            throw new IllegalStateException("getInputStream() can only be used with contents opened with MODE_READ_ONLY.");
        }
        if (this.zzer) {
            throw new IllegalStateException("getInputStream() can only be called once per Contents instance.");
        }
        this.zzer = true;
        return this.zzeq.getInputStream();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final OutputStream getOutputStream() {
        if (this.closed) {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        }
        if (this.zzeq.getMode() != 536870912) {
            throw new IllegalStateException("getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY.");
        }
        if (this.zzes) {
            throw new IllegalStateException("getOutputStream() can only be called once per Contents instance.");
        }
        this.zzes = true;
        return this.zzeq.getOutputStream();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final Contents zzh() {
        return this.zzeq;
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final void zzi() {
        IOUtils.closeQuietly(this.zzeq.getParcelFileDescriptor());
        this.closed = true;
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final boolean zzj() {
        return this.closed;
    }
}
