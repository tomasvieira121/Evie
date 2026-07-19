package com.facebook.imagepipeline.bitmaps;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imageformat.DefaultImageFormats;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.platform.PlatformDecoder;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
@TargetApi(11)
public class HoneycombBitmapFactory extends PlatformBitmapFactory {
    private final EmptyJpegGenerator mJpegGenerator;
    private final PlatformDecoder mPurgeableDecoder;

    public HoneycombBitmapFactory(EmptyJpegGenerator emptyJpegGenerator, PlatformDecoder platformDecoder) {
        this.mJpegGenerator = emptyJpegGenerator;
        this.mPurgeableDecoder = platformDecoder;
    }

    @Override // com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory
    @TargetApi(12)
    public CloseableReference<Bitmap> createBitmapInternal(int i, int i2, Bitmap.Config config) throws Throwable {
        CloseableReference<PooledByteBuffer> closeableReferenceGenerate = this.mJpegGenerator.generate((short) i, (short) i2);
        try {
            EncodedImage encodedImage = new EncodedImage(closeableReferenceGenerate);
            encodedImage.setImageFormat(DefaultImageFormats.JPEG);
            try {
                CloseableReference<Bitmap> closeableReferenceDecodeJPEGFromEncodedImage = this.mPurgeableDecoder.decodeJPEGFromEncodedImage(encodedImage, config, closeableReferenceGenerate.get().size());
                closeableReferenceDecodeJPEGFromEncodedImage.get().setHasAlpha(true);
                closeableReferenceDecodeJPEGFromEncodedImage.get().eraseColor(0);
                EncodedImage.closeSafely(encodedImage);
                closeableReferenceGenerate.close();
                return closeableReferenceDecodeJPEGFromEncodedImage;
            } catch (Throwable th) {
                EncodedImage.closeSafely(encodedImage);
                throw th;
            }
        } catch (Throwable th2) {
            closeableReferenceGenerate.close();
            throw th2;
        }
    }
}
