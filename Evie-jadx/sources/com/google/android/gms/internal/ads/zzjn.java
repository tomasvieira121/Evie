package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public class zzjn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjn> CREATOR = new zzjo();
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final String zzarb;
    public final boolean zzarc;
    public final zzjn[] zzard;
    public final boolean zzare;
    public final boolean zzarf;
    public boolean zzarg;

    public zzjn() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public zzjn(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0065  */
    public zzjn(Context context, AdSize[] adSizeArr) {
        int height;
        int i;
        String string;
        int iZzbk;
        AdSize adSize = adSizeArr[0];
        this.zzarc = false;
        this.zzarf = adSize.isFluid();
        if (this.zzarf) {
            this.width = AdSize.BANNER.getWidth();
            height = AdSize.BANNER.getHeight();
        } else {
            this.width = adSize.getWidth();
            height = adSize.getHeight();
        }
        this.height = height;
        boolean z = this.width == -1;
        boolean z2 = this.height == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z) {
            zzkb.zzif();
            if (zzamu.zzbi(context)) {
                zzkb.zzif();
                if (zzamu.zzbj(context)) {
                    int i2 = displayMetrics.widthPixels;
                    zzkb.zzif();
                    iZzbk = i2 - zzamu.zzbk(context);
                } else {
                    iZzbk = displayMetrics.widthPixels;
                }
            } else {
                iZzbk = displayMetrics.widthPixels;
            }
            this.widthPixels = iZzbk;
            double d = this.widthPixels / displayMetrics.density;
            i = (int) d;
            double d2 = i;
            Double.isNaN(d);
            Double.isNaN(d2);
            if (d - d2 >= 0.01d) {
                i++;
            }
        } else {
            i = this.width;
            zzkb.zzif();
            this.widthPixels = zzamu.zza(displayMetrics, this.width);
        }
        int iZzd = z2 ? zzd(displayMetrics) : this.height;
        zzkb.zzif();
        this.heightPixels = zzamu.zza(displayMetrics, iZzd);
        if (z || z2) {
            StringBuilder sb = new StringBuilder(26);
            sb.append(i);
            sb.append("x");
            sb.append(iZzd);
            sb.append("_as");
            string = sb.toString();
        } else {
            string = this.zzarf ? "320x50_mb" : adSize.toString();
        }
        this.zzarb = string;
        if (adSizeArr.length > 1) {
            this.zzard = new zzjn[adSizeArr.length];
            for (int i3 = 0; i3 < adSizeArr.length; i3++) {
                this.zzard[i3] = new zzjn(context, adSizeArr[i3]);
            }
        } else {
            this.zzard = null;
        }
        this.zzare = false;
        this.zzarg = false;
    }

    public zzjn(zzjn zzjnVar, zzjn[] zzjnVarArr) {
        this(zzjnVar.zzarb, zzjnVar.height, zzjnVar.heightPixels, zzjnVar.zzarc, zzjnVar.width, zzjnVar.widthPixels, zzjnVarArr, zzjnVar.zzare, zzjnVar.zzarf, zzjnVar.zzarg);
    }

    zzjn(String str, int i, int i2, boolean z, int i3, int i4, zzjn[] zzjnVarArr, boolean z2, boolean z3, boolean z4) {
        this.zzarb = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzarc = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzard = zzjnVarArr;
        this.zzare = z2;
        this.zzarf = z3;
        this.zzarg = z4;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzc(DisplayMetrics displayMetrics) {
        return (int) (zzd(displayMetrics) * displayMetrics.density);
    }

    private static int zzd(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public static zzjn zzf(Context context) {
        return new zzjn("320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    public static zzjn zzhx() {
        return new zzjn("reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzarb, false);
        SafeParcelWriter.writeInt(parcel, 3, this.height);
        SafeParcelWriter.writeInt(parcel, 4, this.heightPixels);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzarc);
        SafeParcelWriter.writeInt(parcel, 6, this.width);
        SafeParcelWriter.writeInt(parcel, 7, this.widthPixels);
        SafeParcelWriter.writeTypedArray(parcel, 8, this.zzard, i, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzare);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzarf);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzarg);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final AdSize zzhy() {
        return com.google.android.gms.ads.zzb.zza(this.width, this.height, this.zzarb);
    }
}
