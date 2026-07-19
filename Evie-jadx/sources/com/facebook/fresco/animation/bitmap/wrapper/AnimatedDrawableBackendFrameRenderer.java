package com.facebook.fresco.animation.bitmap.wrapper;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.facebook.common.references.CloseableReference;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.fresco.animation.bitmap.BitmapFrameRenderer;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableBackend;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedDrawableBackendFrameRenderer implements BitmapFrameRenderer {
    private AnimatedDrawableBackend mAnimatedDrawableBackend;
    private AnimatedImageCompositor mAnimatedImageCompositor;
    private final BitmapFrameCache mBitmapFrameCache;
    private final AnimatedImageCompositor.Callback mCallback = new AnimatedImageCompositor.Callback() { // from class: com.facebook.fresco.animation.bitmap.wrapper.AnimatedDrawableBackendFrameRenderer.1
        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.Callback
        public void onIntermediateResult(int i, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.Callback
        @Nullable
        public CloseableReference<Bitmap> getCachedBitmap(int i) {
            return AnimatedDrawableBackendFrameRenderer.this.mBitmapFrameCache.getCachedFrame(i);
        }
    };

    public AnimatedDrawableBackendFrameRenderer(BitmapFrameCache bitmapFrameCache, AnimatedDrawableBackend animatedDrawableBackend) {
        this.mBitmapFrameCache = bitmapFrameCache;
        this.mAnimatedDrawableBackend = animatedDrawableBackend;
        this.mAnimatedImageCompositor = new AnimatedImageCompositor(this.mAnimatedDrawableBackend, this.mCallback);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public void setBounds(@Nullable Rect rect) {
        AnimatedDrawableBackend animatedDrawableBackendForNewBounds = this.mAnimatedDrawableBackend.forNewBounds(rect);
        if (animatedDrawableBackendForNewBounds != this.mAnimatedDrawableBackend) {
            this.mAnimatedDrawableBackend = animatedDrawableBackendForNewBounds;
            this.mAnimatedImageCompositor = new AnimatedImageCompositor(this.mAnimatedDrawableBackend, this.mCallback);
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public int getIntrinsicWidth() {
        return this.mAnimatedDrawableBackend.getWidth();
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public int getIntrinsicHeight() {
        return this.mAnimatedDrawableBackend.getHeight();
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameRenderer
    public boolean renderFrame(int i, Bitmap bitmap) {
        this.mAnimatedImageCompositor.renderFrame(i, bitmap);
        return true;
    }
}
