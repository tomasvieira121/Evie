package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class zzamt {
    private final View mView;
    private Activity zzcuj;
    private boolean zzcuk;
    private boolean zzcul;
    private boolean zzcum;
    private ViewTreeObserver.OnGlobalLayoutListener zzcun;
    private ViewTreeObserver.OnScrollChangedListener zzcuo;

    public zzamt(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzcuj = activity;
        this.mView = view;
        this.zzcun = onGlobalLayoutListener;
        this.zzcuo = onScrollChangedListener;
    }

    private static ViewTreeObserver zzj(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    private final void zzse() {
        ViewTreeObserver viewTreeObserverZzj;
        ViewTreeObserver viewTreeObserverZzj2;
        if (this.zzcuk) {
            return;
        }
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzcun;
        if (onGlobalLayoutListener != null) {
            Activity activity = this.zzcuj;
            if (activity != null && (viewTreeObserverZzj2 = zzj(activity)) != null) {
                viewTreeObserverZzj2.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            com.google.android.gms.ads.internal.zzbv.zzfg();
            zzaor.zza(this.mView, this.zzcun);
        }
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.zzcuo;
        if (onScrollChangedListener != null) {
            Activity activity2 = this.zzcuj;
            if (activity2 != null && (viewTreeObserverZzj = zzj(activity2)) != null) {
                viewTreeObserverZzj.addOnScrollChangedListener(onScrollChangedListener);
            }
            com.google.android.gms.ads.internal.zzbv.zzfg();
            zzaor.zza(this.mView, this.zzcuo);
        }
        this.zzcuk = true;
    }

    private final void zzsf() {
        ViewTreeObserver viewTreeObserverZzj;
        ViewTreeObserver viewTreeObserverZzj2;
        Activity activity = this.zzcuj;
        if (activity != null && this.zzcuk) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzcun;
            if (onGlobalLayoutListener != null && (viewTreeObserverZzj2 = zzj(activity)) != null) {
                com.google.android.gms.ads.internal.zzbv.zzem().zza(viewTreeObserverZzj2, onGlobalLayoutListener);
            }
            ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.zzcuo;
            if (onScrollChangedListener != null && (viewTreeObserverZzj = zzj(this.zzcuj)) != null) {
                viewTreeObserverZzj.removeOnScrollChangedListener(onScrollChangedListener);
            }
            this.zzcuk = false;
        }
    }

    public final void onAttachedToWindow() {
        this.zzcul = true;
        if (this.zzcum) {
            zzse();
        }
    }

    public final void onDetachedFromWindow() {
        this.zzcul = false;
        zzsf();
    }

    public final void zzi(Activity activity) {
        this.zzcuj = activity;
    }

    public final void zzsc() {
        this.zzcum = true;
        if (this.zzcul) {
            zzse();
        }
    }

    public final void zzsd() {
        this.zzcum = false;
        zzsf();
    }
}
