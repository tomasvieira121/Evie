package com.aol.mobile.sdk.player.detector.reporter;

import com.aol.mobile.sdk.player.StateObserver;
import com.aol.mobile.sdk.player.detector.AdClickDetector;
import com.aol.mobile.sdk.player.detector.AdEngineRequestDetector;
import com.aol.mobile.sdk.player.detector.AdEngineResponseDetector;
import com.aol.mobile.sdk.player.detector.AdFinishDetector;
import com.aol.mobile.sdk.player.detector.AdIssueDetector;
import com.aol.mobile.sdk.player.detector.AdLoadWinDetector;
import com.aol.mobile.sdk.player.detector.AdPauseDetector;
import com.aol.mobile.sdk.player.detector.AdQuartileDetector;
import com.aol.mobile.sdk.player.detector.AdRequestDetector;
import com.aol.mobile.sdk.player.detector.AdResumeDetector;
import com.aol.mobile.sdk.player.detector.AdStartDetector;
import com.aol.mobile.sdk.player.detector.AdViewTimeDetector;
import com.aol.mobile.sdk.player.detector.AdViewabilityDetector;
import com.aol.mobile.sdk.player.metrics.pixel.TrackingPixelsReporter;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.PlayerState;
import com.aol.mobile.sdk.player.model.VrmSource;
import com.aol.mobile.sdk.player.model.VrmState;
import com.aol.mobile.sdk.player.model.properties.AdProperties;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;
import java.net.SocketTimeoutException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AdDetectorsReporter implements StateObserver {
    private final TrackingPixelsReporter reporter;
    private AdQuartileDetector adQuartileDetector = new AdQuartileDetector();
    private AdClickDetector adClickDetector = new AdClickDetector();
    private AdLoadWinDetector adLoadWinDetector = new AdLoadWinDetector();
    private AdStartDetector adStartDetector = new AdStartDetector();
    private AdFinishDetector adFinishDetector = new AdFinishDetector();
    private AdIssueDetector adIssueDetector = new AdIssueDetector();
    private AdResumeDetector adResumeDetector = new AdResumeDetector();
    private AdPauseDetector adPauseDetector = new AdPauseDetector();
    private AdViewTimeDetector adViewTimeDetector = new AdViewTimeDetector();
    private AdRequestDetector adRequestDetector = new AdRequestDetector();
    private AdViewabilityDetector adViewabilityDetector = new AdViewabilityDetector();
    private AdEngineRequestDetector adEngineRequestDetector = new AdEngineRequestDetector();
    private AdEngineResponseDetector adEngineResponseDetector = new AdEngineResponseDetector();

    public AdDetectorsReporter(TrackingPixelsReporter trackingPixelsReporter) {
        this.reporter = trackingPixelsReporter;
    }

    @Override // com.aol.mobile.sdk.player.StateObserver
    public void onStateChanged(PlayerState playerState, Properties properties) {
        checkAdQuartile(playerState, properties);
        checkAdClick(playerState, properties);
        checkAdFlow(playerState, properties);
        checkAdIssue(playerState, properties);
        checkAdResume(playerState, properties);
        checkAdPause(playerState, properties);
        checkAdViewTime(playerState, properties);
        checkAdRequest(playerState, properties);
        checkAdViewability(playerState, properties);
        checkAdEngineRequest(playerState, properties);
        checkAdEngineResponse(playerState, properties);
    }

    private void checkAdQuartile(PlayerState playerState, Properties properties) {
        Properties properties2 = properties;
        AdProperties adProperties = properties2.f166ad;
        if (adProperties == null || adProperties.time == null) {
            return;
        }
        Iterator<Integer> it = this.adQuartileDetector.detect(adProperties.time.quartile, playerState.adState.uniqueAdId).iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            AdProperties adProperties2 = adProperties;
            Iterator<Integer> it2 = it;
            this.reporter.sendAdQuartile(properties2.playlist.currentIndex, playerState.vrmState.source.vendor, playerState.vrmState.source.ruleId, playerState.vrmState.source.ruleCompanyId, playerState.vrmState.source.name, adProperties.type, properties2.viewport.width, properties2.viewport.height, properties2.isAutoplay, next.intValue(), properties2.playlistItem.video.uniqueVideoId, playerState.vrmState.txid, playerState.vrmState.adId);
            int i = 0;
            switch (next.intValue()) {
                case 1:
                    String[] strArr = playerState.vrmState.pixels.firstQuartile;
                    int length = strArr.length;
                    while (i < length) {
                        this.reporter.sendPixel(strArr[i]);
                        i++;
                    }
                    break;
                case 2:
                    String[] strArr2 = playerState.vrmState.pixels.midpoint;
                    int length2 = strArr2.length;
                    while (i < length2) {
                        this.reporter.sendPixel(strArr2[i]);
                        i++;
                    }
                    break;
                case 3:
                    String[] strArr3 = playerState.vrmState.pixels.thirdQuartile;
                    int length3 = strArr3.length;
                    while (i < length3) {
                        this.reporter.sendPixel(strArr3[i]);
                        i++;
                    }
                    break;
            }
            adProperties = adProperties2;
            it = it2;
            properties2 = properties;
        }
    }

    private void checkAdClick(PlayerState playerState, Properties properties) {
        if (this.adClickDetector.detect(properties.f166ad.isAdClicked)) {
            for (String str : playerState.vrmState.pixels.clickTracking) {
                this.reporter.sendPixel(str);
            }
        }
    }

    private void checkAdFlow(PlayerState playerState, Properties properties) {
        int i;
        VideoProperties videoProperties;
        if (properties.playlistItem.video == null) {
            return;
        }
        AdProperties adProperties = properties.f166ad;
        int i2 = properties.playlist.currentIndex;
        VideoProperties videoProperties2 = properties.playlistItem.video;
        if (this.adLoadWinDetector.detect(playerState.vrmState.adId)) {
            i = i2;
            videoProperties = videoProperties2;
            this.reporter.sendAdWin(i2, playerState.vrmState.source.vendor, playerState.vrmState.source.ruleId, playerState.vrmState.source.ruleCompanyId, playerState.vrmState.source.name, adProperties.type, properties.viewport.width, properties.viewport.height, properties.isAutoplay, videoProperties2.uniqueVideoId, playerState.vrmState.txid, playerState.vrmState.adId);
            this.reporter.sendAdLoaded(i, playerState.vrmState.source.vendor, playerState.vrmState.source.ruleId, playerState.vrmState.source.ruleCompanyId, playerState.vrmState.source.name, adProperties.type, properties.viewport.width, properties.viewport.height, properties.isAutoplay, videoProperties.uniqueVideoId, playerState.vrmState.txid, playerState.vrmState.adId);
        } else {
            i = i2;
            videoProperties = videoProperties2;
        }
        if (this.adStartDetector.detect(playerState.vrmState.adId, adProperties.time == null ? -1.0d : adProperties.time.progress)) {
            this.reporter.sendAdEngineStart(i, playerState.vrmState.source.vendor, playerState.vrmState.source.ruleId, playerState.vrmState.source.ruleCompanyId, playerState.vrmState.source.name, adProperties.type, properties.viewport.width, properties.viewport.height, properties.isAutoplay, videoProperties.uniqueVideoId, playerState.vrmState.txid, playerState.vrmState.adId);
            for (String str : playerState.vrmState.pixels.impression) {
                this.reporter.sendPixel(str);
            }
            for (String str2 : playerState.vrmState.pixels.creativeView) {
                this.reporter.sendPixel(str2);
            }
            for (String str3 : playerState.vrmState.pixels.start) {
                this.reporter.sendPixel(str3);
            }
            this.reporter.sendAdStart(playerState.vrmState.source.ruleId, videoProperties.uniqueVideoId);
        }
        if (this.adFinishDetector.detect(playerState.vrmState.adId, adProperties.time == null ? -1.0d : adProperties.time.progress)) {
            this.reporter.sendAdFinished(i, playerState.vrmState.source.vendor, playerState.vrmState.source.ruleId, playerState.vrmState.source.ruleCompanyId, playerState.vrmState.source.name, adProperties.type, properties.viewport.width, properties.viewport.height, properties.isAutoplay, videoProperties.uniqueVideoId, playerState.vrmState.txid, playerState.vrmState.adId);
            for (String str4 : playerState.vrmState.pixels.complete) {
                this.reporter.sendPixel(str4);
            }
        }
    }

    private void checkAdIssue(PlayerState playerState, Properties properties) {
        AdProperties adProperties = properties.f166ad;
        if (this.adIssueDetector.detect(adProperties.errorState)) {
            this.reporter.sendAdIssue(properties.playlist.currentIndex, playerState.vrmState.source.vendor, playerState.vrmState.source.ruleId, playerState.vrmState.source.ruleCompanyId, playerState.vrmState.source.name, adProperties.type, adProperties.errorState.name(), adProperties.errorState == ErrorState.CONNECTION_ERROR ? "load" : "start", properties.playlistItem.video.uniqueVideoId, playerState.vrmState.txid, playerState.vrmState.adId);
            for (String str : playerState.vrmState.pixels.error) {
                this.reporter.sendPixel(str);
            }
        }
    }

    private void checkAdResume(PlayerState playerState, Properties properties) {
        AdProperties adProperties = properties.f166ad;
        if (this.adResumeDetector.detect(adProperties.time, adProperties.isVideoStreamPlaying)) {
            for (String str : playerState.vrmState.pixels.resume) {
                this.reporter.sendPixel(str);
            }
        }
    }

    private void checkAdPause(PlayerState playerState, Properties properties) {
        AdProperties adProperties = properties.f166ad;
        if (this.adPauseDetector.detect(adProperties.time, adProperties.isVideoStreamPlaying)) {
            for (String str : playerState.vrmState.pixels.pause) {
                this.reporter.sendPixel(str);
            }
        }
    }

    private void checkAdViewTime(PlayerState playerState, Properties properties) {
        AdProperties adProperties = properties.f166ad;
        if (this.adViewTimeDetector.detect(System.currentTimeMillis(), adProperties.time, adProperties.isFinished, properties.isSessionCompleted)) {
            this.reporter.sendAdViewTime(properties.playlist.currentIndex, properties.playlistItem.video.uniqueVideoId, playerState.vrmState.txid, playerState.vrmState.source.ruleId, playerState.vrmState.adId, this.adViewTimeDetector.getDuration() / 1000.0f, adProperties.time.duration / 1000.0f);
        }
    }

    private void checkAdRequest(PlayerState playerState, Properties properties) {
        AdProperties adProperties = properties.f166ad;
        int i = properties.playlist.currentIndex;
        VideoProperties videoProperties = properties.playlistItem.video;
        if (this.adRequestDetector.detect(properties.f166ad.adNum)) {
            this.reporter.sendAdRequest(i, adProperties.type, playerState.vrmState.txid, properties.f166ad.adNum, videoProperties.uniqueVideoId);
        }
    }

    private void checkAdViewability(PlayerState playerState, Properties properties) {
        if (this.adViewabilityDetector.detect(properties.f166ad.time)) {
            this.reporter.sendAdViewability(properties.playlist.currentIndex, playerState.vrmState.source.vendor, properties.f166ad.type, properties.isAutoplay, "groupm", properties.playlistItem.video.uniqueVideoId);
        }
    }

    private void checkAdEngineRequest(PlayerState playerState, Properties properties) {
        VrmState vrmState = playerState.vrmState;
        if (this.adEngineRequestDetector.detect(vrmState.taskState)) {
            VideoProperties videoProperties = properties.playlistItem.video;
            int i = properties.playlist.currentIndex;
            VrmSource vrmSource = vrmState.source;
            this.reporter.sendAdEngineRequest(i, vrmSource.vendor, vrmSource.ruleId, vrmSource.ruleCompanyId, vrmSource.name, playerState.adState.adType, videoProperties.uniqueVideoId, vrmState.txid);
            this.reporter.sendAdServerRequest(vrmSource.ruleId, videoProperties.uniqueVideoId);
        }
    }

    private void checkAdEngineResponse(PlayerState playerState, Properties properties) {
        String str;
        int i;
        VrmState vrmState = playerState.vrmState;
        if (this.adEngineResponseDetector.detect(vrmState.taskState)) {
            VideoProperties videoProperties = properties.playlistItem.video;
            int i2 = properties.playlist.currentIndex;
            VrmSource vrmSource = vrmState.source;
            if (vrmState.taskError == null) {
                str = "yes";
            } else {
                str = vrmState.taskError instanceof SocketTimeoutException ? "timeout" : "no";
            }
            String str2 = str;
            switch (vrmState.groupProcessingState) {
                case SOFT_TIMEOUT_REACHED:
                    i = 1;
                    break;
                case HARD_TIMEOUT_REACHED:
                    i = 2;
                    break;
                default:
                    i = 0;
                    break;
            }
            this.reporter.sendAdEngineResponse(i2, vrmSource.vendor, vrmSource.ruleId, vrmSource.ruleCompanyId, vrmSource.name, playerState.adState.adType, str2, vrmState.taskTime, str2.equals("timeout") ? 500L : 0L, i, videoProperties.uniqueVideoId, vrmState.txid);
        }
    }
}
