package com.aol.mobile.sdk.player.detector.reporter;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.detector.VideoImpressionDetector;
import com.aol.mobile.sdk.player.metrics.pixel.TrackingPixelsReporter;
import com.aol.mobile.sdk.player.model.properties.Properties;

/* JADX INFO: loaded from: classes.dex */
public final class VideoImpressionReporter implements PlayerStateObserver {
    private final TrackingPixelsReporter reporter;
    private final VideoImpressionDetector videoImpressionDetector = new VideoImpressionDetector();

    public VideoImpressionReporter(TrackingPixelsReporter trackingPixelsReporter) {
        this.reporter = trackingPixelsReporter;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (properties.playlistItem.video == null) {
            return;
        }
        if (this.videoImpressionDetector.detect(properties.session.f168id, properties.viewport.width, properties.viewport.height, properties.playlistItem.video.model.brandedContent != null)) {
            this.reporter.sendVideoImpression(properties.playlist.currentIndex, properties.viewport.width, properties.viewport.height);
        }
    }
}
