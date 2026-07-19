package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class PlatformBitmapFactory {
    private static BitmapCreationObserver sBitmapCreationObserver;

    public interface BitmapCreationObserver {
        void onBitmapCreated(Bitmap bitmap, @Nullable Object obj);
    }

    public abstract CloseableReference<Bitmap> createBitmapInternal(int i, int i2, Bitmap.Config config);

    public CloseableReference<Bitmap> createBitmap(int i, int i2, Bitmap.Config config) {
        return createBitmap(i, i2, config, null);
    }

    public CloseableReference<Bitmap> createBitmap(int i, int i2, Bitmap.Config config, @Nullable Object obj) {
        CloseableReference<Bitmap> closeableReferenceCreateBitmapInternal = createBitmapInternal(i, i2, config);
        addBitmapReference(closeableReferenceCreateBitmapInternal.get(), obj);
        return closeableReferenceCreateBitmapInternal;
    }

    public void setCreationListener(BitmapCreationObserver bitmapCreationObserver) {
        if (sBitmapCreationObserver == null) {
            sBitmapCreationObserver = bitmapCreationObserver;
        }
    }

    public void addBitmapReference(Bitmap bitmap, @Nullable Object obj) {
        BitmapCreationObserver bitmapCreationObserver = sBitmapCreationObserver;
        if (bitmapCreationObserver != null) {
            bitmapCreationObserver.onBitmapCreated(bitmap, obj);
        }
    }
}
