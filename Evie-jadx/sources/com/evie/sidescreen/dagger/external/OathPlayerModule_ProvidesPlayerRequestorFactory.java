package com.evie.sidescreen.dagger.external;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class OathPlayerModule_ProvidesPlayerRequestorFactory implements Factory<PlayerBuilderRequestor> {
    private final Provider<Context> contextProvider;
    private final OathPlayerModule module;

    public OathPlayerModule_ProvidesPlayerRequestorFactory(OathPlayerModule oathPlayerModule, Provider<Context> provider) {
        this.module = oathPlayerModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public PlayerBuilderRequestor get() {
        return proxyProvidesPlayerRequestor(this.module, this.contextProvider.get());
    }

    public static OathPlayerModule_ProvidesPlayerRequestorFactory create(OathPlayerModule oathPlayerModule, Provider<Context> provider) {
        return new OathPlayerModule_ProvidesPlayerRequestorFactory(oathPlayerModule, provider);
    }

    public static PlayerBuilderRequestor proxyProvidesPlayerRequestor(OathPlayerModule oathPlayerModule, Context context) {
        return (PlayerBuilderRequestor) Preconditions.checkNotNull(oathPlayerModule.providesPlayerRequestor(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
