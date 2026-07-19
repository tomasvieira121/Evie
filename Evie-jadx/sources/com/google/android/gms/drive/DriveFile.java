package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

/* JADX INFO: loaded from: classes.dex */
public interface DriveFile extends DriveResource {

    @Deprecated
    public interface DownloadProgressListener {
        void onProgress(long j, long j2);
    }

    @Deprecated
    PendingResult<DriveApi.DriveContentsResult> open(GoogleApiClient googleApiClient, int i, DownloadProgressListener downloadProgressListener);
}
