package com.google.android.gms.drive.query;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.query.internal.zzp;
import com.google.android.gms.drive.query.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class Filters {
    /* JADX INFO: renamed from: eq */
    public static <T> Filter m353eq(SearchableMetadataField<T> searchableMetadataField, T t) {
        Preconditions.checkNotNull(searchableMetadataField, "Field may not be null.");
        Preconditions.checkNotNull(t, "Value may not be null.");
        return new com.google.android.gms.drive.query.internal.zzb(zzx.zzma, searchableMetadataField, t);
    }

    /* JADX INFO: renamed from: in */
    public static <T> Filter m354in(SearchableCollectionMetadataField<T> searchableCollectionMetadataField, T t) {
        Preconditions.checkNotNull(searchableCollectionMetadataField, "Field may not be null.");
        Preconditions.checkNotNull(t, "Value may not be null.");
        return new zzp(searchableCollectionMetadataField, t);
    }
}
