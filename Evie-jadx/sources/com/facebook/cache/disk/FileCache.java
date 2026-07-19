package com.facebook.cache.disk;

import com.facebook.binaryresource.BinaryResource;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.WriterCallback;
import com.facebook.common.disk.DiskTrimmable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface FileCache extends DiskTrimmable {
    void clearAll();

    BinaryResource getResource(CacheKey cacheKey);

    BinaryResource insert(CacheKey cacheKey, WriterCallback writerCallback) throws IOException;

    void remove(CacheKey cacheKey);
}
