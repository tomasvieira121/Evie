package com.evie.sidescreen.dagger.external;

import android.content.Context;
import com.google.android.exoplayer2.upstream.cache.Cache;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory implements Factory<Cache> {
    private final Provider<Context> contextProvider;

    public ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public Cache get() {
        return proxyProvidesExoPlayerCache(this.contextProvider.get());
    }

    public static ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory create(Provider<Context> provider) {
        return new ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory(provider);
    }

    public static Cache proxyProvidesExoPlayerCache(Context context) {
        return (Cache) Preconditions.checkNotNull(ExoPlayerCacheModule.providesExoPlayerCache(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
