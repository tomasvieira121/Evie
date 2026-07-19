package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class zai<O extends Api.ApiOptions> {
    private final Api<O> mApi;
    private final boolean zact = true;
    private final O zabh = null;
    private final int zacu = System.identityHashCode(this);

    private zai(Api<O> api) {
        this.mApi = api;
    }

    public static <O extends Api.ApiOptions> zai<O> zaa(Api<O> api) {
        return new zai<>(api);
    }

    public final String zan() {
        return this.mApi.getName();
    }

    public final int hashCode() {
        return this.zacu;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zai)) {
            return false;
        }
        zai zaiVar = (zai) obj;
        return !this.zact && !zaiVar.zact && Objects.equal(this.mApi, zaiVar.mApi) && Objects.equal(this.zabh, zaiVar.zabh);
    }
}
