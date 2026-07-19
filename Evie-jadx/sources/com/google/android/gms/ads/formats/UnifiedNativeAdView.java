package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzqa;

/* JADX INFO: loaded from: classes.dex */
public final class UnifiedNativeAdView extends FrameLayout {
    private final FrameLayout zzvp;
    private final zzqa zzvq;

    private final void zza(String str, View view) {
        try {
            this.zzvq.zzb(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzane.zzb("Unable to call setAssetView on delegate", e);
        }
    }

    private final View zzp(String str) {
        try {
            IObjectWrapper iObjectWrapperZzak = this.zzvq.zzak(str);
            if (iObjectWrapperZzak != null) {
                return (View) ObjectWrapper.unwrap(iObjectWrapperZzak);
            }
            return null;
        } catch (RemoteException e) {
            zzane.zzb("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzvp);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzvp;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final AdChoicesView getAdChoicesView() {
        View viewZzp = zzp("3011");
        if (viewZzp instanceof AdChoicesView) {
            return (AdChoicesView) viewZzp;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return zzp("3005");
    }

    public final View getBodyView() {
        return zzp("3004");
    }

    public final View getCallToActionView() {
        return zzp("3002");
    }

    public final View getHeadlineView() {
        return zzp("3001");
    }

    public final View getIconView() {
        return zzp("3003");
    }

    public final View getImageView() {
        return zzp("3008");
    }

    public final MediaView getMediaView() {
        View viewZzp = zzp("3010");
        if (viewZzp instanceof MediaView) {
            return (MediaView) viewZzp;
        }
        if (viewZzp == null) {
            return null;
        }
        zzane.zzck("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return zzp("3007");
    }

    public final View getStarRatingView() {
        return zzp("3009");
    }

    public final View getStoreView() {
        return zzp("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzqa zzqaVar = this.zzvq;
        if (zzqaVar != null) {
            try {
                zzqaVar.zzb(ObjectWrapper.wrap(view), i);
            } catch (RemoteException e) {
                zzane.zzb("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzvp);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.zzvp == view) {
            return;
        }
        super.removeView(view);
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        zza("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        zza("3005", view);
    }

    public final void setBodyView(View view) {
        zza("3004", view);
    }

    public final void setCallToActionView(View view) {
        zza("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.zzvq.zzc(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzane.zzb("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        zza("3001", view);
    }

    public final void setIconView(View view) {
        zza("3003", view);
    }

    public final void setImageView(View view) {
        zza("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        zza("3010", mediaView);
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        try {
            this.zzvq.zza((IObjectWrapper) unifiedNativeAd.zzbe());
        } catch (RemoteException e) {
            zzane.zzb("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        zza("3007", view);
    }

    public final void setStarRatingView(View view) {
        zza("3009", view);
    }

    public final void setStoreView(View view) {
        zza("3006", view);
    }
}
