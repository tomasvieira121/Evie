package com.aol.mobile.sdk.player.listener.detector;

/* JADX INFO: loaded from: classes.dex */
public class Timer {
    private long duration;
    private long time;

    public Timer() {
        reset();
    }

    public void reset() {
        this.duration = 0L;
        this.time = 0L;
    }

    public void start(long j) {
        if (this.time == 0) {
            this.time = j;
        }
    }

    public void stop(long j) {
        long j2 = this.time;
        if (j2 != 0) {
            this.duration += j - j2;
            this.time = 0L;
        }
    }

    public long getDuration() {
        return this.duration;
    }
}
