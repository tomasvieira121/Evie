package com.evie.sidescreen.dagger;

import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerModule_ProvidesExtractorsFactoryFactory implements Factory<ExtractorsFactory> {
    private final ExoPlayerModule module;

    public ExoPlayerModule_ProvidesExtractorsFactoryFactory(ExoPlayerModule exoPlayerModule) {
        this.module = exoPlayerModule;
    }

    @Override // javax.inject.Provider
    public ExtractorsFactory get() {
        return proxyProvidesExtractorsFactory(this.module);
    }

    public static ExoPlayerModule_ProvidesExtractorsFactoryFactory create(ExoPlayerModule exoPlayerModule) {
        return new ExoPlayerModule_ProvidesExtractorsFactoryFactory(exoPlayerModule);
    }

    public static ExtractorsFactory proxyProvidesExtractorsFactory(ExoPlayerModule exoPlayerModule) {
        return (ExtractorsFactory) Preconditions.checkNotNull(exoPlayerModule.providesExtractorsFactory(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
