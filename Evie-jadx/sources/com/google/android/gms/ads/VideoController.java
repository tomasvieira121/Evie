package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzadh;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzlo;
import com.google.android.gms.internal.ads.zzmt;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@zzadh
public final class VideoController {
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private zzlo zzux;

    @GuardedBy("mLock")
    private VideoLifecycleCallbacks zzuy;

    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        Preconditions.checkNotNull(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.mLock) {
            this.zzuy = videoLifecycleCallbacks;
            if (this.zzux == null) {
                return;
            }
            try {
                this.zzux.zza(new zzmt(videoLifecycleCallbacks));
            } catch (RemoteException e) {
                zzane.zzb("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    public final void zza(zzlo zzloVar) {
        synchronized (this.mLock) {
            this.zzux = zzloVar;
            if (this.zzuy != null) {
                setVideoLifecycleCallbacks(this.zzuy);
            }
        }
    }

    public final zzlo zzbc() {
        zzlo zzloVar;
        synchronized (this.mLock) {
            zzloVar = this.zzux;
        }
        return zzloVar;
    }
}
