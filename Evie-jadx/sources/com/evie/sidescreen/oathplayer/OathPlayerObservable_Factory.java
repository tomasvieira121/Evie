package com.evie.sidescreen.oathplayer;

import com.evie.sidescreen.dagger.external.PlayerBuilderRequestor;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class OathPlayerObservable_Factory implements Factory<OathPlayerObservable> {
    private final Provider<PlayerBuilderRequestor> playerBuilderRequestorProvider;

    public OathPlayerObservable_Factory(Provider<PlayerBuilderRequestor> provider) {
        this.playerBuilderRequestorProvider = provider;
    }

    @Override // javax.inject.Provider
    public OathPlayerObservable get() {
        return new OathPlayerObservable(this.playerBuilderRequestorProvider.get());
    }

    public static OathPlayerObservable_Factory create(Provider<PlayerBuilderRequestor> provider) {
        return new OathPlayerObservable_Factory(provider);
    }
}
