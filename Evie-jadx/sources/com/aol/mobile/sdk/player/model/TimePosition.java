package com.aol.mobile.sdk.player.model;

import com.aol.mobile.sdk.player.utils.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class TimePosition {
    private long duration;
    private long position;
    private double progress;
    private long timeLeft;

    public TimePosition(long j, long j2) {
        update(j, j2);
    }

    public TimePosition(long j) {
        this(0L, j);
    }

    private void update(long j, long j2) {
        double d;
        Preconditions.checkArgument(j2 >= 0, "Duration can not be negative");
        Preconditions.checkArgument(j >= 0, "Position can not be negative");
        Preconditions.checkState(j <= j2, "Position must be in range of duration");
        this.position = j;
        this.duration = j2;
        this.timeLeft = j2 - j;
        if (j2 == 0) {
            d = 0.0d;
        } else {
            double d2 = j;
            double d3 = j2;
            Double.isNaN(d2);
            Double.isNaN(d3);
            d = d2 / d3;
        }
        this.progress = d;
    }

    public void setToEndPosition() {
        long j = this.duration;
        update(j, j);
    }

    public long getPosition() {
        return this.position;
    }

    public void setPosition(long j) {
        update(j, this.duration);
    }

    public long getDuration() {
        return this.duration;
    }

    public void setDuration(long j) {
        update(this.position, j);
    }

    public long getTimeLeft() {
        return this.timeLeft;
    }

    public double getProgress() {
        return this.progress;
    }

    public void setProgress(double d) {
        Preconditions.checkArgument(d <= 1.0d && d >= 0.0d, "Position must be in [0.0 .. 1.0] range");
        double d2 = this.duration;
        Double.isNaN(d2);
        update(Math.round(d2 * d), this.duration);
    }
}
