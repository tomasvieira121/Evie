package com.facebook.common.statfs;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.facebook.common.internal.Throwables;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class StatFsHelper {
    private static final long RESTAT_INTERVAL_MS = TimeUnit.MINUTES.toMillis(2);
    private static StatFsHelper sStatsFsHelper;
    private volatile File mExternalPath;
    private volatile File mInternalPath;

    @GuardedBy("lock")
    private long mLastRestatTime;
    private volatile StatFs mInternalStatFs = null;
    private volatile StatFs mExternalStatFs = null;
    private volatile boolean mInitialized = false;
    private final Lock lock = new ReentrantLock();

    public enum StorageType {
        INTERNAL,
        EXTERNAL
    }

    public static synchronized StatFsHelper getInstance() {
        if (sStatsFsHelper == null) {
            sStatsFsHelper = new StatFsHelper();
        }
        return sStatsFsHelper;
    }

    protected StatFsHelper() {
    }

    private void ensureInitialized() {
        if (this.mInitialized) {
            return;
        }
        this.lock.lock();
        try {
            if (!this.mInitialized) {
                this.mInternalPath = Environment.getDataDirectory();
                this.mExternalPath = Environment.getExternalStorageDirectory();
                updateStats();
                this.mInitialized = true;
            }
        } finally {
            this.lock.unlock();
        }
    }

    public boolean testLowDiskSpace(StorageType storageType, long j) {
        ensureInitialized();
        long availableStorageSpace = getAvailableStorageSpace(storageType);
        return availableStorageSpace <= 0 || availableStorageSpace < j;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long getAvailableStorageSpace(StorageType storageType) {
        long blockSize;
        long availableBlocks;
        ensureInitialized();
        maybeUpdateStats();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.mInternalStatFs : this.mExternalStatFs;
        if (statFs == null) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            blockSize = statFs.getBlockSizeLong();
            availableBlocks = statFs.getAvailableBlocksLong();
        } else {
            blockSize = statFs.getBlockSize();
            availableBlocks = statFs.getAvailableBlocks();
        }
        return blockSize * availableBlocks;
    }

    private void maybeUpdateStats() {
        if (this.lock.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.mLastRestatTime > RESTAT_INTERVAL_MS) {
                    updateStats();
                }
            } finally {
                this.lock.unlock();
            }
        }
    }

    @GuardedBy("lock")
    private void updateStats() {
        this.mInternalStatFs = updateStatsHelper(this.mInternalStatFs, this.mInternalPath);
        this.mExternalStatFs = updateStatsHelper(this.mExternalStatFs, this.mExternalPath);
        this.mLastRestatTime = SystemClock.uptimeMillis();
    }

    private StatFs updateStatsHelper(@Nullable StatFs statFs, @Nullable File file) {
        StatFs statFsCreateStatFs = null;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            if (statFs == null) {
                statFsCreateStatFs = createStatFs(file.getAbsolutePath());
            } else {
                statFs.restat(file.getAbsolutePath());
                statFsCreateStatFs = statFs;
            }
        } catch (IllegalArgumentException unused) {
        } catch (Throwable th) {
            throw Throwables.propagate(th);
        }
        return statFsCreateStatFs;
    }

    protected static StatFs createStatFs(String str) {
        return new StatFs(str);
    }
}
