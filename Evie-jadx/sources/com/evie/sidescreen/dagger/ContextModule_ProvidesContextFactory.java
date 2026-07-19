package com.evie.sidescreen.dagger;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class ContextModule_ProvidesContextFactory implements Factory<Context> {
    private final ContextModule module;

    public ContextModule_ProvidesContextFactory(ContextModule contextModule) {
        this.module = contextModule;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return proxyProvidesContext(this.module);
    }

    public static ContextModule_ProvidesContextFactory create(ContextModule contextModule) {
        return new ContextModule_ProvidesContextFactory(contextModule);
    }

    public static Context proxyProvidesContext(ContextModule contextModule) {
        return (Context) Preconditions.checkNotNull(contextModule.providesContext(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
