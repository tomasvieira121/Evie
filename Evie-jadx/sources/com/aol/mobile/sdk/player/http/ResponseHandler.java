package com.aol.mobile.sdk.player.http;

/* JADX INFO: loaded from: classes.dex */
public interface ResponseHandler<T> {
    void onFailure(HttpServiceException httpServiceException);

    void onSuccess(T t);
}
