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
public class NativeAdView extends FrameLayout {
    private final FrameLayout zzvh;
    private final zzqa zzvi;

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzvh);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zzvh;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public AdChoicesView getAdChoicesView() {
        View viewZzp = zzp("1098");
        if (viewZzp instanceof AdChoicesView) {
            return (AdChoicesView) viewZzp;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzqa zzqaVar = this.zzvi;
        if (zzqaVar != null) {
            try {
                zzqaVar.zzb(ObjectWrapper.wrap(view), i);
            } catch (RemoteException e) {
                zzane.zzb("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzvh);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.zzvh == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza("1098", adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzvi.zza((IObjectWrapper) nativeAd.zzbe());
        } catch (RemoteException e) {
            zzane.zzb("Unable to call setNativeAd on delegate", e);
        }
    }

    protected final void zza(String str, View view) {
        try {
            this.zzvi.zzb(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzane.zzb("Unable to call setAssetView on delegate", e);
        }
    }

    protected final View zzp(String str) {
        try {
            IObjectWrapper iObjectWrapperZzak = this.zzvi.zzak(str);
            if (iObjectWrapperZzak != null) {
                return (View) ObjectWrapper.unwrap(iObjectWrapperZzak);
            }
            return null;
        } catch (RemoteException e) {
            zzane.zzb("Unable to call getAssetView on delegate", e);
            return null;
        }
    }
}
