package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes.dex */
public interface MetadataField<T> {
    String getName();

    T zza(Bundle bundle);

    T zza(DataHolder dataHolder, int i, int i2);

    void zza(T t, Bundle bundle);
}
