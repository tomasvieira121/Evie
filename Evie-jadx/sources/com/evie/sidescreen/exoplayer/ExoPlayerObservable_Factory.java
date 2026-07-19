package com.evie.sidescreen.exoplayer;

import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.upstream.DataSource;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerObservable_Factory implements Factory<ExoPlayerObservable> {
    private final Provider<DataSource.Factory> dataSourceFactoryProvider;
    private final Provider<ExtractorsFactory> extractorsFactoryProvider;
    private final Provider<SimpleExoPlayer> playerProvider;

    public ExoPlayerObservable_Factory(Provider<SimpleExoPlayer> provider, Provider<DataSource.Factory> provider2, Provider<ExtractorsFactory> provider3) {
        this.playerProvider = provider;
        this.dataSourceFactoryProvider = provider2;
        this.extractorsFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ExoPlayerObservable get() {
        return new ExoPlayerObservable(this.playerProvider, this.dataSourceFactoryProvider.get(), this.extractorsFactoryProvider.get());
    }

    public static ExoPlayerObservable_Factory create(Provider<SimpleExoPlayer> provider, Provider<DataSource.Factory> provider2, Provider<ExtractorsFactory> provider3) {
        return new ExoPlayerObservable_Factory(provider, provider2, provider3);
    }
}
