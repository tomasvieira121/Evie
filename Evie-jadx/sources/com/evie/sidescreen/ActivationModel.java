package com.evie.sidescreen;

import io.reactivex.Observable;
import io.reactivex.subjects.BehaviorSubject;

/* JADX INFO: loaded from: classes.dex */
public class ActivationModel {
    BehaviorSubject<Object> mBehaviorSubject = BehaviorSubject.create();

    public Observable<Object> getActivationObservable() {
        return this.mBehaviorSubject;
    }

    public void activate() {
        if (this.mBehaviorSubject.getValue() != null) {
            return;
        }
        this.mBehaviorSubject.onNext(new Object());
    }
}
