package com.evie.sidescreen.dagger;

import android.content.Context;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerModule_ProvidesSimpleExoPlayerFactory implements Factory<SimpleExoPlayer> {
    private final Provider<Context> contextProvider;
    private final ExoPlayerModule module;
    private final Provider<TrackSelector> trackSelectorProvider;

    public ExoPlayerModule_ProvidesSimpleExoPlayerFactory(ExoPlayerModule exoPlayerModule, Provider<Context> provider, Provider<TrackSelector> provider2) {
        this.module = exoPlayerModule;
        this.contextProvider = provider;
        this.trackSelectorProvider = provider2;
    }

    @Override // javax.inject.Provider
    public SimpleExoPlayer get() {
        return proxyProvidesSimpleExoPlayer(this.module, this.contextProvider.get(), this.trackSelectorProvider.get());
    }

    public static ExoPlayerModule_ProvidesSimpleExoPlayerFactory create(ExoPlayerModule exoPlayerModule, Provider<Context> provider, Provider<TrackSelector> provider2) {
        return new ExoPlayerModule_ProvidesSimpleExoPlayerFactory(exoPlayerModule, provider, provider2);
    }

    public static SimpleExoPlayer proxyProvidesSimpleExoPlayer(ExoPlayerModule exoPlayerModule, Context context, TrackSelector trackSelector) {
        return (SimpleExoPlayer) Preconditions.checkNotNull(exoPlayerModule.providesSimpleExoPlayer(context, trackSelector), "Cannot return null from a non-@Nullable @Provides method");
    }
}
