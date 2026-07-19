package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public interface DriveResource {

    @Deprecated
    public interface MetadataResult extends Result {
    }

    @Deprecated
    PendingResult<Status> delete(GoogleApiClient googleApiClient);

    @Deprecated
    PendingResult<MetadataResult> updateMetadata(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet);
}
