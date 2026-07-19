package com.facebook.imagepipeline.animated.base;

import android.graphics.Canvas;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public interface AnimatedDrawableBackend {
    AnimatedDrawableBackend forNewBounds(Rect rect);

    int getDurationMsForFrame(int i);

    int getFrameCount();

    AnimatedDrawableFrameInfo getFrameInfo(int i);

    int getHeight();

    int getLoopCount();

    int getRenderedHeight();

    int getRenderedWidth();

    int getWidth();

    void renderFrame(int i, Canvas canvas);
}
