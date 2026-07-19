package com.facebook.imagepipeline.producers;

import bolts.Continuation;
import bolts.Task;
import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.cache.BufferedDiskCache;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MediaIdExtractor;
import com.facebook.imagepipeline.cache.MediaVariationsIndex;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.MediaVariations;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class MediaVariationsFallbackProducer implements Producer<EncodedImage> {
    private final CacheKeyFactory mCacheKeyFactory;
    private final BufferedDiskCache mDefaultBufferedDiskCache;
    private final Producer<EncodedImage> mInputProducer;

    @Nullable
    private MediaIdExtractor mMediaIdExtractor;
    private final MediaVariationsIndex mMediaVariationsIndex;
    private final BufferedDiskCache mSmallImageBufferedDiskCache;

    public MediaVariationsFallbackProducer(BufferedDiskCache bufferedDiskCache, BufferedDiskCache bufferedDiskCache2, CacheKeyFactory cacheKeyFactory, MediaVariationsIndex mediaVariationsIndex, @Nullable MediaIdExtractor mediaIdExtractor, Producer<EncodedImage> producer) {
        this.mDefaultBufferedDiskCache = bufferedDiskCache;
        this.mSmallImageBufferedDiskCache = bufferedDiskCache2;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mMediaVariationsIndex = mediaVariationsIndex;
        this.mMediaIdExtractor = mediaIdExtractor;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(final Consumer<EncodedImage> consumer, final ProducerContext producerContext) {
        String str;
        String mediaId;
        final ImageRequest imageRequest = producerContext.getImageRequest();
        final ResizeOptions resizeOptions = imageRequest.getResizeOptions();
        MediaVariations mediaVariations = imageRequest.getMediaVariations();
        if (!imageRequest.isDiskCacheEnabled() || resizeOptions == null || resizeOptions.height <= 0 || resizeOptions.width <= 0 || imageRequest.getBytesRange() != null) {
            startInputProducerWithExistingConsumer(consumer, producerContext);
            return;
        }
        if (mediaVariations == null) {
            MediaIdExtractor mediaIdExtractor = this.mMediaIdExtractor;
            if (mediaIdExtractor == null) {
                str = null;
                mediaId = null;
            } else {
                String mediaIdFrom = mediaIdExtractor.getMediaIdFrom(imageRequest.getSourceUri());
                str = "id_extractor";
                mediaId = mediaIdFrom;
            }
        } else {
            str = "index_db";
            mediaId = mediaVariations.getMediaId();
        }
        if (mediaVariations == null && mediaId == null) {
            startInputProducerWithExistingConsumer(consumer, producerContext);
            return;
        }
        producerContext.getListener().onProducerStart(producerContext.getId(), "MediaVariationsFallbackProducer");
        boolean z = false;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        if (mediaVariations != null && mediaVariations.getVariantsCount() > 0) {
            chooseFromVariants(consumer, producerContext, imageRequest, mediaVariations, resizeOptions, atomicBoolean);
        } else {
            MediaVariations.Builder builderNewBuilderForMediaId = MediaVariations.newBuilderForMediaId(mediaId);
            if (mediaVariations != null && mediaVariations.shouldForceRequestForSpecifiedUri()) {
                z = true;
            }
            final String str2 = mediaId;
            this.mMediaVariationsIndex.getCachedVariants(mediaId, builderNewBuilderForMediaId.setForceRequestForSpecifiedUri(z).setSource(str)).continueWith(new Continuation<MediaVariations, Object>() { // from class: com.facebook.imagepipeline.producers.MediaVariationsFallbackProducer.1
                @Override // bolts.Continuation
                public Object then(Task<MediaVariations> task) throws Exception {
                    if (task.isCancelled() || task.isFaulted()) {
                        return task;
                    }
                    try {
                        if (task.getResult() == null) {
                            MediaVariationsFallbackProducer.this.startInputProducerWithWrappedConsumer(consumer, producerContext, str2);
                            return null;
                        }
                        return MediaVariationsFallbackProducer.this.chooseFromVariants(consumer, producerContext, imageRequest, task.getResult(), resizeOptions, atomicBoolean);
                    } catch (Exception unused) {
                        return null;
                    }
                }
            });
        }
        subscribeTaskForRequestCancellation(atomicBoolean, producerContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task chooseFromVariants(Consumer<EncodedImage> consumer, ProducerContext producerContext, ImageRequest imageRequest, MediaVariations mediaVariations, ResizeOptions resizeOptions, AtomicBoolean atomicBoolean) {
        if (mediaVariations.getVariantsCount() == 0) {
            return Task.forResult((EncodedImage) null).continueWith(onFinishDiskReads(consumer, producerContext, imageRequest, mediaVariations, Collections.emptyList(), 0, atomicBoolean));
        }
        return attemptCacheReadForVariant(consumer, producerContext, imageRequest, mediaVariations, mediaVariations.getSortedVariants(new VariantComparator(resizeOptions)), 0, atomicBoolean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task attemptCacheReadForVariant(Consumer<EncodedImage> consumer, ProducerContext producerContext, ImageRequest imageRequest, MediaVariations mediaVariations, List<MediaVariations.Variant> list, int i, AtomicBoolean atomicBoolean) {
        ImageRequest.CacheChoice cacheChoice;
        MediaVariations.Variant variant = list.get(i);
        CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, variant.getUri(), producerContext.getCallerContext());
        if (variant.getCacheChoice() == null) {
            cacheChoice = imageRequest.getCacheChoice();
        } else {
            cacheChoice = variant.getCacheChoice();
        }
        return (cacheChoice == ImageRequest.CacheChoice.SMALL ? this.mSmallImageBufferedDiskCache : this.mDefaultBufferedDiskCache).get(encodedCacheKey, atomicBoolean).continueWith(onFinishDiskReads(consumer, producerContext, imageRequest, mediaVariations, list, i, atomicBoolean));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isBigEnoughForRequestedSize(MediaVariations.Variant variant, ResizeOptions resizeOptions) {
        return variant.getWidth() >= resizeOptions.width && variant.getHeight() >= resizeOptions.height;
    }

    private Continuation<EncodedImage, Void> onFinishDiskReads(final Consumer<EncodedImage> consumer, final ProducerContext producerContext, final ImageRequest imageRequest, final MediaVariations mediaVariations, final List<MediaVariations.Variant> list, final int i, final AtomicBoolean atomicBoolean) {
        final String id = producerContext.getId();
        final ProducerListener listener = producerContext.getListener();
        return new Continuation<EncodedImage, Void>() { // from class: com.facebook.imagepipeline.producers.MediaVariationsFallbackProducer.2
            @Override // bolts.Continuation
            public Void then(Task<EncodedImage> task) throws Exception {
                boolean z;
                ProducerContext producerContext2;
                boolean z2 = true;
                if (MediaVariationsFallbackProducer.isTaskCancelled(task)) {
                    listener.onProducerFinishWithCancellation(id, "MediaVariationsFallbackProducer", null);
                    consumer.onCancellation();
                    z = false;
                    z2 = false;
                } else if (task.isFaulted()) {
                    listener.onProducerFinishWithFailure(id, "MediaVariationsFallbackProducer", task.getError(), null);
                    MediaVariationsFallbackProducer.this.startInputProducerWithWrappedConsumer(consumer, producerContext, mediaVariations.getMediaId());
                    z = true;
                } else {
                    EncodedImage result = task.getResult();
                    if (result != null) {
                        boolean z3 = !mediaVariations.shouldForceRequestForSpecifiedUri() && MediaVariationsFallbackProducer.isBigEnoughForRequestedSize((MediaVariations.Variant) list.get(i), imageRequest.getResizeOptions());
                        ProducerListener producerListener = listener;
                        String str = id;
                        producerListener.onProducerFinishWithSuccess(str, "MediaVariationsFallbackProducer", MediaVariationsFallbackProducer.getExtraMap(producerListener, str, true, list.size(), mediaVariations.getSource(), z3));
                        if (z3) {
                            listener.onUltimateProducerReached(id, "MediaVariationsFallbackProducer", true);
                            consumer.onProgressUpdate(1.0f);
                        }
                        int iTurnOnStatusFlag = BaseConsumer.turnOnStatusFlag(BaseConsumer.simpleStatusForIsLast(z3), 2);
                        if (!z3) {
                            iTurnOnStatusFlag = BaseConsumer.turnOnStatusFlag(iTurnOnStatusFlag, 4);
                        }
                        consumer.onNewResult(result, iTurnOnStatusFlag);
                        result.close();
                        z2 = !z3;
                        z = false;
                    } else if (i < list.size() - 1) {
                        MediaVariationsFallbackProducer.this.attemptCacheReadForVariant(consumer, producerContext, imageRequest, mediaVariations, list, i + 1, atomicBoolean);
                        z = false;
                        z2 = false;
                    } else {
                        ProducerListener producerListener2 = listener;
                        String str2 = id;
                        producerListener2.onProducerFinishWithSuccess(str2, "MediaVariationsFallbackProducer", MediaVariationsFallbackProducer.getExtraMap(producerListener2, str2, false, list.size(), mediaVariations.getSource(), false));
                        z = true;
                    }
                }
                if (z2) {
                    if (producerContext.isIntermediateResultExpected() && !z) {
                        SettableProducerContext settableProducerContext = new SettableProducerContext(producerContext);
                        settableProducerContext.setIsIntermediateResultExpected(false);
                        producerContext2 = settableProducerContext;
                    } else {
                        producerContext2 = producerContext;
                    }
                    MediaVariationsFallbackProducer.this.startInputProducerWithWrappedConsumer(consumer, producerContext2, mediaVariations.getMediaId());
                }
                return null;
            }
        };
    }

    private void startInputProducerWithExistingConsumer(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        this.mInputProducer.produceResults(consumer, producerContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInputProducerWithWrappedConsumer(Consumer<EncodedImage> consumer, ProducerContext producerContext, String str) {
        this.mInputProducer.produceResults(new MediaVariationsConsumer(consumer, producerContext, str), producerContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTaskCancelled(Task<?> task) {
        return task.isCancelled() || (task.isFaulted() && (task.getError() instanceof CancellationException));
    }

    static Map<String, String> getExtraMap(ProducerListener producerListener, String str, boolean z, int i, String str2, boolean z2) {
        if (!producerListener.requiresExtraMap(str)) {
            return null;
        }
        if (z) {
            return ImmutableMap.m315of("cached_value_found", String.valueOf(true), "cached_value_used_as_last", String.valueOf(z2), "variants_count", String.valueOf(i), "variants_source", str2);
        }
        return ImmutableMap.m314of("cached_value_found", String.valueOf(false), "variants_count", String.valueOf(i), "variants_source", str2);
    }

    private void subscribeTaskForRequestCancellation(final AtomicBoolean atomicBoolean, ProducerContext producerContext) {
        producerContext.addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.MediaVariationsFallbackProducer.3
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                atomicBoolean.set(true);
            }
        });
    }

    class MediaVariationsConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private final String mMediaId;
        private final ProducerContext mProducerContext;

        public MediaVariationsConsumer(Consumer<EncodedImage> consumer, ProducerContext producerContext, String str) {
            super(consumer);
            this.mProducerContext = producerContext;
            this.mMediaId = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(EncodedImage encodedImage, int i) {
            if (isLast(i) && encodedImage != null && !statusHasFlag(i, 8)) {
                storeResultInDatabase(encodedImage);
            }
            getConsumer().onNewResult(encodedImage, i);
        }

        private void storeResultInDatabase(EncodedImage encodedImage) {
            ImageRequest imageRequest = this.mProducerContext.getImageRequest();
            if (!imageRequest.isDiskCacheEnabled() || this.mMediaId == null) {
                return;
            }
            MediaVariationsFallbackProducer.this.mMediaVariationsIndex.saveCachedVariant(this.mMediaId, imageRequest.getCacheChoice() == null ? ImageRequest.CacheChoice.DEFAULT : imageRequest.getCacheChoice(), MediaVariationsFallbackProducer.this.mCacheKeyFactory.getEncodedCacheKey(imageRequest, this.mProducerContext.getCallerContext()), encodedImage);
        }
    }

    static class VariantComparator implements Comparator<MediaVariations.Variant> {
        private final ResizeOptions mResizeOptions;

        VariantComparator(ResizeOptions resizeOptions) {
            this.mResizeOptions = resizeOptions;
        }

        @Override // java.util.Comparator
        public int compare(MediaVariations.Variant variant, MediaVariations.Variant variant2) {
            boolean zIsBigEnoughForRequestedSize = MediaVariationsFallbackProducer.isBigEnoughForRequestedSize(variant, this.mResizeOptions);
            boolean zIsBigEnoughForRequestedSize2 = MediaVariationsFallbackProducer.isBigEnoughForRequestedSize(variant2, this.mResizeOptions);
            if (zIsBigEnoughForRequestedSize && zIsBigEnoughForRequestedSize2) {
                return variant.getWidth() - variant2.getWidth();
            }
            if (zIsBigEnoughForRequestedSize) {
                return -1;
            }
            if (zIsBigEnoughForRequestedSize2) {
                return 1;
            }
            return variant2.getWidth() - variant.getWidth();
        }
    }
}
