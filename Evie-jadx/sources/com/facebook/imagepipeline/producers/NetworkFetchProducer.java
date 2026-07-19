package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import com.facebook.common.memory.ByteArrayPool;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.common.memory.PooledByteBufferOutputStream;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.common.BytesRange;
import com.facebook.imagepipeline.image.EncodedImage;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class NetworkFetchProducer implements Producer<EncodedImage> {
    private final ByteArrayPool mByteArrayPool;
    private final NetworkFetcher mNetworkFetcher;
    private final PooledByteBufferFactory mPooledByteBufferFactory;

    public NetworkFetchProducer(PooledByteBufferFactory pooledByteBufferFactory, ByteArrayPool byteArrayPool, NetworkFetcher networkFetcher) {
        this.mPooledByteBufferFactory = pooledByteBufferFactory;
        this.mByteArrayPool = byteArrayPool;
        this.mNetworkFetcher = networkFetcher;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        producerContext.getListener().onProducerStart(producerContext.getId(), "NetworkFetchProducer");
        final FetchState fetchStateCreateFetchState = this.mNetworkFetcher.createFetchState(consumer, producerContext);
        this.mNetworkFetcher.fetch(fetchStateCreateFetchState, new NetworkFetcher.Callback() { // from class: com.facebook.imagepipeline.producers.NetworkFetchProducer.1
            @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
            public void onResponse(InputStream inputStream, int i) throws Throwable {
                NetworkFetchProducer.this.onResponse(fetchStateCreateFetchState, inputStream, i);
            }

            @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
            public void onFailure(Throwable th) {
                NetworkFetchProducer.this.onFailure(fetchStateCreateFetchState, th);
            }

            @Override // com.facebook.imagepipeline.producers.NetworkFetcher.Callback
            public void onCancellation() {
                NetworkFetchProducer.this.onCancellation(fetchStateCreateFetchState);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public void onResponse(FetchState fetchState, InputStream inputStream, int i) throws Throwable {
        PooledByteBufferOutputStream pooledByteBufferOutputStreamNewOutputStream;
        if (i > 0) {
            pooledByteBufferOutputStreamNewOutputStream = this.mPooledByteBufferFactory.newOutputStream(i);
        } else {
            pooledByteBufferOutputStreamNewOutputStream = this.mPooledByteBufferFactory.newOutputStream();
        }
        byte[] bArr = this.mByteArrayPool.get(16384);
        while (true) {
            try {
                int i2 = inputStream.read(bArr);
                if (i2 < 0) {
                    this.mNetworkFetcher.onFetchCompletion(fetchState, pooledByteBufferOutputStreamNewOutputStream.size());
                    handleFinalResult(pooledByteBufferOutputStreamNewOutputStream, fetchState);
                    this.mByteArrayPool.release(bArr);
                    pooledByteBufferOutputStreamNewOutputStream.close();
                    return;
                }
                if (i2 > 0) {
                    pooledByteBufferOutputStreamNewOutputStream.write(bArr, 0, i2);
                    maybeHandleIntermediateResult(pooledByteBufferOutputStreamNewOutputStream, fetchState);
                    fetchState.getConsumer().onProgressUpdate(calculateProgress(pooledByteBufferOutputStreamNewOutputStream.size(), i));
                }
            } catch (Throwable th) {
                this.mByteArrayPool.release(bArr);
                pooledByteBufferOutputStreamNewOutputStream.close();
                throw th;
            }
        }
    }

    private static float calculateProgress(int i, int i2) {
        if (i2 > 0) {
            return i / i2;
        }
        double d = -i;
        Double.isNaN(d);
        return 1.0f - ((float) Math.exp(d / 50000.0d));
    }

    private void maybeHandleIntermediateResult(PooledByteBufferOutputStream pooledByteBufferOutputStream, FetchState fetchState) throws Throwable {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (!shouldPropagateIntermediateResults(fetchState) || jUptimeMillis - fetchState.getLastIntermediateResultTimeMs() < 100) {
            return;
        }
        fetchState.setLastIntermediateResultTimeMs(jUptimeMillis);
        fetchState.getListener().onProducerEvent(fetchState.getId(), "NetworkFetchProducer", "intermediate_result");
        notifyConsumer(pooledByteBufferOutputStream, fetchState.getOnNewResultStatusFlags(), fetchState.getResponseBytesRange(), fetchState.getConsumer());
    }

    private void handleFinalResult(PooledByteBufferOutputStream pooledByteBufferOutputStream, FetchState fetchState) throws Throwable {
        Map<String, String> extraMap = getExtraMap(fetchState, pooledByteBufferOutputStream.size());
        ProducerListener listener = fetchState.getListener();
        listener.onProducerFinishWithSuccess(fetchState.getId(), "NetworkFetchProducer", extraMap);
        listener.onUltimateProducerReached(fetchState.getId(), "NetworkFetchProducer", true);
        notifyConsumer(pooledByteBufferOutputStream, fetchState.getOnNewResultStatusFlags() | 1, fetchState.getResponseBytesRange(), fetchState.getConsumer());
    }

    private void notifyConsumer(PooledByteBufferOutputStream pooledByteBufferOutputStream, int i, @Nullable BytesRange bytesRange, Consumer<EncodedImage> consumer) throws Throwable {
        EncodedImage encodedImage;
        CloseableReference closeableReferenceM347of = CloseableReference.m347of(pooledByteBufferOutputStream.toByteBuffer());
        try {
            encodedImage = new EncodedImage((CloseableReference<PooledByteBuffer>) closeableReferenceM347of);
            try {
                encodedImage.setBytesRange(bytesRange);
                encodedImage.parseMetaData();
                consumer.onNewResult(encodedImage, i);
                EncodedImage.closeSafely(encodedImage);
                CloseableReference.closeSafely((CloseableReference<?>) closeableReferenceM347of);
            } catch (Throwable th) {
                th = th;
                EncodedImage.closeSafely(encodedImage);
                CloseableReference.closeSafely((CloseableReference<?>) closeableReferenceM347of);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            encodedImage = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFailure(FetchState fetchState, Throwable th) {
        fetchState.getListener().onProducerFinishWithFailure(fetchState.getId(), "NetworkFetchProducer", th, null);
        fetchState.getListener().onUltimateProducerReached(fetchState.getId(), "NetworkFetchProducer", false);
        fetchState.getConsumer().onFailure(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCancellation(FetchState fetchState) {
        fetchState.getListener().onProducerFinishWithCancellation(fetchState.getId(), "NetworkFetchProducer", null);
        fetchState.getConsumer().onCancellation();
    }

    private boolean shouldPropagateIntermediateResults(FetchState fetchState) {
        if (fetchState.getContext().isIntermediateResultExpected()) {
            return this.mNetworkFetcher.shouldPropagate(fetchState);
        }
        return false;
    }

    @Nullable
    private Map<String, String> getExtraMap(FetchState fetchState, int i) {
        if (fetchState.getListener().requiresExtraMap(fetchState.getId())) {
            return this.mNetworkFetcher.getExtraMap(fetchState, i);
        }
        return null;
    }
}
