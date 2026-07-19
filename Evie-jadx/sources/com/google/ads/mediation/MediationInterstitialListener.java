package com.google.ads.mediation;

import com.google.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface MediationInterstitialListener {
    void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode);
}
