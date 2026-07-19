package com.facebook.fresco.animation.frame;

/* JADX INFO: loaded from: classes.dex */
public interface FrameScheduler {
    int getFrameNumberToRender(long j, long j2);

    long getTargetRenderTimeForNextFrameMs(long j);
}
