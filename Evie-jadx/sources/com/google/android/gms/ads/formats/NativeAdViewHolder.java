package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzqf;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class NativeAdViewHolder {
    public static WeakHashMap<View, NativeAdViewHolder> zzvk = new WeakHashMap<>();
    private zzqf zzvj;
    private WeakReference<View> zzvl;

    private final void zza(IObjectWrapper iObjectWrapper) {
        WeakReference<View> weakReference = this.zzvl;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            zzane.zzdk("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzvk.containsKey(view)) {
            zzvk.put(view, this);
        }
        zzqf zzqfVar = this.zzvj;
        if (zzqfVar != null) {
            try {
                zzqfVar.zza(iObjectWrapper);
            } catch (RemoteException e) {
                zzane.zzb("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        zza((IObjectWrapper) nativeAd.zzbe());
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        zza((IObjectWrapper) unifiedNativeAd.zzbe());
    }
}
