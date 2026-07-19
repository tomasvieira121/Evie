package com.facebook.datasource;

import android.util.Pair;
import com.facebook.common.internal.Preconditions;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDataSource<T> implements DataSource<T> {

    @GuardedBy("this")
    @Nullable
    private T mResult = null;

    @GuardedBy("this")
    private Throwable mFailureThrowable = null;

    @GuardedBy("this")
    private float mProgress = 0.0f;

    @GuardedBy("this")
    private boolean mIsClosed = false;

    @GuardedBy("this")
    private DataSourceStatus mDataSourceStatus = DataSourceStatus.IN_PROGRESS;
    private final ConcurrentLinkedQueue<Pair<DataSubscriber<T>, Executor>> mSubscribers = new ConcurrentLinkedQueue<>();

    private enum DataSourceStatus {
        IN_PROGRESS,
        SUCCESS,
        FAILURE
    }

    protected void closeResult(@Nullable T t) {
    }

    protected AbstractDataSource() {
    }

    public synchronized boolean isClosed() {
        return this.mIsClosed;
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized boolean isFinished() {
        return this.mDataSourceStatus != DataSourceStatus.IN_PROGRESS;
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized boolean hasResult() {
        return this.mResult != null;
    }

    @Override // com.facebook.datasource.DataSource
    @Nullable
    public synchronized T getResult() {
        return this.mResult;
    }

    public synchronized boolean hasFailed() {
        return this.mDataSourceStatus == DataSourceStatus.FAILURE;
    }

    @Override // com.facebook.datasource.DataSource
    @Nullable
    public synchronized Throwable getFailureCause() {
        return this.mFailureThrowable;
    }

    @Override // com.facebook.datasource.DataSource
    public synchronized float getProgress() {
        return this.mProgress;
    }

    @Override // com.facebook.datasource.DataSource
    public boolean close() {
        synchronized (this) {
            if (this.mIsClosed) {
                return false;
            }
            this.mIsClosed = true;
            T t = this.mResult;
            this.mResult = null;
            if (t != null) {
                closeResult(t);
            }
            if (!isFinished()) {
                notifyDataSubscribers();
            }
            synchronized (this) {
                this.mSubscribers.clear();
            }
            return true;
        }
    }

    @Override // com.facebook.datasource.DataSource
    public void subscribe(DataSubscriber<T> dataSubscriber, Executor executor) {
        Preconditions.checkNotNull(dataSubscriber);
        Preconditions.checkNotNull(executor);
        synchronized (this) {
            if (this.mIsClosed) {
                return;
            }
            if (this.mDataSourceStatus == DataSourceStatus.IN_PROGRESS) {
                this.mSubscribers.add(Pair.create(dataSubscriber, executor));
            }
            boolean z = hasResult() || isFinished() || wasCancelled();
            if (z) {
                notifyDataSubscriber(dataSubscriber, executor, hasFailed(), wasCancelled());
            }
        }
    }

    private void notifyDataSubscribers() {
        boolean zHasFailed = hasFailed();
        boolean zWasCancelled = wasCancelled();
        for (Pair<DataSubscriber<T>, Executor> pair : this.mSubscribers) {
            notifyDataSubscriber((DataSubscriber) pair.first, (Executor) pair.second, zHasFailed, zWasCancelled);
        }
    }

    private void notifyDataSubscriber(final DataSubscriber<T> dataSubscriber, Executor executor, final boolean z, final boolean z2) {
        executor.execute(new Runnable() { // from class: com.facebook.datasource.AbstractDataSource.1
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    dataSubscriber.onFailure(AbstractDataSource.this);
                } else if (z2) {
                    dataSubscriber.onCancellation(AbstractDataSource.this);
                } else {
                    dataSubscriber.onNewResult(AbstractDataSource.this);
                }
            }
        });
    }

    private synchronized boolean wasCancelled() {
        return isClosed() && !isFinished();
    }

    protected boolean setResult(@Nullable T t, boolean z) {
        boolean resultInternal = setResultInternal(t, z);
        if (resultInternal) {
            notifyDataSubscribers();
        }
        return resultInternal;
    }

    protected boolean setFailure(Throwable th) {
        boolean failureInternal = setFailureInternal(th);
        if (failureInternal) {
            notifyDataSubscribers();
        }
        return failureInternal;
    }

    protected boolean setProgress(float f) {
        boolean progressInternal = setProgressInternal(f);
        if (progressInternal) {
            notifyProgressUpdate();
        }
        return progressInternal;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0039 */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x003a, code lost:
    
        r4 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean setResultInternal(@javax.annotation.Nullable T r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L3c
            boolean r1 = r3.mIsClosed     // Catch: java.lang.Throwable -> L39
            if (r1 != 0) goto L2d
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r1 = r3.mDataSourceStatus     // Catch: java.lang.Throwable -> L39
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r2 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.IN_PROGRESS     // Catch: java.lang.Throwable -> L39
            if (r1 == r2) goto Ld
            goto L2d
        Ld:
            if (r5 == 0) goto L17
            com.facebook.datasource.AbstractDataSource$DataSourceStatus r5 = com.facebook.datasource.AbstractDataSource.DataSourceStatus.SUCCESS     // Catch: java.lang.Throwable -> L39
            r3.mDataSourceStatus = r5     // Catch: java.lang.Throwable -> L39
            r5 = 1065353216(0x3f800000, float:1.0)
            r3.mProgress = r5     // Catch: java.lang.Throwable -> L39
        L17:
            T r5 = r3.mResult     // Catch: java.lang.Throwable -> L39
            if (r5 == r4) goto L24
            T r5 = r3.mResult     // Catch: java.lang.Throwable -> L39
            r3.mResult = r4     // Catch: java.lang.Throwable -> L21
            r4 = r5
            goto L25
        L21:
            r4 = move-exception
            r0 = r5
            goto L3a
        L24:
            r4 = r0
        L25:
            r5 = 1
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L35
            if (r4 == 0) goto L2c
            r3.closeResult(r4)
        L2c:
            return r5
        L2d:
            r5 = 0
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L35
            if (r4 == 0) goto L34
            r3.closeResult(r4)
        L34:
            return r5
        L35:
            r5 = move-exception
            r0 = r4
            r4 = r5
            goto L3a
        L39:
            r4 = move-exception
        L3a:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L39
            throw r4     // Catch: java.lang.Throwable -> L3c
        L3c:
            r4 = move-exception
            if (r0 == 0) goto L42
            r3.closeResult(r0)
        L42:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.datasource.AbstractDataSource.setResultInternal(java.lang.Object, boolean):boolean");
    }

    private synchronized boolean setFailureInternal(Throwable th) {
        if (!this.mIsClosed && this.mDataSourceStatus == DataSourceStatus.IN_PROGRESS) {
            this.mDataSourceStatus = DataSourceStatus.FAILURE;
            this.mFailureThrowable = th;
            return true;
        }
        return false;
    }

    private synchronized boolean setProgressInternal(float f) {
        if (!this.mIsClosed && this.mDataSourceStatus == DataSourceStatus.IN_PROGRESS) {
            if (f < this.mProgress) {
                return false;
            }
            this.mProgress = f;
            return true;
        }
        return false;
    }

    protected void notifyProgressUpdate() {
        for (Pair<DataSubscriber<T>, Executor> pair : this.mSubscribers) {
            final DataSubscriber dataSubscriber = (DataSubscriber) pair.first;
            ((Executor) pair.second).execute(new Runnable() { // from class: com.facebook.datasource.AbstractDataSource.2
                @Override // java.lang.Runnable
                public void run() {
                    dataSubscriber.onProgressUpdate(AbstractDataSource.this);
                }
            });
        }
    }
}
