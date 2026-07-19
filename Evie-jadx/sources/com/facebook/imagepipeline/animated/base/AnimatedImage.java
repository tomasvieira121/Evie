package com.facebook.imagepipeline.animated.base;

/* JADX INFO: loaded from: classes.dex */
public interface AnimatedImage {
    boolean doesRenderSupportScaling();

    AnimatedImageFrame getFrame(int i);

    int getFrameCount();

    int[] getFrameDurations();

    AnimatedDrawableFrameInfo getFrameInfo(int i);

    int getHeight();

    int getLoopCount();

    int getSizeInBytes();

    int getWidth();
}
