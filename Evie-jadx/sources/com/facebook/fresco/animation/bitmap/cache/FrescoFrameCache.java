package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import android.util.SparseArray;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.common.references.CloseableReference;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import com.facebook.imagepipeline.animated.impl.AnimatedFrameCache;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;
import com.facebook.imagepipeline.image.ImmutableQualityInfo;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class FrescoFrameCache implements BitmapFrameCache {
    private static final Class<?> TAG = FrescoFrameCache.class;
    private final AnimatedFrameCache mAnimatedFrameCache;
    private final boolean mEnableBitmapReusing;

    @GuardedBy("this")
    @Nullable
    private CloseableReference<CloseableImage> mLastRenderedItem;

    @GuardedBy("this")
    private final SparseArray<CloseableReference<CloseableImage>> mPreparedPendingFrames = new SparseArray<>();

    public FrescoFrameCache(AnimatedFrameCache animatedFrameCache, boolean z) {
        this.mAnimatedFrameCache = animatedFrameCache;
        this.mEnableBitmapReusing = z;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized CloseableReference<Bitmap> getCachedFrame(int i) {
        return convertToBitmapReferenceAndClose(this.mAnimatedFrameCache.get(i));
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized CloseableReference<Bitmap> getFallbackFrame(int i) {
        return convertToBitmapReferenceAndClose(CloseableReference.cloneOrNull(this.mLastRenderedItem));
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized CloseableReference<Bitmap> getBitmapToReuseForFrame(int i, int i2, int i3) {
        if (!this.mEnableBitmapReusing) {
            return null;
        }
        return convertToBitmapReferenceAndClose(this.mAnimatedFrameCache.getForReuse());
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized boolean contains(int i) {
        return this.mAnimatedFrameCache.contains(i);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void clear() {
        CloseableReference.closeSafely(this.mLastRenderedItem);
        this.mLastRenderedItem = null;
        for (int i = 0; i < this.mPreparedPendingFrames.size(); i++) {
            CloseableReference.closeSafely(this.mPreparedPendingFrames.valueAt(i));
        }
        this.mPreparedPendingFrames.clear();
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void onFrameRendered(int i, CloseableReference<Bitmap> closeableReference, int i2) {
        Preconditions.checkNotNull(closeableReference);
        removePreparedReference(i);
        CloseableReference<CloseableImage> closeableReferenceCreateImageReference = null;
        try {
            closeableReferenceCreateImageReference = createImageReference(closeableReference);
            if (closeableReferenceCreateImageReference != null) {
                CloseableReference.closeSafely(this.mLastRenderedItem);
                this.mLastRenderedItem = this.mAnimatedFrameCache.cache(i, closeableReferenceCreateImageReference);
            }
            CloseableReference.closeSafely(closeableReferenceCreateImageReference);
        } catch (Throwable th) {
            CloseableReference.closeSafely(closeableReferenceCreateImageReference);
            throw th;
        }
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void onFramePrepared(int i, CloseableReference<Bitmap> closeableReference, int i2) {
        Preconditions.checkNotNull(closeableReference);
        try {
            CloseableReference<CloseableImage> closeableReferenceCreateImageReference = createImageReference(closeableReference);
            if (closeableReferenceCreateImageReference != null) {
                CloseableReference<CloseableImage> closeableReferenceCache = this.mAnimatedFrameCache.cache(i, closeableReferenceCreateImageReference);
                if (CloseableReference.isValid(closeableReferenceCache)) {
                    CloseableReference.closeSafely(this.mPreparedPendingFrames.get(i));
                    this.mPreparedPendingFrames.put(i, closeableReferenceCache);
                    FLog.m328v(TAG, "cachePreparedFrame(%d) cached. Pending frames: %s", Integer.valueOf(i), this.mPreparedPendingFrames);
                }
                CloseableReference.closeSafely(closeableReferenceCreateImageReference);
                return;
            }
            CloseableReference.closeSafely(closeableReferenceCreateImageReference);
        } catch (Throwable th) {
            CloseableReference.closeSafely((CloseableReference<?>) null);
            throw th;
        }
    }

    private synchronized void removePreparedReference(int i) {
        CloseableReference<CloseableImage> closeableReference = this.mPreparedPendingFrames.get(i);
        if (closeableReference != null) {
            this.mPreparedPendingFrames.delete(i);
            CloseableReference.closeSafely(closeableReference);
            FLog.m328v(TAG, "removePreparedReference(%d) removed. Pending frames: %s", Integer.valueOf(i), this.mPreparedPendingFrames);
        }
    }

    @Nullable
    static CloseableReference<Bitmap> convertToBitmapReferenceAndClose(@Nullable CloseableReference<CloseableImage> closeableReference) {
        CloseableStaticBitmap closeableStaticBitmap;
        try {
            if (CloseableReference.isValid(closeableReference) && (closeableReference.get() instanceof CloseableStaticBitmap) && (closeableStaticBitmap = (CloseableStaticBitmap) closeableReference.get()) != null) {
                return closeableStaticBitmap.cloneUnderlyingBitmapReference();
            }
            return null;
        } finally {
            CloseableReference.closeSafely(closeableReference);
        }
    }

    @Nullable
    private static CloseableReference<CloseableImage> createImageReference(CloseableReference<Bitmap> closeableReference) {
        return CloseableReference.m347of(new CloseableStaticBitmap(closeableReference, ImmutableQualityInfo.FULL_QUALITY, 0));
    }
}
