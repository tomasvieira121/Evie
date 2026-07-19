package com.aol.mobile.sdk.player.telemetry;

import com.aol.mobile.sdk.player.StateObserver;
import com.aol.mobile.sdk.player.VideoProviderResponse;
import com.aol.mobile.sdk.player.detector.reporter.AdDetectorsReporter;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.listener.detector.SlotOppDetector;
import com.aol.mobile.sdk.player.metrics.pixel.PixelsSender;
import com.aol.mobile.sdk.player.metrics.pixel.TrackingPixelsReporter;
import com.aol.mobile.sdk.player.utils.CacheBuster;
import com.aol.mobile.sdk.player.utils.TimeProvider;
import com.aol.mobile.sdk.player.utils.VolumeGetter;

/* JADX INFO: loaded from: classes.dex */
public final class AdPlugin {
    private final HttpService httpService;
    private final VolumeGetter volumeGetter;

    public AdPlugin(HttpService httpService, VolumeGetter volumeGetter) {
        this.httpService = httpService;
        this.volumeGetter = volumeGetter;
    }

    public StateObserver[] provideObservers(VideoProviderResponse videoProviderResponse) {
        TrackingPixelsReporter trackingPixelsReporter = new TrackingPixelsReporter(new PixelsSender(this.httpService), videoProviderResponse.trackingContext, new CacheBuster(), new TimeProvider(), this.volumeGetter);
        return new StateObserver[]{new AdDetectorsReporter(trackingPixelsReporter), new SlotOppDetector(trackingPixelsReporter)};
    }
}
