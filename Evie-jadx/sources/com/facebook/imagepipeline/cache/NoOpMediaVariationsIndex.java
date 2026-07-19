package com.facebook.imagepipeline.cache;

import bolts.Task;
import com.facebook.cache.common.CacheKey;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.MediaVariations;

/* JADX INFO: loaded from: classes.dex */
public class NoOpMediaVariationsIndex implements MediaVariationsIndex {
    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public void saveCachedVariant(String str, ImageRequest.CacheChoice cacheChoice, CacheKey cacheKey, EncodedImage encodedImage) {
    }

    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public Task<MediaVariations> getCachedVariants(String str, MediaVariations.Builder builder) {
        return Task.forResult(null);
    }
}
