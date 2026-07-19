package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface DriveApi {

    @Deprecated
    public interface DriveContentsResult extends Result {
        DriveContents getDriveContents();
    }

    @Deprecated
    public interface MetadataBufferResult extends Releasable, Result {
        MetadataBuffer getMetadataBuffer();
    }

    @Deprecated
    DriveFolder getAppFolder(GoogleApiClient googleApiClient);

    @Deprecated
    PendingResult<DriveContentsResult> newDriveContents(GoogleApiClient googleApiClient);

    @Deprecated
    PendingResult<Status> requestSync(GoogleApiClient googleApiClient);
}
