package com.aol.mobile.sdk.player.http;

/* JADX INFO: loaded from: classes.dex */
public interface ResponseParser<T> {
    T parse(String str) throws Exception;
}
