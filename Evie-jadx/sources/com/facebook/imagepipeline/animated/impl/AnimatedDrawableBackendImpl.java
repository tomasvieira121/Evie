package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.AnimatedImage;
import com.facebook.imagepipeline.animated.base.AnimatedImageFrame;
import com.facebook.imagepipeline.animated.base.AnimatedImageResult;
import com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedDrawableBackendImpl implements AnimatedDrawableBackend {
    private final AnimatedDrawableUtil mAnimatedDrawableUtil;
    private final AnimatedImage mAnimatedImage;
    private final AnimatedImageResult mAnimatedImageResult;
    private final int mDurationMs;
    private final int[] mFrameDurationsMs;
    private final AnimatedDrawableFrameInfo[] mFrameInfos;
    private final int[] mFrameTimestampsMs;
    private final Rect mRenderedBounds;

    @GuardedBy("this")
    private Bitmap mTempBitmap;

    public AnimatedDrawableBackendImpl(AnimatedDrawableUtil animatedDrawableUtil, AnimatedImageResult animatedImageResult, Rect rect) {
        this.mAnimatedDrawableUtil = animatedDrawableUtil;
        this.mAnimatedImageResult = animatedImageResult;
        this.mAnimatedImage = animatedImageResult.getImage();
        this.mFrameDurationsMs = this.mAnimatedImage.getFrameDurations();
        this.mAnimatedDrawableUtil.fixFrameDurations(this.mFrameDurationsMs);
        this.mDurationMs = this.mAnimatedDrawableUtil.getTotalDurationFromFrameDurations(this.mFrameDurationsMs);
        this.mFrameTimestampsMs = this.mAnimatedDrawableUtil.getFrameTimeStampsFromDurations(this.mFrameDurationsMs);
        this.mRenderedBounds = getBoundsToUse(this.mAnimatedImage, rect);
        this.mFrameInfos = new AnimatedDrawableFrameInfo[this.mAnimatedImage.getFrameCount()];
        for (int i = 0; i < this.mAnimatedImage.getFrameCount(); i++) {
            this.mFrameInfos[i] = this.mAnimatedImage.getFrameInfo(i);
        }
    }

    private static Rect getBoundsToUse(AnimatedImage animatedImage, Rect rect) {
        if (rect == null) {
            return new Rect(0, 0, animatedImage.getWidth(), animatedImage.getHeight());
        }
        return new Rect(0, 0, Math.min(rect.width(), animatedImage.getWidth()), Math.min(rect.height(), animatedImage.getHeight()));
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getFrameCount() {
        return this.mAnimatedImage.getFrameCount();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getLoopCount() {
        return this.mAnimatedImage.getLoopCount();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getWidth() {
        return this.mAnimatedImage.getWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getHeight() {
        return this.mAnimatedImage.getHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getRenderedWidth() {
        return this.mRenderedBounds.width();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getRenderedHeight() {
        return this.mRenderedBounds.height();
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public AnimatedDrawableFrameInfo getFrameInfo(int i) {
        return this.mFrameInfos[i];
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public int getDurationMsForFrame(int i) {
        return this.mFrameDurationsMs[i];
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public AnimatedDrawableBackend forNewBounds(Rect rect) {
        return getBoundsToUse(this.mAnimatedImage, rect).equals(this.mRenderedBounds) ? this : new AnimatedDrawableBackendImpl(this.mAnimatedDrawableUtil, this.mAnimatedImageResult, rect);
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend
    public void renderFrame(int i, Canvas canvas) {
        AnimatedImageFrame frame = this.mAnimatedImage.getFrame(i);
        try {
            if (this.mAnimatedImage.doesRenderSupportScaling()) {
                renderImageSupportsScaling(canvas, frame);
            } else {
                renderImageDoesNotSupportScaling(canvas, frame);
            }
        } finally {
            frame.dispose();
        }
    }

    private void renderImageSupportsScaling(Canvas canvas, AnimatedImageFrame animatedImageFrame) {
        double dWidth = this.mRenderedBounds.width();
        double width = this.mAnimatedImage.getWidth();
        Double.isNaN(dWidth);
        Double.isNaN(width);
        double d = dWidth / width;
        double dHeight = this.mRenderedBounds.height();
        double height = this.mAnimatedImage.getHeight();
        Double.isNaN(dHeight);
        Double.isNaN(height);
        double d2 = dHeight / height;
        double width2 = animatedImageFrame.getWidth();
        Double.isNaN(width2);
        int iRound = (int) Math.round(width2 * d);
        double height2 = animatedImageFrame.getHeight();
        Double.isNaN(height2);
        int iRound2 = (int) Math.round(height2 * d2);
        double xOffset = animatedImageFrame.getXOffset();
        Double.isNaN(xOffset);
        int i = (int) (xOffset * d);
        double yOffset = animatedImageFrame.getYOffset();
        Double.isNaN(yOffset);
        int i2 = (int) (yOffset * d2);
        synchronized (this) {
            if (this.mTempBitmap == null) {
                this.mTempBitmap = Bitmap.createBitmap(this.mRenderedBounds.width(), this.mRenderedBounds.height(), Bitmap.Config.ARGB_8888);
            }
            this.mTempBitmap.eraseColor(0);
            animatedImageFrame.renderFrame(iRound, iRound2, this.mTempBitmap);
            canvas.drawBitmap(this.mTempBitmap, i, i2, (Paint) null);
        }
    }

    public void renderImageDoesNotSupportScaling(Canvas canvas, AnimatedImageFrame animatedImageFrame) {
        int width = animatedImageFrame.getWidth();
        int height = animatedImageFrame.getHeight();
        int xOffset = animatedImageFrame.getXOffset();
        int yOffset = animatedImageFrame.getYOffset();
        synchronized (this) {
            if (this.mTempBitmap == null) {
                this.mTempBitmap = Bitmap.createBitmap(this.mAnimatedImage.getWidth(), this.mAnimatedImage.getHeight(), Bitmap.Config.ARGB_8888);
            }
            this.mTempBitmap.eraseColor(0);
            animatedImageFrame.renderFrame(width, height, this.mTempBitmap);
            float fWidth = this.mRenderedBounds.width() / this.mAnimatedImage.getWidth();
            float fHeight = this.mRenderedBounds.height() / this.mAnimatedImage.getHeight();
            canvas.save();
            canvas.scale(fWidth, fHeight);
            canvas.translate(xOffset, yOffset);
            canvas.drawBitmap(this.mTempBitmap, 0.0f, 0.0f, (Paint) null);
            canvas.restore();
        }
    }
}
