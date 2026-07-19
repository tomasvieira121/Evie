package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.drive.query.Filter;

/* JADX INFO: loaded from: classes.dex */
public class FilterHolder extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FilterHolder> CREATOR = new zzh();
    private final Filter zzba;
    private final zzb<?> zzln;
    private final zzd zzlo;
    private final zzr zzlp;
    private final zzv zzlq;
    private final zzp<?> zzlr;
    private final zzt zzls;
    private final zzn zzlt;
    private final zzl zzlu;
    private final zzz zzlv;

    public FilterHolder(Filter filter) {
        Preconditions.checkNotNull(filter, "Null filter.");
        this.zzln = filter instanceof zzb ? (zzb) filter : null;
        this.zzlo = filter instanceof zzd ? (zzd) filter : null;
        this.zzlp = filter instanceof zzr ? (zzr) filter : null;
        this.zzlq = filter instanceof zzv ? (zzv) filter : null;
        this.zzlr = filter instanceof zzp ? (zzp) filter : null;
        this.zzls = filter instanceof zzt ? (zzt) filter : null;
        this.zzlt = filter instanceof zzn ? (zzn) filter : null;
        this.zzlu = filter instanceof zzl ? (zzl) filter : null;
        this.zzlv = filter instanceof zzz ? (zzz) filter : null;
        if (this.zzln == null && this.zzlo == null && this.zzlp == null && this.zzlq == null && this.zzlr == null && this.zzls == null && this.zzlt == null && this.zzlu == null && this.zzlv == null) {
            throw new IllegalArgumentException("Invalid filter type.");
        }
        this.zzba = filter;
    }

    FilterHolder(zzb<?> zzbVar, zzd zzdVar, zzr zzrVar, zzv zzvVar, zzp<?> zzpVar, zzt zztVar, zzn<?> zznVar, zzl zzlVar, zzz zzzVar) {
        this.zzln = zzbVar;
        this.zzlo = zzdVar;
        this.zzlp = zzrVar;
        this.zzlq = zzvVar;
        this.zzlr = zzpVar;
        this.zzls = zztVar;
        this.zzlt = zznVar;
        this.zzlu = zzlVar;
        this.zzlv = zzzVar;
        zzb<?> zzbVar2 = this.zzln;
        if (zzbVar2 != null) {
            this.zzba = zzbVar2;
            return;
        }
        zzd zzdVar2 = this.zzlo;
        if (zzdVar2 != null) {
            this.zzba = zzdVar2;
            return;
        }
        zzr zzrVar2 = this.zzlp;
        if (zzrVar2 != null) {
            this.zzba = zzrVar2;
            return;
        }
        zzv zzvVar2 = this.zzlq;
        if (zzvVar2 != null) {
            this.zzba = zzvVar2;
            return;
        }
        zzp<?> zzpVar2 = this.zzlr;
        if (zzpVar2 != null) {
            this.zzba = zzpVar2;
            return;
        }
        zzt zztVar2 = this.zzls;
        if (zztVar2 != null) {
            this.zzba = zztVar2;
            return;
        }
        zzn zznVar2 = this.zzlt;
        if (zznVar2 != null) {
            this.zzba = zznVar2;
            return;
        }
        zzl zzlVar2 = this.zzlu;
        if (zzlVar2 != null) {
            this.zzba = zzlVar2;
            return;
        }
        zzz zzzVar2 = this.zzlv;
        if (zzzVar2 == null) {
            throw new IllegalArgumentException("At least one filter must be set.");
        }
        this.zzba = zzzVar2;
    }

    public final Filter getFilter() {
        return this.zzba;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zzln, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzlo, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzlp, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzlq, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzlr, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzls, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzlt, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzlu, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.zzlv, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
