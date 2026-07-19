package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@zzadh
public abstract class zzaqh implements Releasable {
    protected Context mContext;
    private String zzcpq;
    private WeakReference<zzapw> zzdaz;

    public zzaqh(zzapw zzapwVar) {
        this.mContext = zzapwVar.getContext();
        this.zzcpq = com.google.android.gms.ads.internal.zzbv.zzek().zzm(this.mContext, zzapwVar.zztq().zzcw);
        this.zzdaz = new WeakReference<>(zzapwVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, Map<String, String> map) {
        zzapw zzapwVar = this.zzdaz.get();
        if (zzapwVar != null) {
            zzapwVar.zza(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:41:0x0089  */
    public static String zzdq(String str) {
        switch (str) {
            case "contentLengthMissing":
            case "error":
            case "inProgress":
            case "interrupted":
            case "noop":
            case "playerFailed":
                return "internal";
            case "expireFailed":
            case "noCacheDir":
                return "io";
            case "badUrl":
            case "downloadTimeout":
                return "network";
            case "externalAbort":
            case "sizeExceeded":
                return "policy";
            default:
                return "internal";
        }
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    protected final void zza(String str, String str2, int i) {
        zzamu.zzsy.post(new zzaqj(this, str, str2, i));
    }

    public final void zza(String str, String str2, String str3, String str4) {
        zzamu.zzsy.post(new zzaqk(this, str, str2, str3, str4));
    }

    public abstract boolean zzdp(String str);
}
