package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.fresco.animation.bitmap.BitmapFrameCache;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class KeepLastFrameCache implements BitmapFrameCache {

    @Nullable
    private BitmapFrameCache.FrameCacheListener mFrameCacheListener;

    @GuardedBy("this")
    @Nullable
    private CloseableReference<Bitmap> mLastBitmapReference;
    private int mLastFrameNumber = -1;

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public void onFramePrepared(int i, CloseableReference<Bitmap> closeableReference, int i2) {
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized CloseableReference<Bitmap> getCachedFrame(int i) {
        if (this.mLastFrameNumber != i) {
            return null;
        }
        return CloseableReference.cloneOrNull(this.mLastBitmapReference);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    @Nullable
    public synchronized CloseableReference<Bitmap> getFallbackFrame(int i) {
        return CloseableReference.cloneOrNull(this.mLastBitmapReference);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized CloseableReference<Bitmap> getBitmapToReuseForFrame(int i, int i2, int i3) {
        CloseableReference<Bitmap> closeableReferenceCloneOrNull;
        try {
            closeableReferenceCloneOrNull = CloseableReference.cloneOrNull(this.mLastBitmapReference);
            closeAndResetLastBitmapReference();
        } catch (Throwable th) {
            closeAndResetLastBitmapReference();
            throw th;
        }
        return closeableReferenceCloneOrNull;
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized boolean contains(int i) {
        return i == this.mLastFrameNumber && CloseableReference.isValid(this.mLastBitmapReference);
    }

    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void clear() {
        closeAndResetLastBitmapReference();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003a A[Catch: all -> 0x0043, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:10:0x001b, B:12:0x0024, B:14:0x0029, B:15:0x0030, B:17:0x003a, B:18:0x003f), top: B:24:0x0003 }] */
    @Override // com.facebook.fresco.animation.bitmap.BitmapFrameCache
    public synchronized void onFrameRendered(int i, CloseableReference<Bitmap> closeableReference, int i2) {
        if (closeableReference != null) {
            if (this.mLastBitmapReference != null && closeableReference.get().equals(this.mLastBitmapReference.get())) {
                return;
            }
            CloseableReference.closeSafely(this.mLastBitmapReference);
            if (this.mFrameCacheListener != null && this.mLastFrameNumber != -1) {
                this.mFrameCacheListener.onFrameEvicted(this, this.mLastFrameNumber);
            }
            this.mLastBitmapReference = CloseableReference.cloneOrNull(closeableReference);
            if (this.mFrameCacheListener != null) {
                this.mFrameCacheListener.onFrameCached(this, i);
            }
            this.mLastFrameNumber = i;
            return;
        }
        CloseableReference.closeSafely(this.mLastBitmapReference);
        if (this.mFrameCacheListener != null) {
            this.mFrameCacheListener.onFrameEvicted(this, this.mLastFrameNumber);
        }
        this.mLastBitmapReference = CloseableReference.cloneOrNull(closeableReference);
        if (this.mFrameCacheListener != null) {
            this.mFrameCacheListener.onFrameCached(this, i);
        }
        this.mLastFrameNumber = i;
        return;
        throw th;
    }

    private synchronized void closeAndResetLastBitmapReference() {
        if (this.mFrameCacheListener != null && this.mLastFrameNumber != -1) {
            this.mFrameCacheListener.onFrameEvicted(this, this.mLastFrameNumber);
        }
        CloseableReference.closeSafely(this.mLastBitmapReference);
        this.mLastBitmapReference = null;
        this.mLastFrameNumber = -1;
    }
}
