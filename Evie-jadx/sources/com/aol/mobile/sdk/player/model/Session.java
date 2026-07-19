package com.aol.mobile.sdk.player.model;

import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class Session {

    /* JADX INFO: renamed from: id */
    public String f165id;
    public long playbackDuration;
    public long playbackStartTime;

    Session() {
        reset();
    }

    public void updatePlaybackTime(boolean z, long j) {
        long j2 = this.playbackStartTime;
        if (j2 != 0) {
            this.playbackDuration += j - j2;
        }
        if (z) {
            this.playbackStartTime = j;
        } else {
            this.playbackStartTime = 0L;
        }
    }

    public void reset() {
        this.f165id = UUID.randomUUID().toString();
        this.playbackStartTime = 0L;
        this.playbackDuration = 0L;
    }
}
