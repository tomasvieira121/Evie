package com.google.android.gms.drive;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public interface DriveContents {
    DriveId getDriveId();

    InputStream getInputStream();

    OutputStream getOutputStream();

    Contents zzh();

    void zzi();

    boolean zzj();
}
