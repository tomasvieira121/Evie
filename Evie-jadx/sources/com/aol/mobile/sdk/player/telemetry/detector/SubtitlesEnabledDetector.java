package com.aol.mobile.sdk.player.telemetry.detector;

import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;
import com.aol.mobile.sdk.player.telemetry.TelemetrySender;
import com.aol.mobile.sdk.player.utils.ObjectUtils;
import com.aol.mobile.sdk.renderer.TextTrack;

/* JADX INFO: loaded from: classes.dex */
public class SubtitlesEnabledDetector implements PlayerStateObserver {
    private boolean ccIsEnabled;
    private TextTrack selectedCc;
    private final TelemetrySender sender;
    private String sessionId;

    public SubtitlesEnabledDetector(TelemetrySender telemetrySender) {
        this.sender = telemetrySender;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        TextTrack textTrack;
        VideoProperties videoProperties = properties.playlistItem.video;
        if (!ObjectUtils.equals(this.sessionId, properties.session.f168id)) {
            this.sessionId = properties.session.f168id;
            this.ccIsEnabled = false;
        }
        TextTrack textTrack2 = videoProperties != null ? videoProperties.selectedTextTrack : null;
        if (this.selectedCc != textTrack2) {
            this.selectedCc = textTrack2;
            if (this.ccIsEnabled || (textTrack = this.selectedCc) == null || textTrack.isEmpty) {
                return;
            }
            this.ccIsEnabled = true;
            this.sender.sendSubtitlesEnabledData(videoProperties.subtitles.url != null);
        }
    }
}
