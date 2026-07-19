package io.reactivex.internal.observers;

import io.reactivex.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {
    private static final long serialVersionUID = -5502432239815349361L;
    protected final Observer<? super T> actual;
    protected T value;

    public DeferredScalarDisposable(Observer<? super T> observer) {
        this.actual = observer;
    }

    @Override // io.reactivex.internal.fuseable.QueueFuseable
    public final int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final void complete(T t) {
        int i = get();
        if ((i & 54) != 0) {
            return;
        }
        if (i == 8) {
            this.value = t;
            lazySet(16);
        } else {
            lazySet(2);
        }
        Observer<? super T> observer = this.actual;
        observer.onNext(t);
        if (get() != 4) {
            observer.onComplete();
        }
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final T poll() throws Exception {
        if (get() != 16) {
            return null;
        }
        T t = this.value;
        this.value = null;
        lazySet(32);
        return t;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        set(4);
        this.value = null;
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return get() == 4;
    }
}
