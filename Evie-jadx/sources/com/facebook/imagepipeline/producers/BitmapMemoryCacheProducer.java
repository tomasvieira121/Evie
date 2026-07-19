package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.QualityInfo;
import com.facebook.imagepipeline.request.ImageRequest;

/* JADX INFO: loaded from: classes.dex */
public class BitmapMemoryCacheProducer implements Producer<CloseableReference<CloseableImage>> {
    private final CacheKeyFactory mCacheKeyFactory;
    private final Producer<CloseableReference<CloseableImage>> mInputProducer;
    private final MemoryCache<CacheKey, CloseableImage> mMemoryCache;

    protected String getProducerName() {
        return "BitmapMemoryCacheProducer";
    }

    public BitmapMemoryCacheProducer(MemoryCache<CacheKey, CloseableImage> memoryCache, CacheKeyFactory cacheKeyFactory, Producer<CloseableReference<CloseableImage>> producer) {
        this.mMemoryCache = memoryCache;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext) {
        ProducerListener listener = producerContext.getListener();
        String id = producerContext.getId();
        listener.onProducerStart(id, getProducerName());
        CacheKey bitmapCacheKey = this.mCacheKeyFactory.getBitmapCacheKey(producerContext.getImageRequest(), producerContext.getCallerContext());
        CloseableReference<CloseableImage> closeableReference = this.mMemoryCache.get(bitmapCacheKey);
        if (closeableReference != null) {
            boolean zIsOfFullQuality = closeableReference.get().getQualityInfo().isOfFullQuality();
            if (zIsOfFullQuality) {
                listener.onProducerFinishWithSuccess(id, getProducerName(), listener.requiresExtraMap(id) ? ImmutableMap.m312of("cached_value_found", "true") : null);
                listener.onUltimateProducerReached(id, getProducerName(), true);
                consumer.onProgressUpdate(1.0f);
            }
            consumer.onNewResult(closeableReference, BaseConsumer.simpleStatusForIsLast(zIsOfFullQuality));
            closeableReference.close();
            if (zIsOfFullQuality) {
                return;
            }
        }
        if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE.getValue()) {
            listener.onProducerFinishWithSuccess(id, getProducerName(), listener.requiresExtraMap(id) ? ImmutableMap.m312of("cached_value_found", "false") : null);
            listener.onUltimateProducerReached(id, getProducerName(), false);
            consumer.onNewResult(null, 1);
        } else {
            Consumer<CloseableReference<CloseableImage>> consumerWrapConsumer = wrapConsumer(consumer, bitmapCacheKey);
            listener.onProducerFinishWithSuccess(id, getProducerName(), listener.requiresExtraMap(id) ? ImmutableMap.m312of("cached_value_found", "false") : null);
            this.mInputProducer.produceResults(consumerWrapConsumer, producerContext);
        }
    }

    protected Consumer<CloseableReference<CloseableImage>> wrapConsumer(Consumer<CloseableReference<CloseableImage>> consumer, final CacheKey cacheKey) {
        return new DelegatingConsumer<CloseableReference<CloseableImage>, CloseableReference<CloseableImage>>(consumer) { // from class: com.facebook.imagepipeline.producers.BitmapMemoryCacheProducer.1
            @Override // com.facebook.imagepipeline.producers.BaseConsumer
            public void onNewResultImpl(CloseableReference<CloseableImage> closeableReference, int i) {
                CloseableReference<CloseableImage> closeableReference2;
                boolean zIsLast = isLast(i);
                if (closeableReference == null) {
                    if (zIsLast) {
                        getConsumer().onNewResult(null, i);
                        return;
                    }
                    return;
                }
                if (!closeableReference.get().isStateful() && !statusHasFlag(i, 8)) {
                    if (!zIsLast && (closeableReference2 = BitmapMemoryCacheProducer.this.mMemoryCache.get(cacheKey)) != null) {
                        try {
                            QualityInfo qualityInfo = closeableReference.get().getQualityInfo();
                            QualityInfo qualityInfo2 = closeableReference2.get().getQualityInfo();
                            if (qualityInfo2.isOfFullQuality() || qualityInfo2.getQuality() >= qualityInfo.getQuality()) {
                                getConsumer().onNewResult(closeableReference2, i);
                                CloseableReference.closeSafely(closeableReference2);
                                return;
                            }
                            CloseableReference.closeSafely(closeableReference2);
                        } catch (Throwable th) {
                            CloseableReference.closeSafely(closeableReference2);
                            throw th;
                        }
                    }
                    CloseableReference<CloseableImage> closeableReferenceCache = BitmapMemoryCacheProducer.this.mMemoryCache.cache(cacheKey, closeableReference);
                    if (zIsLast) {
                        try {
                            getConsumer().onProgressUpdate(1.0f);
                        } finally {
                            CloseableReference.closeSafely(closeableReferenceCache);
                        }
                    }
                    Consumer<CloseableReference<CloseableImage>> consumer2 = getConsumer();
                    if (closeableReferenceCache != null) {
                        closeableReference = closeableReferenceCache;
                    }
                    consumer2.onNewResult(closeableReference, i);
                    return;
                }
                getConsumer().onNewResult(closeableReference, i);
            }
        };
    }
}
