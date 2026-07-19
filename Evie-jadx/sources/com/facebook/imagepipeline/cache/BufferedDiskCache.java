package com.facebook.imagepipeline.cache;

import bolts.Task;
import com.facebook.binaryresource.BinaryResource;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.WriterCallback;
import com.facebook.cache.disk.FileCache;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.common.memory.PooledByteStreams;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class BufferedDiskCache {
    private static final Class<?> TAG = BufferedDiskCache.class;
    private final FileCache mFileCache;
    private final ImageCacheStatsTracker mImageCacheStatsTracker;
    private final PooledByteBufferFactory mPooledByteBufferFactory;
    private final PooledByteStreams mPooledByteStreams;
    private final Executor mReadExecutor;
    private final StagingArea mStagingArea = StagingArea.getInstance();
    private final Executor mWriteExecutor;

    public BufferedDiskCache(FileCache fileCache, PooledByteBufferFactory pooledByteBufferFactory, PooledByteStreams pooledByteStreams, Executor executor, Executor executor2, ImageCacheStatsTracker imageCacheStatsTracker) {
        this.mFileCache = fileCache;
        this.mPooledByteBufferFactory = pooledByteBufferFactory;
        this.mPooledByteStreams = pooledByteStreams;
        this.mReadExecutor = executor;
        this.mWriteExecutor = executor2;
        this.mImageCacheStatsTracker = imageCacheStatsTracker;
    }

    public Task<EncodedImage> get(CacheKey cacheKey, AtomicBoolean atomicBoolean) {
        EncodedImage encodedImage = this.mStagingArea.get(cacheKey);
        if (encodedImage != null) {
            return foundPinnedImage(cacheKey, encodedImage);
        }
        return getAsync(cacheKey, atomicBoolean);
    }

    private Task<EncodedImage> getAsync(final CacheKey cacheKey, final AtomicBoolean atomicBoolean) {
        try {
            return Task.call(new Callable<EncodedImage>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public EncodedImage call() throws Exception {
                    if (!atomicBoolean.get()) {
                        EncodedImage encodedImage = BufferedDiskCache.this.mStagingArea.get(cacheKey);
                        if (encodedImage != null) {
                            FLog.m327v((Class<?>) BufferedDiskCache.TAG, "Found image for %s in staging area", cacheKey.getUriString());
                            BufferedDiskCache.this.mImageCacheStatsTracker.onStagingAreaHit(cacheKey);
                        } else {
                            FLog.m327v((Class<?>) BufferedDiskCache.TAG, "Did not find image for %s in staging area", cacheKey.getUriString());
                            BufferedDiskCache.this.mImageCacheStatsTracker.onStagingAreaMiss();
                            try {
                                CloseableReference closeableReferenceM347of = CloseableReference.m347of(BufferedDiskCache.this.readFromDiskCache(cacheKey));
                                try {
                                    EncodedImage encodedImage2 = new EncodedImage((CloseableReference<PooledByteBuffer>) closeableReferenceM347of);
                                    CloseableReference.closeSafely((CloseableReference<?>) closeableReferenceM347of);
                                    encodedImage = encodedImage2;
                                } catch (Throwable th) {
                                    CloseableReference.closeSafely((CloseableReference<?>) closeableReferenceM347of);
                                    throw th;
                                }
                            } catch (Exception unused) {
                                return null;
                            }
                        }
                        if (!Thread.interrupted()) {
                            return encodedImage;
                        }
                        FLog.m326v(BufferedDiskCache.TAG, "Host thread was interrupted, decreasing reference count");
                        if (encodedImage != null) {
                            encodedImage.close();
                        }
                        throw new InterruptedException();
                    }
                    throw new CancellationException();
                }
            }, this.mReadExecutor);
        } catch (Exception e) {
            FLog.m336w(TAG, e, "Failed to schedule disk-cache read for %s", cacheKey.getUriString());
            return Task.forError(e);
        }
    }

    public void put(final CacheKey cacheKey, EncodedImage encodedImage) {
        Preconditions.checkNotNull(cacheKey);
        Preconditions.checkArgument(EncodedImage.isValid(encodedImage));
        this.mStagingArea.put(cacheKey, encodedImage);
        final EncodedImage encodedImageCloneOrNull = EncodedImage.cloneOrNull(encodedImage);
        try {
            this.mWriteExecutor.execute(new Runnable() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        BufferedDiskCache.this.writeToDiskCache(cacheKey, encodedImageCloneOrNull);
                    } finally {
                        BufferedDiskCache.this.mStagingArea.remove(cacheKey, encodedImageCloneOrNull);
                        EncodedImage.closeSafely(encodedImageCloneOrNull);
                    }
                }
            });
        } catch (Exception e) {
            FLog.m336w(TAG, e, "Failed to schedule disk-cache write for %s", cacheKey.getUriString());
            this.mStagingArea.remove(cacheKey, encodedImage);
            EncodedImage.closeSafely(encodedImageCloneOrNull);
        }
    }

    public Task<Void> remove(final CacheKey cacheKey) {
        Preconditions.checkNotNull(cacheKey);
        this.mStagingArea.remove(cacheKey);
        try {
            return Task.call(new Callable<Void>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.4
                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    BufferedDiskCache.this.mStagingArea.remove(cacheKey);
                    BufferedDiskCache.this.mFileCache.remove(cacheKey);
                    return null;
                }
            }, this.mWriteExecutor);
        } catch (Exception e) {
            FLog.m336w(TAG, e, "Failed to schedule disk-cache remove for %s", cacheKey.getUriString());
            return Task.forError(e);
        }
    }

    public Task<Void> clearAll() {
        this.mStagingArea.clearAll();
        try {
            return Task.call(new Callable<Void>() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.5
                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    BufferedDiskCache.this.mStagingArea.clearAll();
                    BufferedDiskCache.this.mFileCache.clearAll();
                    return null;
                }
            }, this.mWriteExecutor);
        } catch (Exception e) {
            FLog.m336w(TAG, e, "Failed to schedule disk-cache clear", new Object[0]);
            return Task.forError(e);
        }
    }

    private Task<EncodedImage> foundPinnedImage(CacheKey cacheKey, EncodedImage encodedImage) {
        FLog.m327v(TAG, "Found image for %s in staging area", cacheKey.getUriString());
        this.mImageCacheStatsTracker.onStagingAreaHit(cacheKey);
        return Task.forResult(encodedImage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PooledByteBuffer readFromDiskCache(CacheKey cacheKey) throws IOException {
        try {
            FLog.m327v(TAG, "Disk cache read for %s", cacheKey.getUriString());
            BinaryResource resource = this.mFileCache.getResource(cacheKey);
            if (resource == null) {
                FLog.m327v(TAG, "Disk cache miss for %s", cacheKey.getUriString());
                this.mImageCacheStatsTracker.onDiskCacheMiss();
                return null;
            }
            FLog.m327v(TAG, "Found entry in disk cache for %s", cacheKey.getUriString());
            this.mImageCacheStatsTracker.onDiskCacheHit();
            InputStream inputStreamOpenStream = resource.openStream();
            try {
                PooledByteBuffer pooledByteBufferNewByteBuffer = this.mPooledByteBufferFactory.newByteBuffer(inputStreamOpenStream, (int) resource.size());
                inputStreamOpenStream.close();
                FLog.m327v(TAG, "Successful read from disk cache for %s", cacheKey.getUriString());
                return pooledByteBufferNewByteBuffer;
            } catch (Throwable th) {
                inputStreamOpenStream.close();
                throw th;
            }
        } catch (IOException e) {
            FLog.m336w(TAG, e, "Exception reading from cache for %s", cacheKey.getUriString());
            this.mImageCacheStatsTracker.onDiskCacheGetFail();
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeToDiskCache(CacheKey cacheKey, final EncodedImage encodedImage) {
        FLog.m327v(TAG, "About to write to disk-cache for key %s", cacheKey.getUriString());
        try {
            this.mFileCache.insert(cacheKey, new WriterCallback() { // from class: com.facebook.imagepipeline.cache.BufferedDiskCache.6
                @Override // com.facebook.cache.common.WriterCallback
                public void write(OutputStream outputStream) throws IOException {
                    BufferedDiskCache.this.mPooledByteStreams.copy(encodedImage.getInputStream(), outputStream);
                }
            });
            FLog.m327v(TAG, "Successful disk-cache write for key %s", cacheKey.getUriString());
        } catch (IOException e) {
            FLog.m336w(TAG, e, "Failed to write to disk-cache for key %s", cacheKey.getUriString());
        }
    }
}
