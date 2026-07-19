package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.query.internal.zzr;
import com.google.android.gms.drive.query.internal.zzt;
import com.google.android.gms.drive.query.internal.zzx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Query extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Query> CREATOR = new zzb();
    private final List<DriveSpace> zzbw;
    private final zzr zzkw;
    private final String zzkx;
    private final SortOrder zzky;
    final List<String> zzkz;
    final boolean zzla;
    final boolean zzlb;

    public static class Builder {
        private String zzkx;
        private SortOrder zzky;
        private boolean zzla;
        private boolean zzlb;
        private final List<Filter> zzlc = new ArrayList();
        private List<String> zzkz = Collections.emptyList();
        private Set<DriveSpace> zzld = Collections.emptySet();

        public Builder addFilter(Filter filter) {
            Preconditions.checkNotNull(filter, "Filter may not be null.");
            if (!(filter instanceof zzt)) {
                this.zzlc.add(filter);
            }
            return this;
        }

        public Query build() {
            return new Query(new zzr(zzx.zzmf, this.zzlc), this.zzkx, this.zzky, this.zzkz, this.zzla, this.zzld, this.zzlb);
        }

        @Deprecated
        public Builder setPageToken(String str) {
            this.zzkx = str;
            return this;
        }

        public Builder setSortOrder(SortOrder sortOrder) {
            this.zzky = sortOrder;
            return this;
        }
    }

    Query(zzr zzrVar, String str, SortOrder sortOrder, List<String> list, boolean z, List<DriveSpace> list2, boolean z2) {
        this.zzkw = zzrVar;
        this.zzkx = str;
        this.zzky = sortOrder;
        this.zzkz = list;
        this.zzla = z;
        this.zzbw = list2;
        this.zzlb = z2;
    }

    private Query(zzr zzrVar, String str, SortOrder sortOrder, List<String> list, boolean z, Set<DriveSpace> set, boolean z2) {
        this(zzrVar, str, sortOrder, list, z, new ArrayList(set), z2);
    }

    public Filter getFilter() {
        return this.zzkw;
    }

    @Deprecated
    public String getPageToken() {
        return this.zzkx;
    }

    public SortOrder getSortOrder() {
        return this.zzky;
    }

    public String toString() {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s,Spaces=%s]", this.zzkw, this.zzky, this.zzkx, this.zzbw);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zzkw, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzkx, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzky, i, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzkz, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzla);
        SafeParcelWriter.writeTypedList(parcel, 7, this.zzbw, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzlb);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
