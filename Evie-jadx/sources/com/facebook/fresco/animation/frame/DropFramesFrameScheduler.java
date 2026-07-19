package com.facebook.fresco.animation.frame;

import com.facebook.fresco.animation.backend.AnimationInformation;

/* JADX INFO: loaded from: classes.dex */
public class DropFramesFrameScheduler implements FrameScheduler {
    private final AnimationInformation mAnimationInformation;
    private long mLoopDurationMs = -1;

    public DropFramesFrameScheduler(AnimationInformation animationInformation) {
        this.mAnimationInformation = animationInformation;
    }

    @Override // com.facebook.fresco.animation.frame.FrameScheduler
    public int getFrameNumberToRender(long j, long j2) {
        if (isInfiniteAnimation() || j / getLoopDurationMs() < this.mAnimationInformation.getLoopCount()) {
            return getFrameNumberWithinLoop(j % getLoopDurationMs());
        }
        return -1;
    }

    public long getLoopDurationMs() {
        long j = this.mLoopDurationMs;
        if (j != -1) {
            return j;
        }
        this.mLoopDurationMs = 0L;
        int frameCount = this.mAnimationInformation.getFrameCount();
        for (int i = 0; i < frameCount; i++) {
            this.mLoopDurationMs += (long) this.mAnimationInformation.getFrameDurationMs(i);
        }
        return this.mLoopDurationMs;
    }

    @Override // com.facebook.fresco.animation.frame.FrameScheduler
    public long getTargetRenderTimeForNextFrameMs(long j) {
        long loopDurationMs = getLoopDurationMs();
        long frameDurationMs = 0;
        if (loopDurationMs == 0) {
            return -1L;
        }
        if (!isInfiniteAnimation() && j / getLoopDurationMs() >= this.mAnimationInformation.getLoopCount()) {
            return -1L;
        }
        long j2 = j % loopDurationMs;
        int frameCount = this.mAnimationInformation.getFrameCount();
        for (int i = 0; i < frameCount && frameDurationMs <= j2; i++) {
            frameDurationMs += (long) this.mAnimationInformation.getFrameDurationMs(i);
        }
        return j + (frameDurationMs - j2);
    }

    public boolean isInfiniteAnimation() {
        return this.mAnimationInformation.getLoopCount() == 0;
    }

    int getFrameNumberWithinLoop(long j) {
        int i = 0;
        long frameDurationMs = 0;
        do {
            frameDurationMs += (long) this.mAnimationInformation.getFrameDurationMs(i);
            i++;
        } while (j >= frameDurationMs);
        return i - 1;
    }
}
