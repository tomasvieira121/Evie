package com.google.ads.mediation;

import com.google.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface MediationBannerListener {
    void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode);
}
