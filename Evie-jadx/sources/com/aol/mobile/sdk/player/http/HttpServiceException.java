package com.aol.mobile.sdk.player.http;

/* JADX INFO: loaded from: classes.dex */
public final class HttpServiceException extends Exception {
    public final Exception cause;
    public final int responseCode;
    public final String responseJson;

    public HttpServiceException(int i, Exception exc) {
        this.responseCode = i;
        this.cause = exc;
        this.responseJson = null;
    }

    public HttpServiceException(int i, Exception exc, String str) {
        this.responseCode = i;
        this.cause = exc;
        this.responseJson = str;
    }
}
