package com.evie.sidescreen.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.disposables.CompositeDisposable;

/* JADX INFO: loaded from: classes.dex */
public final class DisposeModule_ProvidesCompositeDisposableFactory implements Factory<CompositeDisposable> {
    private final DisposeModule module;

    public DisposeModule_ProvidesCompositeDisposableFactory(DisposeModule disposeModule) {
        this.module = disposeModule;
    }

    @Override // javax.inject.Provider
    public CompositeDisposable get() {
        return proxyProvidesCompositeDisposable(this.module);
    }

    public static DisposeModule_ProvidesCompositeDisposableFactory create(DisposeModule disposeModule) {
        return new DisposeModule_ProvidesCompositeDisposableFactory(disposeModule);
    }

    public static CompositeDisposable proxyProvidesCompositeDisposable(DisposeModule disposeModule) {
        return (CompositeDisposable) Preconditions.checkNotNull(disposeModule.providesCompositeDisposable(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
