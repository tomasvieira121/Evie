package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.zzm;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class zzij extends zzm<DriveId> {
    public static final zzij zzkt = new zzij();

    private zzij() {
        super("driveId", Arrays.asList("sqlId", "resourceId", "mimeType"), Arrays.asList("dbInstanceId"), 4100000);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final boolean zzb(DataHolder dataHolder, int i, int i2) {
        Iterator<String> it = zzar().iterator();
        while (it.hasNext()) {
            if (!dataHolder.hasColumn(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object zzc(DataHolder dataHolder, int i, int i2) {
        long j = dataHolder.getMetadata().getLong("dbInstanceId");
        boolean zEquals = "application/vnd.google-apps.folder".equals(dataHolder.getString(zzhp.zzjs.getName(), i, i2));
        String string = dataHolder.getString("resourceId", i, i2);
        return new DriveId("generated-android-null".equals(string) ? null : string, Long.valueOf(dataHolder.getLong("sqlId", i, i2)).longValue(), j, zEquals ? 1 : 0);
    }
}
