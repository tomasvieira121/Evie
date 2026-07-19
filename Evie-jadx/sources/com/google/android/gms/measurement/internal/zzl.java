package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes.dex */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    public boolean active;
    public long creationTimestamp;
    public String origin;
    public String packageName;
    public long timeToLive;
    public String triggerEventName;
    public long triggerTimeout;
    public zzfh zzahb;
    public zzad zzahc;
    public zzad zzahd;
    public zzad zzahe;

    zzl(zzl zzlVar) {
        Preconditions.checkNotNull(zzlVar);
        this.packageName = zzlVar.packageName;
        this.origin = zzlVar.origin;
        this.zzahb = zzlVar.zzahb;
        this.creationTimestamp = zzlVar.creationTimestamp;
        this.active = zzlVar.active;
        this.triggerEventName = zzlVar.triggerEventName;
        this.zzahc = zzlVar.zzahc;
        this.triggerTimeout = zzlVar.triggerTimeout;
        this.zzahd = zzlVar.zzahd;
        this.timeToLive = zzlVar.timeToLive;
        this.zzahe = zzlVar.zzahe;
    }

    zzl(String str, String str2, zzfh zzfhVar, long j, boolean z, String str3, zzad zzadVar, long j2, zzad zzadVar2, long j3, zzad zzadVar3) {
        this.packageName = str;
        this.origin = str2;
        this.zzahb = zzfhVar;
        this.creationTimestamp = j;
        this.active = z;
        this.triggerEventName = str3;
        this.zzahc = zzadVar;
        this.triggerTimeout = j2;
        this.zzahd = zzadVar2;
        this.timeToLive = j3;
        this.zzahe = zzadVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 3, this.origin, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzahb, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.creationTimestamp);
        SafeParcelWriter.writeBoolean(parcel, 6, this.active);
        SafeParcelWriter.writeString(parcel, 7, this.triggerEventName, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzahc, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.triggerTimeout);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzahd, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.timeToLive);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzahe, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
