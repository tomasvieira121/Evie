package com.facebook.imagepipeline.cache;

/* JADX INFO: loaded from: classes.dex */
public interface MemoryCacheTracker<K> {
    void onCacheHit(K k);

    void onCacheMiss();

    void onCachePut();
}
