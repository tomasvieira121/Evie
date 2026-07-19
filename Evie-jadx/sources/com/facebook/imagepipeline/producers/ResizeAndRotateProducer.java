package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.common.memory.PooledByteBufferOutputStream;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.util.TriState;
import com.facebook.imageformat.DefaultImageFormats;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.nativecode.JpegTranscoder;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ResizeAndRotateProducer implements Producer<EncodedImage> {
    private final Executor mExecutor;
    private final Producer<EncodedImage> mInputProducer;
    private final PooledByteBufferFactory mPooledByteBufferFactory;
    private final boolean mResizingEnabled;
    private final boolean mUseDownsamplingRatio;

    static int roundNumerator(float f, float f2) {
        return (int) (f2 + (f * 8.0f));
    }

    private static boolean shouldResize(int i) {
        return i < 8;
    }

    public ResizeAndRotateProducer(Executor executor, PooledByteBufferFactory pooledByteBufferFactory, boolean z, Producer<EncodedImage> producer, boolean z2) {
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
        this.mPooledByteBufferFactory = (PooledByteBufferFactory) Preconditions.checkNotNull(pooledByteBufferFactory);
        this.mResizingEnabled = z;
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
        this.mUseDownsamplingRatio = z2;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        this.mInputProducer.produceResults(new TransformingConsumer(consumer, producerContext), producerContext);
    }

    private class TransformingConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private boolean mIsCancelled;
        private final JobScheduler mJobScheduler;
        private final ProducerContext mProducerContext;

        public TransformingConsumer(final Consumer<EncodedImage> consumer, ProducerContext producerContext) {
            super(consumer);
            this.mIsCancelled = false;
            this.mProducerContext = producerContext;
            this.mJobScheduler = new JobScheduler(ResizeAndRotateProducer.this.mExecutor, new JobScheduler.JobRunnable() { // from class: com.facebook.imagepipeline.producers.ResizeAndRotateProducer.TransformingConsumer.1
                @Override // com.facebook.imagepipeline.producers.JobScheduler.JobRunnable
                public void run(EncodedImage encodedImage, int i) throws Throwable {
                    TransformingConsumer.this.doTransform(encodedImage, i);
                }
            }, 100);
            this.mProducerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.ResizeAndRotateProducer.TransformingConsumer.2
                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onIsIntermediateResultExpectedChanged() {
                    if (TransformingConsumer.this.mProducerContext.isIntermediateResultExpected()) {
                        TransformingConsumer.this.mJobScheduler.scheduleJob();
                    }
                }

                @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
                public void onCancellationRequested() {
                    TransformingConsumer.this.mJobScheduler.clearJob();
                    TransformingConsumer.this.mIsCancelled = true;
                    consumer.onCancellation();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(@Nullable EncodedImage encodedImage, int i) {
            if (this.mIsCancelled) {
                return;
            }
            boolean zIsLast = isLast(i);
            if (encodedImage == null) {
                if (zIsLast) {
                    getConsumer().onNewResult(null, 1);
                    return;
                }
                return;
            }
            TriState triStateShouldTransform = ResizeAndRotateProducer.shouldTransform(this.mProducerContext.getImageRequest(), encodedImage, ResizeAndRotateProducer.this.mResizingEnabled);
            if (zIsLast || triStateShouldTransform != TriState.UNSET) {
                if (triStateShouldTransform != TriState.YES) {
                    if (!this.mProducerContext.getImageRequest().getRotationOptions().canDeferUntilRendered() && encodedImage.getRotationAngle() != 0 && encodedImage.getRotationAngle() != -1) {
                        encodedImage = moveImage(encodedImage);
                        encodedImage.setRotationAngle(0);
                    }
                    getConsumer().onNewResult(encodedImage, i);
                    return;
                }
                if (this.mJobScheduler.updateJob(encodedImage, i)) {
                    if (zIsLast || this.mProducerContext.isIntermediateResultExpected()) {
                        this.mJobScheduler.scheduleJob();
                    }
                }
            }
        }

        private EncodedImage moveImage(EncodedImage encodedImage) {
            EncodedImage encodedImageCloneOrNull = EncodedImage.cloneOrNull(encodedImage);
            encodedImage.close();
            return encodedImageCloneOrNull;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doTransform(EncodedImage encodedImage, int i) throws Throwable {
            InputStream inputStream;
            this.mProducerContext.getListener().onProducerStart(this.mProducerContext.getId(), "ResizeAndRotateProducer");
            ImageRequest imageRequest = this.mProducerContext.getImageRequest();
            PooledByteBufferOutputStream pooledByteBufferOutputStreamNewOutputStream = ResizeAndRotateProducer.this.mPooledByteBufferFactory.newOutputStream();
            Map<String, String> map = null;
            InputStream inputStream2 = null;
            try {
                try {
                    int softwareNumerator = ResizeAndRotateProducer.getSoftwareNumerator(imageRequest, encodedImage, ResizeAndRotateProducer.this.mResizingEnabled);
                    int iCalculateDownsampleNumerator = ResizeAndRotateProducer.calculateDownsampleNumerator(DownsampleUtil.determineSampleSize(imageRequest, encodedImage));
                    int i2 = ResizeAndRotateProducer.this.mUseDownsamplingRatio ? iCalculateDownsampleNumerator : softwareNumerator;
                    int rotationAngle = ResizeAndRotateProducer.getRotationAngle(imageRequest.getRotationOptions(), encodedImage);
                    Map<String, String> extraMap = getExtraMap(encodedImage, imageRequest, i2, iCalculateDownsampleNumerator, softwareNumerator, rotationAngle);
                    try {
                        InputStream inputStream3 = encodedImage.getInputStream();
                        JpegTranscoder.transcodeJpeg(inputStream3, pooledByteBufferOutputStreamNewOutputStream, rotationAngle, i2, 85);
                        CloseableReference closeableReferenceM347of = CloseableReference.m347of(pooledByteBufferOutputStreamNewOutputStream.toByteBuffer());
                        try {
                            EncodedImage encodedImage2 = new EncodedImage((CloseableReference<PooledByteBuffer>) closeableReferenceM347of);
                            encodedImage2.setImageFormat(DefaultImageFormats.JPEG);
                            try {
                                encodedImage2.parseMetaData();
                                this.mProducerContext.getListener().onProducerFinishWithSuccess(this.mProducerContext.getId(), "ResizeAndRotateProducer", extraMap);
                                getConsumer().onNewResult(encodedImage2, i);
                                EncodedImage.closeSafely(encodedImage2);
                                CloseableReference.closeSafely((CloseableReference<?>) closeableReferenceM347of);
                                Closeables.closeQuietly(inputStream3);
                                pooledByteBufferOutputStreamNewOutputStream.close();
                            } catch (Throwable th) {
                                EncodedImage.closeSafely(encodedImage2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            CloseableReference.closeSafely((CloseableReference<?>) closeableReferenceM347of);
                            throw th2;
                        }
                    } catch (Exception e) {
                        e = e;
                        map = extraMap;
                        inputStream = null;
                        try {
                            this.mProducerContext.getListener().onProducerFinishWithFailure(this.mProducerContext.getId(), "ResizeAndRotateProducer", e, map);
                            if (isLast(i)) {
                                getConsumer().onFailure(e);
                            }
                            Closeables.closeQuietly(inputStream);
                            pooledByteBufferOutputStreamNewOutputStream.close();
                        } catch (Throwable th3) {
                            th = th3;
                            inputStream2 = inputStream;
                            Closeables.closeQuietly(inputStream2);
                            pooledByteBufferOutputStreamNewOutputStream.close();
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    Closeables.closeQuietly(inputStream2);
                    pooledByteBufferOutputStreamNewOutputStream.close();
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                inputStream = null;
            }
        }

        private Map<String, String> getExtraMap(EncodedImage encodedImage, ImageRequest imageRequest, int i, int i2, int i3, int i4) {
            String str;
            String str2;
            if (!this.mProducerContext.getListener().requiresExtraMap(this.mProducerContext.getId())) {
                return null;
            }
            String str3 = encodedImage.getWidth() + "x" + encodedImage.getHeight();
            if (imageRequest.getResizeOptions() != null) {
                str = imageRequest.getResizeOptions().width + "x" + imageRequest.getResizeOptions().height;
            } else {
                str = "Unspecified";
            }
            if (i > 0) {
                str2 = i + "/8";
            } else {
                str2 = "";
            }
            HashMap map = new HashMap();
            map.put("Original size", str3);
            map.put("Requested size", str);
            map.put("Fraction", str2);
            map.put("queueTime", String.valueOf(this.mJobScheduler.getQueuedTime()));
            map.put("downsampleEnumerator", Integer.toString(i2));
            map.put("softwareEnumerator", Integer.toString(i3));
            map.put("rotationAngle", Integer.toString(i4));
            return ImmutableMap.copyOf((Map) map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState shouldTransform(ImageRequest imageRequest, EncodedImage encodedImage, boolean z) {
        if (encodedImage == null || encodedImage.getImageFormat() == ImageFormat.UNKNOWN) {
            return TriState.UNSET;
        }
        if (encodedImage.getImageFormat() != DefaultImageFormats.JPEG) {
            return TriState.NO;
        }
        return TriState.valueOf(shouldRotate(imageRequest.getRotationOptions(), encodedImage) || shouldResize(getSoftwareNumerator(imageRequest, encodedImage, z)));
    }

    static float determineResizeRatio(ResizeOptions resizeOptions, int i, int i2) {
        if (resizeOptions == null) {
            return 1.0f;
        }
        float f = i;
        float f2 = i2;
        float fMax = Math.max(resizeOptions.width / f, resizeOptions.height / f2);
        if (f * fMax > resizeOptions.maxBitmapSize) {
            fMax = resizeOptions.maxBitmapSize / f;
        }
        return f2 * fMax > resizeOptions.maxBitmapSize ? resizeOptions.maxBitmapSize / f2 : fMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSoftwareNumerator(ImageRequest imageRequest, EncodedImage encodedImage, boolean z) {
        ResizeOptions resizeOptions;
        int width;
        int height;
        if (!z || (resizeOptions = imageRequest.getResizeOptions()) == null) {
            return 8;
        }
        int rotationAngle = getRotationAngle(imageRequest.getRotationOptions(), encodedImage);
        boolean z2 = rotationAngle == 90 || rotationAngle == 270;
        if (z2) {
            width = encodedImage.getHeight();
        } else {
            width = encodedImage.getWidth();
        }
        if (z2) {
            height = encodedImage.getWidth();
        } else {
            height = encodedImage.getHeight();
        }
        int iRoundNumerator = roundNumerator(determineResizeRatio(resizeOptions, width, height), resizeOptions.roundUpFraction);
        if (iRoundNumerator > 8) {
            return 8;
        }
        if (iRoundNumerator < 1) {
            return 1;
        }
        return iRoundNumerator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getRotationAngle(RotationOptions rotationOptions, EncodedImage encodedImage) {
        if (!rotationOptions.rotationEnabled()) {
            return 0;
        }
        int iExtractOrientationFromMetadata = extractOrientationFromMetadata(encodedImage);
        return rotationOptions.useImageMetadata() ? iExtractOrientationFromMetadata : (iExtractOrientationFromMetadata + rotationOptions.getForcedAngle()) % 360;
    }

    private static int extractOrientationFromMetadata(EncodedImage encodedImage) {
        int rotationAngle = encodedImage.getRotationAngle();
        if (rotationAngle == 90 || rotationAngle == 180 || rotationAngle == 270) {
            return encodedImage.getRotationAngle();
        }
        return 0;
    }

    private static boolean shouldRotate(RotationOptions rotationOptions, EncodedImage encodedImage) {
        return (rotationOptions.canDeferUntilRendered() || getRotationAngle(rotationOptions, encodedImage) == 0) ? false : true;
    }

    static int calculateDownsampleNumerator(int i) {
        return Math.max(1, 8 / i);
    }
}
