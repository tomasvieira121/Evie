package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes.dex */
public final class zzad extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzad> CREATOR = new zzae();
    public final String name;
    public final String origin;
    public final zzaa zzaid;
    public final long zzaip;

    public zzad(String str, zzaa zzaaVar, String str2, long j) {
        this.name = str;
        this.zzaid = zzaaVar;
        this.origin = str2;
        this.zzaip = j;
    }

    zzad(zzad zzadVar, long j) {
        Preconditions.checkNotNull(zzadVar);
        this.name = zzadVar.name;
        this.zzaid = zzadVar.zzaid;
        this.origin = zzadVar.origin;
        this.zzaip = j;
    }

    public final String toString() {
        String str = this.origin;
        String str2 = this.name;
        String strValueOf = String.valueOf(this.zzaid);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(strValueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(strValueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.name, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzaid, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.origin, false);
        SafeParcelWriter.writeLong(parcel, 5, this.zzaip);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
