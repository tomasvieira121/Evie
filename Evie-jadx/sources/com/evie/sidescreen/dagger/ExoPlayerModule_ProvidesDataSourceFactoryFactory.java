package com.evie.sidescreen.dagger;

import android.content.Context;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerModule_ProvidesDataSourceFactoryFactory implements Factory<DataSource.Factory> {
    private final Provider<Cache> cacheProvider;
    private final Provider<Context> contextProvider;
    private final ExoPlayerModule module;

    public ExoPlayerModule_ProvidesDataSourceFactoryFactory(ExoPlayerModule exoPlayerModule, Provider<Context> provider, Provider<Cache> provider2) {
        this.module = exoPlayerModule;
        this.contextProvider = provider;
        this.cacheProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DataSource.Factory get() {
        return proxyProvidesDataSourceFactory(this.module, this.contextProvider.get(), this.cacheProvider.get());
    }

    public static ExoPlayerModule_ProvidesDataSourceFactoryFactory create(ExoPlayerModule exoPlayerModule, Provider<Context> provider, Provider<Cache> provider2) {
        return new ExoPlayerModule_ProvidesDataSourceFactoryFactory(exoPlayerModule, provider, provider2);
    }

    public static DataSource.Factory proxyProvidesDataSourceFactory(ExoPlayerModule exoPlayerModule, Context context, Cache cache) {
        return (DataSource.Factory) Preconditions.checkNotNull(exoPlayerModule.providesDataSourceFactory(context, cache), "Cannot return null from a non-@Nullable @Provides method");
    }
}
