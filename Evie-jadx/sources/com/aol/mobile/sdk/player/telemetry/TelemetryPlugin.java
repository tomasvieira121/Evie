package com.aol.mobile.sdk.player.telemetry;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.Plugin;
import com.aol.mobile.sdk.player.VideoProviderResponse;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.http.model.SdkConfig;
import com.aol.mobile.sdk.player.telemetry.detector.ExternalPlaybackTriggeredDetector;
import com.aol.mobile.sdk.player.telemetry.detector.PlaybackErrorDetector;
import com.aol.mobile.sdk.player.telemetry.detector.SubtitlesEnabledDetector;

/* JADX INFO: loaded from: classes.dex */
public final class TelemetryPlugin implements Plugin {
    private final HttpService httpService;
    private final SdkConfig.Telemetry telemetry;

    public TelemetryPlugin(HttpService httpService, SdkConfig.Telemetry telemetry) {
        this.httpService = httpService;
        this.telemetry = telemetry;
    }

    @Override // com.aol.mobile.sdk.player.Plugin
    public PlayerStateObserver[] provideObservers(VideoProviderResponse videoProviderResponse) {
        TelemetrySender telemetrySender = new TelemetrySender(this.httpService, this.telemetry.context, this.telemetry.url);
        return new PlayerStateObserver[]{new PlaybackErrorDetector(telemetrySender), new ExternalPlaybackTriggeredDetector(telemetrySender), new SubtitlesEnabledDetector(telemetrySender)};
    }
}
