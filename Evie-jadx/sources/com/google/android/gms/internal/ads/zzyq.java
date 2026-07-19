package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzyq<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzxt zzbuu;

    public zzyq(zzxt zzxtVar) {
        this.zzbuu = zzxtVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(strValueOf);
        zzane.zzck(sb.toString());
        zzkb.zzif();
        if (!zzamu.zzsh()) {
            zzane.zzd("#008 Must be called on the main UI thread.", null);
            zzamu.zzsy.post(new zzyv(this, errorCode));
        } else {
            try {
                this.zzbuu.onAdFailedToLoad(zzzc.zza(errorCode));
            } catch (RemoteException e) {
                zzane.zzd("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(strValueOf);
        sb.append(".");
        zzane.zzck(sb.toString());
        zzkb.zzif();
        if (!zzamu.zzsh()) {
            zzane.zzd("#008 Must be called on the main UI thread.", null);
            zzamu.zzsy.post(new zzza(this, errorCode));
        } else {
            try {
                this.zzbuu.onAdFailedToLoad(zzzc.zza(errorCode));
            } catch (RemoteException e) {
                zzane.zzd("#007 Could not call remote method.", e);
            }
        }
    }
}
