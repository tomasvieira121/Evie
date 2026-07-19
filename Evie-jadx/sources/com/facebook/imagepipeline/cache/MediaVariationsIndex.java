package com.facebook.imagepipeline.cache;

import bolts.Task;
import com.facebook.cache.common.CacheKey;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.MediaVariations;

/* JADX INFO: loaded from: classes.dex */
public interface MediaVariationsIndex {
    Task<MediaVariations> getCachedVariants(String str, MediaVariations.Builder builder);

    void saveCachedVariant(String str, ImageRequest.CacheChoice cacheChoice, CacheKey cacheKey, EncodedImage encodedImage);
}
