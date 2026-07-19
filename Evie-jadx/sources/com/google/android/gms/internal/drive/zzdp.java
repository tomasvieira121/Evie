package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.MetadataChangeSet;

/* JADX INFO: loaded from: classes.dex */
public class zzdp implements DriveResource {
    protected final DriveId zzk;

    public zzdp(DriveId driveId) {
        this.zzk = driveId;
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<Status> delete(GoogleApiClient googleApiClient) {
        return googleApiClient.execute(new zzdu(this, googleApiClient));
    }

    public DriveId getDriveId() {
        return this.zzk;
    }

    @Override // com.google.android.gms.drive.DriveResource
    public PendingResult<DriveResource.MetadataResult> updateMetadata(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet != null) {
            return googleApiClient.execute(new zzdt(this, googleApiClient, metadataChangeSet));
        }
        throw new IllegalArgumentException("ChangeSet must be provided.");
    }
}
