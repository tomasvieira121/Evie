package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzak;
import com.google.android.gms.measurement.internal.zzbt;
import com.google.android.gms.measurement.internal.zzk;
import com.google.firebase.iid.FirebaseInstanceId;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics zzbsa;
    private final zzbt zzadj;
    private final Object zzbsd;

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (zzbsa == null) {
            synchronized (FirebaseAnalytics.class) {
                if (zzbsa == null) {
                    zzbsa = new FirebaseAnalytics(zzbt.zza(context, (zzak) null));
                }
            }
        }
        return zzbsa;
    }

    @Keep
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        if (!zzk.isMainThread()) {
            this.zzadj.zzgo().zzjg().zzbx("setCurrentScreen must be called from the main thread");
        } else {
            this.zzadj.zzgh().setCurrentScreen(activity, str, str2);
        }
    }

    private FirebaseAnalytics(zzbt zzbtVar) {
        Preconditions.checkNotNull(zzbtVar);
        this.zzadj = zzbtVar;
        this.zzbsd = new Object();
    }

    @Keep
    public final String getFirebaseInstanceId() {
        return FirebaseInstanceId.getInstance().getId();
    }
}
