package com.facebook.imagepipeline.producers;

import android.graphics.Bitmap;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.image.CloseableStaticBitmap;

/* JADX INFO: loaded from: classes.dex */
public class BitmapPrepareProducer implements Producer<CloseableReference<CloseableImage>> {
    private final Producer<CloseableReference<CloseableImage>> mInputProducer;

    public BitmapPrepareProducer(Producer<CloseableReference<CloseableImage>> producer) {
        this.mInputProducer = (Producer) Preconditions.checkNotNull(producer);
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(Consumer<CloseableReference<CloseableImage>> consumer, ProducerContext producerContext) {
        if (producerContext.isPrefetch()) {
            this.mInputProducer.produceResults(consumer, producerContext);
        } else {
            this.mInputProducer.produceResults(new BitmapPrepareConsumer(consumer), producerContext);
        }
    }

    private static class BitmapPrepareConsumer extends DelegatingConsumer<CloseableReference<CloseableImage>, CloseableReference<CloseableImage>> {
        BitmapPrepareConsumer(Consumer<CloseableReference<CloseableImage>> consumer) {
            super(consumer);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.BaseConsumer
        public void onNewResultImpl(CloseableReference<CloseableImage> closeableReference, int i) {
            internalPrepareBitmap(closeableReference);
            getConsumer().onNewResult(closeableReference, i);
        }

        private static void internalPrepareBitmap(CloseableReference<CloseableImage> closeableReference) {
            CloseableImage closeableImage;
            Bitmap underlyingBitmap;
            if (closeableReference == null || !closeableReference.isValid() || (closeableImage = closeableReference.get()) == null || closeableImage.isClosed() || !(closeableImage instanceof CloseableStaticBitmap) || (underlyingBitmap = ((CloseableStaticBitmap) closeableImage).getUnderlyingBitmap()) == null) {
                return;
            }
            underlyingBitmap.prepareToDraw();
        }
    }
}
