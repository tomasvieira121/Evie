package com.aol.mobile.sdk.player.advertisement.utils;

import android.os.Handler;
import com.aol.mobile.sdk.player.utils.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class Timer {
    private Callback callback;
    private final Handler handler;
    private final long hardTimeout;
    private final long softTimeout;
    private final Runnable softCallback = new Runnable() { // from class: com.aol.mobile.sdk.player.advertisement.utils.Timer.1
        @Override // java.lang.Runnable
        public void run() {
            if (Timer.this.callback != null) {
                Timer.this.callback.onSoftTimeoutReached();
            }
        }
    };
    private final Runnable hardCallback = new Runnable() { // from class: com.aol.mobile.sdk.player.advertisement.utils.Timer.2
        @Override // java.lang.Runnable
        public void run() {
            if (Timer.this.callback != null) {
                Timer.this.callback.onHardTimeoutReached();
            }
        }
    };

    public interface Callback {
        void onHardTimeoutReached();

        void onSoftTimeoutReached();
    }

    public Timer(long j, long j2, Handler handler) {
        Preconditions.checkArgument(j >= 0, "Soft timeout can not be negative");
        Preconditions.checkArgument(j2 >= 0, "Hard timeout can not be negative");
        Preconditions.checkArgument(j2 >= j, "Hard timeout can not be less then soft timeout");
        this.handler = handler;
        this.softTimeout = j;
        this.hardTimeout = j2;
    }

    public void reset() {
        this.handler.removeCallbacks(this.softCallback);
        this.handler.removeCallbacks(this.hardCallback);
    }

    public void start() {
        this.handler.postDelayed(this.softCallback, this.softTimeout);
        this.handler.postDelayed(this.hardCallback, this.hardTimeout);
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }
}
