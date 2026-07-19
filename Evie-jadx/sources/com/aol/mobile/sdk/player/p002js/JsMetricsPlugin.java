package com.aol.mobile.sdk.player.p002js;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.Plugin;
import com.aol.mobile.sdk.player.VideoProviderResponse;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.http.HttpServiceException;
import com.aol.mobile.sdk.player.http.ResponseHandler;
import com.aol.mobile.sdk.player.http.StringResponseParser;
import com.aol.mobile.sdk.player.http.model.SdkConfig;
import com.aol.mobile.sdk.player.metrics.pixel.PixelsSender;
import com.aol.mobile.sdk.player.p002js.async.JsProcessorThread;
import com.aol.mobile.sdk.player.p002js.telemetry.JsTelemetryService;
import com.aol.mobile.sdk.player.telemetry.TelemetrySender;

/* JADX INFO: loaded from: classes.dex */
public final class JsMetricsPlugin implements Plugin {
    private final HttpService httpService;
    private final SdkConfig.Tracking.JavaScript tracking;

    public JsMetricsPlugin(SdkConfig.Tracking.JavaScript javaScript, HttpService httpService) {
        this.tracking = javaScript;
        this.httpService = httpService;
    }

    @Override // com.aol.mobile.sdk.player.Plugin
    public PlayerStateObserver[] provideObservers(final VideoProviderResponse videoProviderResponse) {
        PixelsSender pixelsSender = new PixelsSender(this.httpService);
        final JsTelemetryService jsTelemetryService = new JsTelemetryService(new TelemetrySender(this.httpService, this.tracking.telemetry.context, this.tracking.telemetry.url));
        final JsProcessorThread jsProcessorThread = new JsProcessorThread(jsTelemetryService, pixelsSender);
        this.httpService.makeGet(this.tracking.source, new StringResponseParser(), new ResponseHandler<String>() { // from class: com.aol.mobile.sdk.player.js.JsMetricsPlugin.1
            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onSuccess(String str) {
                jsProcessorThread.loadJs(videoProviderResponse.trackingContext.asJson, str);
            }

            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onFailure(HttpServiceException httpServiceException) {
                jsTelemetryService.sendJsLoadIssue(httpServiceException);
            }
        });
        return new PlayerStateObserver[]{new JsMetricsPropsProcessor(jsProcessorThread)};
    }
}
