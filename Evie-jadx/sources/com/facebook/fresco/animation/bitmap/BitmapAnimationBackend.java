package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.common.references.CloseableReference;
import com.facebook.fresco.animation.backend.AnimationBackend;
import com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck;
import com.facebook.fresco.animation.backend.AnimationInformation;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparationStrategy;
import com.facebook.fresco.animation.bitmap.preparation.BitmapFramePreparer;
import com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class BitmapAnimationBackend implements AnimationBackend, AnimationBackendDelegateWithInactivityCheck.InactivityListener {
    private final AnimationInformation mAnimationInformation;
    private final BitmapFrameCache mBitmapFrameCache;

    @Nullable
    private final BitmapFramePreparationStrategy mBitmapFramePreparationStrategy;

    @Nullable
    private final BitmapFramePreparer mBitmapFramePreparer;
    private final BitmapFrameRenderer mBitmapFrameRenderer;
    private int mBitmapHeight;
    private int mBitmapWidth;

    @Nullable
    private Rect mBounds;

    @Nullable
    private FrameListener mFrameListener;
    private final PlatformBitmapFactory mPlatformBitmapFactory;
    private Bitmap.Config mBitmapConfig = Bitmap.Config.ARGB_8888;
    private final Paint mPaint = new Paint(6);

    public interface FrameListener {
        void onDrawFrameStart(BitmapAnimationBackend bitmapAnimationBackend, int i);

        void onFrameDrawn(BitmapAnimationBackend bitmapAnimationBackend, int i, int i2);

        void onFrameDropped(BitmapAnimationBackend bitmapAnimationBackend, int i);
    }

    public BitmapAnimationBackend(PlatformBitmapFactory platformBitmapFactory, BitmapFrameCache bitmapFrameCache, AnimationInformation animationInformation, BitmapFrameRenderer bitmapFrameRenderer, @Nullable BitmapFramePreparationStrategy bitmapFramePreparationStrategy, @Nullable BitmapFramePreparer bitmapFramePreparer) {
        this.mPlatformBitmapFactory = platformBitmapFactory;
        this.mBitmapFrameCache = bitmapFrameCache;
        this.mAnimationInformation = animationInformation;
        this.mBitmapFrameRenderer = bitmapFrameRenderer;
        this.mBitmapFramePreparationStrategy = bitmapFramePreparationStrategy;
        this.mBitmapFramePreparer = bitmapFramePreparer;
        updateBitmapDimensions();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameCount() {
        return this.mAnimationInformation.getFrameCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameDurationMs(int i) {
        return this.mAnimationInformation.getFrameDurationMs(i);
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopCount() {
        return this.mAnimationInformation.getLoopCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public boolean drawFrame(Drawable drawable, Canvas canvas, int i) {
        BitmapFramePreparer bitmapFramePreparer;
        FrameListener frameListener;
        FrameListener frameListener2 = this.mFrameListener;
        if (frameListener2 != null) {
            frameListener2.onDrawFrameStart(this, i);
        }
        boolean zDrawFrameOrFallback = drawFrameOrFallback(canvas, i, 0);
        if (!zDrawFrameOrFallback && (frameListener = this.mFrameListener) != null) {
            frameListener.onFrameDropped(this, i);
        }
        BitmapFramePreparationStrategy bitmapFramePreparationStrategy = this.mBitmapFramePreparationStrategy;
        if (bitmapFramePreparationStrategy != null && (bitmapFramePreparer = this.mBitmapFramePreparer) != null) {
            bitmapFramePreparationStrategy.prepareFrames(bitmapFramePreparer, this.mBitmapFrameCache, this, i);
        }
        return zDrawFrameOrFallback;
    }

    private boolean drawFrameOrFallback(Canvas canvas, int i, int i2) {
        CloseableReference<Bitmap> cachedFrame;
        boolean zDrawBitmapAndCache;
        int i3 = 2;
        try {
            switch (i2) {
                case 0:
                    cachedFrame = this.mBitmapFrameCache.getCachedFrame(i);
                    zDrawBitmapAndCache = drawBitmapAndCache(i, cachedFrame, canvas, 0);
                    i3 = 1;
                    break;
                case 1:
                    cachedFrame = this.mBitmapFrameCache.getBitmapToReuseForFrame(i, this.mBitmapWidth, this.mBitmapHeight);
                    zDrawBitmapAndCache = renderFrameInBitmap(i, cachedFrame) && drawBitmapAndCache(i, cachedFrame, canvas, 1);
                    break;
                case 2:
                    cachedFrame = this.mPlatformBitmapFactory.createBitmap(this.mBitmapWidth, this.mBitmapHeight, this.mBitmapConfig);
                    zDrawBitmapAndCache = renderFrameInBitmap(i, cachedFrame) && drawBitmapAndCache(i, cachedFrame, canvas, 2);
                    i3 = 3;
                    break;
                case 3:
                    cachedFrame = this.mBitmapFrameCache.getFallbackFrame(i);
                    zDrawBitmapAndCache = drawBitmapAndCache(i, cachedFrame, canvas, 3);
                    i3 = -1;
                    break;
                default:
                    CloseableReference.closeSafely((CloseableReference<?>) null);
                    return false;
            }
            CloseableReference.closeSafely(cachedFrame);
            return (zDrawBitmapAndCache || i3 == -1) ? zDrawBitmapAndCache : drawFrameOrFallback(canvas, i, i3);
        } catch (Throwable th) {
            CloseableReference.closeSafely((CloseableReference<?>) null);
            throw th;
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setBounds(@Nullable Rect rect) {
        this.mBounds = rect;
        this.mBitmapFrameRenderer.setBounds(rect);
        updateBitmapDimensions();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicWidth() {
        return this.mBitmapWidth;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicHeight() {
        return this.mBitmapHeight;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void clear() {
        this.mBitmapFrameCache.clear();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck.InactivityListener
    public void onInactive() {
        clear();
    }

    private void updateBitmapDimensions() {
        this.mBitmapWidth = this.mBitmapFrameRenderer.getIntrinsicWidth();
        if (this.mBitmapWidth == -1) {
            Rect rect = this.mBounds;
            this.mBitmapWidth = rect == null ? -1 : rect.width();
        }
        this.mBitmapHeight = this.mBitmapFrameRenderer.getIntrinsicHeight();
        if (this.mBitmapHeight == -1) {
            Rect rect2 = this.mBounds;
            this.mBitmapHeight = rect2 != null ? rect2.height() : -1;
        }
    }

    private boolean renderFrameInBitmap(int i, @Nullable CloseableReference<Bitmap> closeableReference) {
        if (!CloseableReference.isValid(closeableReference)) {
            return false;
        }
        boolean zRenderFrame = this.mBitmapFrameRenderer.renderFrame(i, closeableReference.get());
        if (!zRenderFrame) {
            CloseableReference.closeSafely(closeableReference);
        }
        return zRenderFrame;
    }

    private boolean drawBitmapAndCache(int i, @Nullable CloseableReference<Bitmap> closeableReference, Canvas canvas, int i2) {
        if (!CloseableReference.isValid(closeableReference)) {
            return false;
        }
        if (this.mBounds == null) {
            canvas.drawBitmap(closeableReference.get(), 0.0f, 0.0f, this.mPaint);
        } else {
            canvas.drawBitmap(closeableReference.get(), (Rect) null, this.mBounds, this.mPaint);
        }
        if (i2 != 3) {
            this.mBitmapFrameCache.onFrameRendered(i, closeableReference, i2);
        }
        FrameListener frameListener = this.mFrameListener;
        if (frameListener == null) {
            return true;
        }
        frameListener.onFrameDrawn(this, i, i2);
        return true;
    }
}
