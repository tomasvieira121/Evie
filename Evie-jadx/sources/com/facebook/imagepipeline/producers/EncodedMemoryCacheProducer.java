package com.facebook.imagepipeline.producers;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.CacheKeyFactory;
import com.facebook.imagepipeline.cache.MemoryCache;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;

/* JADX INFO: loaded from: classes.dex */
public class EncodedMemoryCacheProducer implements Producer<EncodedImage> {
    private final CacheKeyFactory mCacheKeyFactory;
    private final Producer<EncodedImage> mInputProducer;
    private final MemoryCache<CacheKey, PooledByteBuffer> mMemoryCache;

    public EncodedMemoryCacheProducer(MemoryCache<CacheKey, PooledByteBuffer> memoryCache, CacheKeyFactory cacheKeyFactory, Producer<EncodedImage> producer) {
        this.mMemoryCache = memoryCache;
        this.mCacheKeyFactory = cacheKeyFactory;
        this.mInputProducer = producer;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        String id = producerContext.getId();
        ProducerListener listener = producerContext.getListener();
        listener.onProducerStart(id, "EncodedMemoryCacheProducer");
        CacheKey encodedCacheKey = this.mCacheKeyFactory.getEncodedCacheKey(producerContext.getImageRequest(), producerContext.getCallerContext());
        CloseableReference<PooledByteBuffer> closeableReference = this.mMemoryCache.get(encodedCacheKey);
        try {
            if (closeableReference != null) {
                EncodedImage encodedImage = new EncodedImage(closeableReference);
                try {
                    listener.onProducerFinishWithSuccess(id, "EncodedMemoryCacheProducer", listener.requiresExtraMap(id) ? ImmutableMap.m312of("cached_value_found", "true") : null);
                    listener.onUltimateProducerReached(id, "EncodedMemoryCacheProducer", true);
                    consumer.onProgressUpdate(1.0f);
                    consumer.onNewResult(encodedImage, 1);
                    EncodedImage.closeSafely(encodedImage);
                    CloseableReference.closeSafely(closeableReference);
                    return;
                } catch (Throwable th) {
                    EncodedImage.closeSafely(encodedImage);
                    throw th;
                }
            }
            if (producerContext.getLowestPermittedRequestLevel().getValue() >= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                listener.onProducerFinishWithSuccess(id, "EncodedMemoryCacheProducer", listener.requiresExtraMap(id) ? ImmutableMap.m312of("cached_value_found", "false") : null);
                listener.onUltimateProducerReached(id, "EncodedMemoryCacheProducer", false);
                consumer.onNewResult(null, 1);
                CloseableReference.closeSafely(closeableReference);
                return;
            }
            EncodedMemoryCacheConsumer encodedMemoryCacheConsumer = new EncodedMemoryCacheConsumer(consumer, this.mMemoryCache, encodedCacheKey);
            listener.onProducerFinishWithSuccess(id, "EncodedMemoryCacheProducer", listener.requiresExtraMap(id) ? ImmutableMap.m312of("cached_value_found", "false") : null);
            this.mInputProducer.produceResults(encodedMemoryCacheConsumer, producerContext);
            CloseableReference.closeSafely(closeableReference);
        } catch (Throwable th2) {
            CloseableReference.closeSafely(closeableReference);
            throw th2;
        }
    }

    private static class EncodedMemoryCacheConsumer extends DelegatingConsumer<EncodedImage, EncodedImage> {
        private final MemoryCache<CacheKey, PooledByteBuffer> mMemoryCache;
        private final CacheKey mRequestedCacheKey;

        public EncodedMemoryCacheConsumer(Consumer<EncodedImage> consumer, MemoryCache<CacheKey, PooledByteBuffer> memoryCache, CacheKey cacheKey) {
            super(consumer);
            this.mMemoryCache = memoryCache;
            this.mRequestedCacheKey = cacheKey;
        }

        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(EncodedImage encodedImage, int i) {
            if (isNotLast(i) || encodedImage == null || statusHasAnyFlag(i, 10)) {
                getConsumer().onNewResult(encodedImage, i);
                return;
            }
            CloseableReference<PooledByteBuffer> byteBufferRef = encodedImage.getByteBufferRef();
            if (byteBufferRef != null) {
                try {
                    CloseableReference<PooledByteBuffer> closeableReferenceCache = this.mMemoryCache.cache(this.mRequestedCacheKey, byteBufferRef);
                    CloseableReference.closeSafely(byteBufferRef);
                    if (closeableReferenceCache != null) {
                        try {
                            EncodedImage encodedImage2 = new EncodedImage(closeableReferenceCache);
                            encodedImage2.copyMetaDataFrom(encodedImage);
                            CloseableReference.closeSafely(closeableReferenceCache);
                            try {
                                getConsumer().onProgressUpdate(1.0f);
                                getConsumer().onNewResult(encodedImage2, i);
                                return;
                            } finally {
                                EncodedImage.closeSafely(encodedImage2);
                            }
                        } catch (Throwable th) {
                            CloseableReference.closeSafely(closeableReferenceCache);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    CloseableReference.closeSafely(byteBufferRef);
                    throw th2;
                }
            }
            getConsumer().onNewResult(encodedImage, i);
        }
    }
}
