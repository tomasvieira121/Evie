package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.drive.query.Query;

/* JADX INFO: loaded from: classes.dex */
public interface DriveFolder extends DriveResource {

    @Deprecated
    public interface DriveFileResult extends Result {
    }

    @Deprecated
    PendingResult<DriveFileResult> createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents);

    @Deprecated
    PendingResult<DriveApi.MetadataBufferResult> queryChildren(GoogleApiClient googleApiClient, Query query);
}
