package com.evie.sidescreen.dagger;

import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory implements Factory<LifecycleCallbacks> {
    private final LifecycleCallbacksModule module;

    public LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory(LifecycleCallbacksModule lifecycleCallbacksModule) {
        this.module = lifecycleCallbacksModule;
    }

    @Override // javax.inject.Provider
    public LifecycleCallbacks get() {
        return proxyProvidesLifecycleCallbacks(this.module);
    }

    public static LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory create(LifecycleCallbacksModule lifecycleCallbacksModule) {
        return new LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory(lifecycleCallbacksModule);
    }

    public static LifecycleCallbacks proxyProvidesLifecycleCallbacks(LifecycleCallbacksModule lifecycleCallbacksModule) {
        return (LifecycleCallbacks) Preconditions.checkNotNull(lifecycleCallbacksModule.providesLifecycleCallbacks(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
