package com.aol.mobile.sdk.player.http;

/* JADX INFO: loaded from: classes.dex */
public interface DataSerializer<T> {
    String toJson(T t) throws Exception;
}
