package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaap;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzadh;
import com.google.android.gms.internal.ads.zzagq;
import com.google.android.gms.internal.ads.zzagz;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzkb;
import com.google.android.gms.internal.ads.zzkn;
import com.google.android.gms.internal.ads.zzks;
import com.google.android.gms.internal.ads.zzle;
import com.google.android.gms.internal.ads.zzlj;
import com.google.android.gms.internal.ads.zznk;
import com.google.android.gms.internal.ads.zzpn;
import com.google.android.gms.internal.ads.zzpp;
import com.google.android.gms.internal.ads.zzqa;
import com.google.android.gms.internal.ads.zzqf;
import com.google.android.gms.internal.ads.zzub;
import com.google.android.gms.internal.ads.zzxn;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@Keep
@DynamiteApi
@ParametersAreNonnullByDefault
@zzadh
public class ClientApi extends zzle {
    @Override // com.google.android.gms.internal.ads.zzld
    public zzkn createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzxn zzxnVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzbv.zzek();
        return new zzak(context, str, zzxnVar, new zzang(12451000, i, true, zzakk.zzav(context)), zzw.zzc(context));
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzaap createAdOverlay(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel adOverlayInfoParcelZzc = AdOverlayInfoParcel.zzc(activity.getIntent());
        if (adOverlayInfoParcelZzc == null) {
            return new com.google.android.gms.ads.internal.overlay.zzr(activity);
        }
        switch (adOverlayInfoParcelZzc.zzbyu) {
            case 1:
                return new com.google.android.gms.ads.internal.overlay.zzq(activity);
            case 2:
                return new com.google.android.gms.ads.internal.overlay.zzx(activity);
            case 3:
                return new com.google.android.gms.ads.internal.overlay.zzy(activity);
            case 4:
                return new com.google.android.gms.ads.internal.overlay.zzs(activity, adOverlayInfoParcelZzc);
            default:
                return new com.google.android.gms.ads.internal.overlay.zzr(activity);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzks createBannerAdManager(IObjectWrapper iObjectWrapper, zzjn zzjnVar, String str, zzxn zzxnVar, int i) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzbv.zzek();
        return new zzy(context, zzjnVar, str, zzxnVar, new zzang(12451000, i, true, zzakk.zzav(context)), zzw.zzc(context));
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzaaz createInAppPurchaseManager(IObjectWrapper iObjectWrapper) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x004b  */
    /* JADX WARN: Code duplicated, block: B:6:0x0036 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:7:0x0038  */
    @Override // com.google.android.gms.internal.ads.zzld
    public zzks createInterstitialAdManager(IObjectWrapper iObjectWrapper, zzjn zzjnVar, String str, zzxn zzxnVar, int i) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zznk.initialize(context);
        zzbv.zzek();
        boolean z = true;
        zzang zzangVar = new zzang(12451000, i, true, zzakk.zzav(context));
        boolean zEquals = "reward_mb".equals(zzjnVar.zzarb);
        if (!zEquals) {
            if (!((Boolean) zzkb.zzik().zzd(zznk.zzayy)).booleanValue()) {
                if (zEquals) {
                    if (!((Boolean) zzkb.zzik().zzd(zznk.zzayz)).booleanValue()) {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
        } else if (zEquals) {
            if (!((Boolean) zzkb.zzik().zzd(zznk.zzayz)).booleanValue()) {
                z = false;
            }
        } else {
            z = false;
        }
        return z ? new zzub(context, str, zzxnVar, zzangVar, zzw.zzc(context)) : new zzal(context, zzjnVar, str, zzxnVar, zzangVar, zzw.zzc(context));
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzqa createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzpn((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2));
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzqf createNativeAdViewHolderDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzpp((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzagz createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzxn zzxnVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzbv.zzek();
        return new zzagq(context, zzw.zzc(context), zzxnVar, new zzang(12451000, i, true, zzakk.zzav(context)));
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzks createSearchAdManager(IObjectWrapper iObjectWrapper, zzjn zzjnVar, String str, int i) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzbv.zzek();
        return new zzbp(context, zzjnVar, str, new zzang(12451000, i, true, zzakk.zzav(context)));
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzlj getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public zzlj getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzbv.zzek();
        return zzay.zza(context, new zzang(12451000, i, true, zzakk.zzav(context)));
    }
}
