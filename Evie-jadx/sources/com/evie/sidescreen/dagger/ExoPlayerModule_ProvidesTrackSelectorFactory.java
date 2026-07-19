package com.evie.sidescreen.dagger;

import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerModule_ProvidesTrackSelectorFactory implements Factory<TrackSelector> {
    private final Provider<BandwidthMeter> bandwidthMeterProvider;
    private final ExoPlayerModule module;

    public ExoPlayerModule_ProvidesTrackSelectorFactory(ExoPlayerModule exoPlayerModule, Provider<BandwidthMeter> provider) {
        this.module = exoPlayerModule;
        this.bandwidthMeterProvider = provider;
    }

    @Override // javax.inject.Provider
    public TrackSelector get() {
        return proxyProvidesTrackSelector(this.module, this.bandwidthMeterProvider.get());
    }

    public static ExoPlayerModule_ProvidesTrackSelectorFactory create(ExoPlayerModule exoPlayerModule, Provider<BandwidthMeter> provider) {
        return new ExoPlayerModule_ProvidesTrackSelectorFactory(exoPlayerModule, provider);
    }

    public static TrackSelector proxyProvidesTrackSelector(ExoPlayerModule exoPlayerModule, BandwidthMeter bandwidthMeter) {
        return (TrackSelector) Preconditions.checkNotNull(exoPlayerModule.providesTrackSelector(bandwidthMeter), "Cannot return null from a non-@Nullable @Provides method");
    }
}
