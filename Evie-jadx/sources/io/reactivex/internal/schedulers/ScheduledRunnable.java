package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes2.dex */
public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements Disposable, Runnable, Callable<Object> {
    private static final long serialVersionUID = -6120223772001106981L;
    final Runnable actual;
    static final Object PARENT_DISPOSED = new Object();
    static final Object SYNC_DISPOSED = new Object();
    static final Object ASYNC_DISPOSED = new Object();
    static final Object DONE = new Object();

    public ScheduledRunnable(Runnable runnable, DisposableContainer disposableContainer) {
        super(3);
        this.actual = runnable;
        lazySet(0, disposableContainer);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        int i = 2;
        i = 2;
        lazySet(2, Thread.currentThread());
        Object obj4 = null;
        try {
            try {
                this.actual.run();
            } catch (Throwable th) {
                RxJavaPlugins.onError(th);
            }
            lazySet(2, null);
            obj4 = get(0);
            i = PARENT_DISPOSED;
            if (obj4 != i && compareAndSet(0, obj4, DONE) && obj4 != null) {
                ((DisposableContainer) obj4).delete(this);
            }
            do {
                obj2 = get(1);
                Object obj5 = SYNC_DISPOSED;
                if (obj2 == obj5) {
                    return;
                } else {
                    if (obj2 == obj3) {
                        return;
                    }
                }
            } while (!compareAndSet(1, obj2, DONE));
        } finally {
            lazySet(i, obj4);
            Object obj6 = get(0);
            if (obj6 != PARENT_DISPOSED && compareAndSet(0, obj6, DONE) && obj6 != null) {
                ((DisposableContainer) obj6).delete(this);
            }
            do {
                obj = get(1);
                if (obj == SYNC_DISPOSED || obj == ASYNC_DISPOSED) {
                    break;
                }
            } while (!compareAndSet(1, obj, DONE));
        }
    }

    public void setFuture(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == DONE) {
                return;
            }
            if (obj == SYNC_DISPOSED) {
                future.cancel(false);
                return;
            } else if (obj == ASYNC_DISPOSED) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Object obj;
        Object obj2;
        while (true) {
            Object obj3 = get(1);
            if (obj3 == DONE || obj3 == SYNC_DISPOSED || obj3 == ASYNC_DISPOSED) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (compareAndSet(1, obj3, z ? ASYNC_DISPOSED : SYNC_DISPOSED)) {
                if (obj3 == null) {
                    break;
                }
                ((Future) obj3).cancel(z);
                break;
            }
        }
        do {
            obj = get(0);
            if (obj == DONE || obj == (obj2 = PARENT_DISPOSED) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((DisposableContainer) obj).delete(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        Object obj = get(0);
        return obj == PARENT_DISPOSED || obj == DONE;
    }
}
