package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

/* JADX INFO: loaded from: classes.dex */
public abstract class PendingResult<R extends Result> {

    public interface StatusListener {
        void onComplete(Status status);
    }

    public abstract void cancel();

    public abstract boolean isCanceled();

    public abstract void setResultCallback(ResultCallback<? super R> resultCallback);

    public void addStatusListener(StatusListener statusListener) {
        throw new UnsupportedOperationException();
    }

    public Integer zam() {
        throw new UnsupportedOperationException();
    }
}
