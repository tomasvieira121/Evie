package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.internal.ads.zzlw;
import com.google.android.gms.internal.ads.zzlx;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class AdRequest {
    private final zzlw zzun;

    public static final class Builder {
        private final zzlx zzuo = new zzlx();

        public Builder() {
            this.zzuo.zzad("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public final Builder addKeyword(String str) {
            this.zzuo.zzac(str);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzuo.zza(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zzuo.zzae("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        public final Builder addTestDevice(String str) {
            this.zzuo.zzad(str);
            return this;
        }

        public final AdRequest build() {
            return new AdRequest(this);
        }

        public final Builder setBirthday(Date date) {
            this.zzuo.zza(date);
            return this;
        }

        public final Builder setGender(int i) {
            this.zzuo.zzt(i);
            return this;
        }

        public final Builder setIsDesignedForFamilies(boolean z) {
            this.zzuo.zzk(z);
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzuo.zzb(location);
            return this;
        }

        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.zzuo.zzj(z);
            return this;
        }
    }

    private AdRequest(Builder builder) {
        this.zzun = new zzlw(builder.zzuo);
    }

    public final zzlw zzay() {
        return this.zzun;
    }
}
