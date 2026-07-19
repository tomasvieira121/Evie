package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzjf;
import com.google.android.gms.internal.ads.zzjm;
import com.google.android.gms.internal.ads.zzkb;
import com.google.android.gms.internal.ads.zzkk;
import com.google.android.gms.internal.ads.zzkn;
import com.google.android.gms.internal.ads.zzlw;
import com.google.android.gms.internal.ads.zzpl;
import com.google.android.gms.internal.ads.zzrx;
import com.google.android.gms.internal.ads.zzry;
import com.google.android.gms.internal.ads.zzrz;
import com.google.android.gms.internal.ads.zzsa;
import com.google.android.gms.internal.ads.zzsd;
import com.google.android.gms.internal.ads.zzxm;

/* JADX INFO: loaded from: classes.dex */
public class AdLoader {
    private final Context mContext;
    private final zzjm zzuk;
    private final zzkk zzul;

    public static class Builder {
        private final Context mContext;
        private final zzkn zzum;

        private Builder(Context context, zzkn zzknVar) {
            this.mContext = context;
            this.zzum = zzknVar;
        }

        public Builder(Context context, String str) {
            this((Context) Preconditions.checkNotNull(context, "context cannot be null"), zzkb.zzig().zzb(context, str, new zzxm()));
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.mContext, this.zzum.zzdh());
            } catch (RemoteException e) {
                zzane.zzb("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.zzum.zza(new zzrx(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                zzane.zzc("Failed to add app install ad listener", e);
            }
            return this;
        }

        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.zzum.zza(new zzry(onContentAdLoadedListener));
            } catch (RemoteException e) {
                zzane.zzc("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            try {
                this.zzum.zza(str, new zzsa(onCustomTemplateAdLoadedListener), onCustomClickListener == null ? null : new zzrz(onCustomClickListener));
            } catch (RemoteException e) {
                zzane.zzc("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.zzum.zza(new zzsd(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzane.zzc("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zzum.zzb(new zzjf(adListener));
            } catch (RemoteException e) {
                zzane.zzc("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.zzum.zza(new zzpl(nativeAdOptions));
            } catch (RemoteException e) {
                zzane.zzc("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    AdLoader(Context context, zzkk zzkkVar) {
        this(context, zzkkVar, zzjm.zzara);
    }

    private AdLoader(Context context, zzkk zzkkVar, zzjm zzjmVar) {
        this.mContext = context;
        this.zzul = zzkkVar;
        this.zzuk = zzjmVar;
    }

    private final void zza(zzlw zzlwVar) {
        try {
            this.zzul.zzd(zzjm.zza(this.mContext, zzlwVar));
        } catch (RemoteException e) {
            zzane.zzb("Failed to load ad.", e);
        }
    }

    public void loadAd(AdRequest adRequest) {
        zza(adRequest.zzay());
    }
}
