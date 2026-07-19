package com.facebook.imagepipeline.cache;

import com.facebook.common.logging.FLog;
import com.facebook.common.memory.MemoryTrimType;

/* JADX INFO: loaded from: classes.dex */
public class NativeMemoryCacheTrimStrategy implements CountingMemoryCache.CacheTrimStrategy {
    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache.CacheTrimStrategy
    public double getTrimRatio(MemoryTrimType memoryTrimType) {
        switch (memoryTrimType) {
            case OnCloseToDalvikHeapLimit:
                return 0.0d;
            case OnAppBackgrounded:
            case OnSystemLowMemoryWhileAppInForeground:
            case OnSystemLowMemoryWhileAppInBackground:
                return 1.0d;
            default:
                FLog.wtf("NativeMemoryCacheTrimStrategy", "unknown trim type: %s", memoryTrimType);
                return 0.0d;
        }
    }
}
