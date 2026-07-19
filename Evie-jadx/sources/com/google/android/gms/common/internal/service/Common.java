package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes.dex */
public final class Common {
    public static final Api.ClientKey<zai> CLIENT_KEY = new Api.ClientKey<>();
    private static final Api.AbstractClientBuilder<zai, Object> zapg = new zab();
    public static final Api<Object> API = new Api<>("Common.API", zapg, CLIENT_KEY);
    public static final zac zaph = new zad();
}
