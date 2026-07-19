package com.google.android.gms.drive;

import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.internal.drive.zzhp;
import com.google.android.gms.internal.drive.zzic;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class Metadata {
    public Date getCreatedDate() {
        return (Date) zza(zzic.zzkn);
    }

    public Map<CustomPropertyKey, String> getCustomProperties() {
        AppVisibleCustomProperties appVisibleCustomProperties = (AppVisibleCustomProperties) zza(zzhp.zzix);
        return appVisibleCustomProperties == null ? Collections.emptyMap() : appVisibleCustomProperties.zzas();
    }

    public String getDescription() {
        return (String) zza(zzhp.zziy);
    }

    public DriveId getDriveId() {
        return (DriveId) zza(zzhp.zziv);
    }

    public abstract <T> T zza(MetadataField<T> metadataField);
}
