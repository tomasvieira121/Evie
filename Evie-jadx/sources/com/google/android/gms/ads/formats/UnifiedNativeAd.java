package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoController;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class UnifiedNativeAd {

    public interface OnUnifiedNativeAdLoadedListener {
        void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd);
    }

    public abstract String getAdvertiser();

    public abstract String getBody();

    public abstract String getCallToAction();

    public abstract String getHeadline();

    public abstract NativeAd.Image getIcon();

    public abstract List<NativeAd.Image> getImages();

    public abstract String getPrice();

    public abstract Double getStarRating();

    public abstract String getStore();

    public abstract VideoController getVideoController();

    protected abstract Object zzbe();

    public abstract Object zzbh();
}
