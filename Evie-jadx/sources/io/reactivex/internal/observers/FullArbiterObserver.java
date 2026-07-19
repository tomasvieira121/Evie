package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.ObserverFullArbiter;

/* JADX INFO: loaded from: classes2.dex */
public final class FullArbiterObserver<T> implements Observer<T> {
    final ObserverFullArbiter<T> arbiter;

    /* JADX INFO: renamed from: s */
    Disposable f544s;

    public FullArbiterObserver(ObserverFullArbiter<T> observerFullArbiter) {
        this.arbiter = observerFullArbiter;
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.f544s, disposable)) {
            this.f544s = disposable;
            this.arbiter.setDisposable(disposable);
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.arbiter.onNext(t, this.f544s);
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.arbiter.onError(th, this.f544s);
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        this.arbiter.onComplete(this.f544s);
    }
}
