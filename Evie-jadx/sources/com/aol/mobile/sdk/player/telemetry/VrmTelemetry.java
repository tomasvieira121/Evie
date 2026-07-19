package com.aol.mobile.sdk.player.telemetry;

import com.aol.mobile.sdk.player.StateObserver;
import com.aol.mobile.sdk.player.detector.VrmStatisticsDetector;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.http.model.SdkConfig;
import com.aol.mobile.sdk.player.model.PlayerState;
import com.aol.mobile.sdk.player.model.properties.Properties;

/* JADX INFO: loaded from: classes.dex */
public final class VrmTelemetry {
    private final HttpService httpService;
    private final SdkConfig.Telemetry telemetry;

    public VrmTelemetry(HttpService httpService, SdkConfig.Telemetry telemetry) {
        this.httpService = httpService;
        this.telemetry = telemetry;
    }

    public StateObserver getStateObserver() {
        final TelemetrySender telemetrySender = new TelemetrySender(this.httpService, this.telemetry.context, this.telemetry.url);
        return new StateObserver() { // from class: com.aol.mobile.sdk.player.telemetry.VrmTelemetry.1
            VrmStatisticsDetector detector = new VrmStatisticsDetector();

            @Override // com.aol.mobile.sdk.player.StateObserver
            public void onStateChanged(PlayerState playerState, Properties properties) {
                if (this.detector.detect(System.currentTimeMillis(), playerState.vrmState, properties.f166ad.time)) {
                    telemetrySender.sendVrmStatisticsData(this.detector.getVrmProcessingTime(), this.detector.getAdBufferingTime());
                }
            }
        };
    }
}
