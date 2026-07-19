package com.evie.sidescreen.dagger;

import com.google.android.exoplayer2.upstream.BandwidthMeter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlayerModule_ProvidesBandwidthMeterFactory implements Factory<BandwidthMeter> {
    private final ExoPlayerModule module;

    public ExoPlayerModule_ProvidesBandwidthMeterFactory(ExoPlayerModule exoPlayerModule) {
        this.module = exoPlayerModule;
    }

    @Override // javax.inject.Provider
    public BandwidthMeter get() {
        return proxyProvidesBandwidthMeter(this.module);
    }

    public static ExoPlayerModule_ProvidesBandwidthMeterFactory create(ExoPlayerModule exoPlayerModule) {
        return new ExoPlayerModule_ProvidesBandwidthMeterFactory(exoPlayerModule);
    }

    public static BandwidthMeter proxyProvidesBandwidthMeter(ExoPlayerModule exoPlayerModule) {
        return (BandwidthMeter) Preconditions.checkNotNull(exoPlayerModule.providesBandwidthMeter(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
