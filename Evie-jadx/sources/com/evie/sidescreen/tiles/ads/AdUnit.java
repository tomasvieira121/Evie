package com.evie.sidescreen.tiles.ads;

import com.evie.sidescreen.mvp.MvpViewHolder;
import io.reactivex.Completable;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdUnit<T extends MvpViewHolder> {
    private boolean mTestMode = false;
    private BehaviorSubject<Void> mLoadSubject = BehaviorSubject.create();
    protected final PublishSubject<Object> mImpressionTapSubject = PublishSubject.create();

    public abstract boolean isLoadError();

    public abstract boolean isReady();

    public abstract void load();

    public Completable getLoadCompletable() {
        return this.mLoadSubject.ignoreElements();
    }

    public void setTestMode(boolean z) {
        this.mTestMode = z;
    }
}
