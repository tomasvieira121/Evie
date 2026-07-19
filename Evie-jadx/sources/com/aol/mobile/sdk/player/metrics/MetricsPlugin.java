package com.aol.mobile.sdk.player.metrics;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.Plugin;
import com.aol.mobile.sdk.player.VideoProviderResponse;
import com.aol.mobile.sdk.player.detector.reporter.VideoImpressionReporter;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.listener.detector.ContextStartedDetector;
import com.aol.mobile.sdk.player.listener.detector.DecileDetector;
import com.aol.mobile.sdk.player.listener.detector.HeartbeatDetector;
import com.aol.mobile.sdk.player.listener.detector.ImpressionDisplayDetector;
import com.aol.mobile.sdk.player.listener.detector.PlaylistStatisticDetector;
import com.aol.mobile.sdk.player.listener.detector.QuartileDetector;
import com.aol.mobile.sdk.player.listener.detector.Video3SecDetector;
import com.aol.mobile.sdk.player.listener.detector.VideoPlayDetector;
import com.aol.mobile.sdk.player.listener.detector.VideoTimeDetector;
import com.aol.mobile.sdk.player.metrics.pixel.PixelsSender;
import com.aol.mobile.sdk.player.metrics.pixel.TrackingPixelsReporter;
import com.aol.mobile.sdk.player.utils.CacheBuster;
import com.aol.mobile.sdk.player.utils.TimeProvider;
import com.aol.mobile.sdk.player.utils.VolumeGetter;

/* JADX INFO: loaded from: classes.dex */
public final class MetricsPlugin implements Plugin {
    private final HttpService httpService;
    private final VolumeGetter volumeGetter;

    public MetricsPlugin(HttpService httpService, VolumeGetter volumeGetter) {
        this.httpService = httpService;
        this.volumeGetter = volumeGetter;
    }

    @Override // com.aol.mobile.sdk.player.Plugin
    public PlayerStateObserver[] provideObservers(VideoProviderResponse videoProviderResponse) {
        TrackingPixelsReporter trackingPixelsReporter = new TrackingPixelsReporter(new PixelsSender(this.httpService), videoProviderResponse.trackingContext, new CacheBuster(), new TimeProvider(), this.volumeGetter);
        return new PlayerStateObserver[]{new QuartileDetector(trackingPixelsReporter), new DecileDetector(trackingPixelsReporter), new VideoPlayDetector(trackingPixelsReporter), new PlaylistStatisticDetector(trackingPixelsReporter), new VideoTimeDetector(trackingPixelsReporter), new ContextStartedDetector(trackingPixelsReporter), new ImpressionDisplayDetector(trackingPixelsReporter), new Video3SecDetector(trackingPixelsReporter), new HeartbeatDetector(trackingPixelsReporter), new VideoImpressionReporter(trackingPixelsReporter)};
    }
}
