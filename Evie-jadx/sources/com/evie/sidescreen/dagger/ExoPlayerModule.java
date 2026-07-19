package com.evie.sidescreen.dagger;

import android.content.Context;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.extractor.DefaultExtractorsFactory;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSourceFactory;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
public class ExoPlayerModule {
    public DataSource.Factory providesDataSourceFactory(Context context, Cache cache) {
        return new CacheDataSourceFactory(cache, new DefaultDataSourceFactory(context, Util.getUserAgent(context, "sidescreen"), new DefaultBandwidthMeter()));
    }

    public ExtractorsFactory providesExtractorsFactory() {
        return new DefaultExtractorsFactory();
    }

    public BandwidthMeter providesBandwidthMeter() {
        return new DefaultBandwidthMeter();
    }

    public TrackSelector providesTrackSelector(BandwidthMeter bandwidthMeter) {
        return new DefaultTrackSelector(new AdaptiveTrackSelection.Factory(bandwidthMeter));
    }

    public SimpleExoPlayer providesSimpleExoPlayer(Context context, TrackSelector trackSelector) {
        return ExoPlayerFactory.newSimpleInstance(new DefaultRenderersFactory(context), trackSelector, new DefaultLoadControl(new DefaultAllocator(true, 65536), 3000, 30000, 1000, 3000, -1, true));
    }
}
