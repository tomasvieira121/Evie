package com.aol.mobile.sdk.player;

import android.os.Handler;
import com.aol.mobile.sdk.player.advertisement.AdProvider;
import com.aol.mobile.sdk.player.advertisement.AdServices;
import com.aol.mobile.sdk.player.advertisement.utils.Task;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAd;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAdServices;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmSource;
import com.aol.mobile.sdk.player.model.AdsTimeline;
import com.aol.mobile.sdk.player.model.VrmState;
import com.aol.mobile.sdk.player.model.properties.AdProperties;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;
import com.aol.mobile.sdk.player.utils.ObjectUtils;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class AdManager implements PlayerStateObserver {
    private final AdsTimeline[] adBreakage;
    private Double adProgress;
    private AdProvider<VrmAd, VrmSource> adProvider;
    private int adsToPlayLeft;
    private VideoProviderResponse.AdInfo currentAdInfo;
    private final long hardTimeout;
    private final Player player;
    private boolean shouldPlay;
    private final long softTimeout;
    private final String userAgent;
    private double videoProgress;
    private final Handler handler = new Handler();
    private final LinkedList<VideoProviderResponse.AdInfo> midrolls = new LinkedList<>();
    private State state = State.VIDEO_PLAY;
    private int videoIndex = Integer.MIN_VALUE;
    private String sessionId = null;
    private final AdProvider.AdCallback<VrmAd, VrmSource> adCallback = new AdProvider.AdCallback<VrmAd, VrmSource>() { // from class: com.aol.mobile.sdk.player.AdManager.1
        @Override // com.aol.mobile.sdk.player.advertisement.AdProvider.AdCallback
        public void onAdArrived(VrmAd vrmAd) {
            if (vrmAd != null && vrmAd.adVideoUrl != null) {
                AdManager.this.processVrmAd(vrmAd);
            } else {
                AdManager.this.processNoAd();
            }
        }

        @Override // com.aol.mobile.sdk.player.advertisement.AdProvider.AdCallback
        public void onTaskLaunched(Task<VrmAd, VrmSource> task) {
            AdManager.this.player.setTask(task, VrmState.TaskState.IN_PROGRESS);
        }

        @Override // com.aol.mobile.sdk.player.advertisement.AdProvider.AdCallback
        public void onTaskFinished(Task<VrmAd, VrmSource> task) {
            AdManager.this.player.setTask(task, VrmState.TaskState.FINISHED);
        }

        @Override // com.aol.mobile.sdk.player.advertisement.AdProvider.AdCallback
        public void onSoftTimeoutReached() {
            AdManager.this.player.setGroupProcessingState(VrmState.GroupProcessingState.SOFT_TIMEOUT_REACHED);
        }

        @Override // com.aol.mobile.sdk.player.advertisement.AdProvider.AdCallback
        public void onHardTimeoutReached() {
            AdManager.this.player.setGroupProcessingState(VrmState.GroupProcessingState.HARD_TIMEOUT_REACHED);
        }

        @Override // com.aol.mobile.sdk.player.advertisement.AdProvider.AdCallback
        public void onVrmParamsReady(String str, String str2) {
            AdManager.this.player.setAdParams(str, str2, AdManager.this.getAdType());
        }
    };
    private boolean videoChangeIsProcessed = true;

    private enum State {
        VIDEO_PLAY,
        AD_PLAY_PREROLL,
        AD_PLAY_MIDROLL
    }

    private static boolean shouldBePlayedAt(long j, long j2) {
        return j2 >= j * 1000;
    }

    public AdManager(String str, AdsTimeline[] adsTimelineArr, Player player, long j, long j2) {
        this.adBreakage = adsTimelineArr;
        this.player = player;
        this.softTimeout = j;
        this.hardTimeout = j2;
        this.userAgent = str;
    }

    static VideoProviderResponse.AdInfo getMidrollToPlay(LinkedList<VideoProviderResponse.AdInfo> linkedList, long j) {
        Iterator<VideoProviderResponse.AdInfo> itDescendingIterator = linkedList.descendingIterator();
        VideoProviderResponse.AdInfo adInfo = null;
        while (itDescendingIterator.hasNext()) {
            VideoProviderResponse.AdInfo next = itDescendingIterator.next();
            if (shouldBePlayedAt(next.timePosition, j)) {
                if (adInfo == null || adInfo.timePosition == next.timePosition) {
                    adInfo = next;
                } else {
                    itDescendingIterator.remove();
                }
            }
        }
        linkedList.remove(adInfo);
        return adInfo;
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        if (properties.playlistItem.video == null) {
            return;
        }
        VideoProperties videoProperties = properties.playlistItem.video;
        AdProperties adProperties = properties.f166ad;
        int i = properties.playlist.currentIndex;
        boolean z = properties.shouldPlay;
        if (!properties.session.f168id.equals(this.sessionId)) {
            this.sessionId = properties.session.f168id;
            this.videoIndex = i;
            this.videoChangeIsProcessed = false;
            this.shouldPlay = false;
            this.adProgress = null;
        }
        if (this.shouldPlay != z) {
            this.shouldPlay = z;
            processShouldPlayChange();
            return;
        }
        if (adProperties.errorState != null) {
            this.player.stopAdPlayback();
            processAdEnded();
            return;
        }
        TimeProperties timeProperties = videoProperties.time;
        if (timeProperties != null && !videoProperties.isSeeking && this.videoProgress != timeProperties.progress) {
            this.videoProgress = videoProperties.time.progress;
            processVideoProgress(videoProperties.time);
            return;
        }
        Double dValueOf = adProperties.time != null ? Double.valueOf(adProperties.time.progress) : null;
        if (ObjectUtils.equals(dValueOf, this.adProgress)) {
            return;
        }
        this.adProgress = dValueOf;
        if (dValueOf == null || dValueOf.doubleValue() != 1.0d) {
            return;
        }
        processAdEnded();
    }

    private void processShouldPlayChange() {
        if (!this.shouldPlay || this.videoChangeIsProcessed) {
            return;
        }
        processVideoChange();
    }

    private void processVideoChange() {
        this.videoChangeIsProcessed = true;
        if (this.state != State.VIDEO_PLAY) {
            AdProvider<VrmAd, VrmSource> adProvider = this.adProvider;
            if (adProvider != null) {
                adProvider.cancel();
                this.adProvider = null;
            }
            this.state = State.VIDEO_PLAY;
            this.player.stopAdPlayback();
            this.player.switchStateToContent();
        }
        AdsTimeline adsTimeline = this.adBreakage[this.videoIndex];
        if (adsTimeline == null) {
            return;
        }
        this.currentAdInfo = adsTimeline.prerolls;
        this.midrolls.clear();
        this.midrolls.addAll(adsTimeline.midrolls);
        this.adsToPlayLeft = 1 ^ (adsTimeline.prerolls.url.isEmpty() ? 1 : 0);
        if (this.adsToPlayLeft > 0) {
            this.state = State.AD_PLAY_PREROLL;
            this.player.switchStateToAd();
            requestAd(adsTimeline.prerolls);
        }
    }

    private void processVideoProgress(TimeProperties timeProperties) {
        VideoProviderResponse.AdInfo midrollToPlay;
        if (this.state != State.VIDEO_PLAY || this.adBreakage[this.videoIndex] == null || (midrollToPlay = getMidrollToPlay(this.midrolls, timeProperties.current)) == null) {
            return;
        }
        this.adsToPlayLeft = 1;
        this.currentAdInfo = midrollToPlay;
        if (this.adsToPlayLeft > 0) {
            this.state = State.AD_PLAY_MIDROLL;
            this.player.switchStateToAd();
            requestAd(midrollToPlay);
        }
    }

    void processVrmAd(VrmAd vrmAd) {
        if (this.player.getProperties().viewState == Properties.ViewState.Content) {
        }
        this.adsToPlayLeft--;
        this.adProvider = null;
        switch (this.state) {
            case AD_PLAY_PREROLL:
            case AD_PLAY_MIDROLL:
                this.player.setAd(vrmAd);
                this.player.playAd();
                break;
        }
    }

    void processNoAd() {
        this.adsToPlayLeft--;
        this.adProvider = null;
        this.player.stopAdPlayback();
        processAdEnded();
    }

    private void processAdEnded() {
        if (this.adBreakage[this.videoIndex] == null) {
        }
        switch (this.state) {
            case AD_PLAY_PREROLL:
            case AD_PLAY_MIDROLL:
                if (this.adsToPlayLeft > 0) {
                    requestAd(this.currentAdInfo);
                } else {
                    this.state = State.VIDEO_PLAY;
                    this.player.switchStateToContent();
                }
                break;
        }
    }

    void requestAd(VideoProviderResponse.AdInfo adInfo) {
        if (this.player.getProperties().playlistItem.video == null) {
            return;
        }
        this.adProvider = new AdProvider<>(getAdService(adInfo), getAdCallback());
        this.player.requestVrm(adInfo.url);
        this.adProvider.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAdType() {
        switch (this.state) {
            case AD_PLAY_PREROLL:
                return "preroll";
            case AD_PLAY_MIDROLL:
                return "midroll";
            default:
                return "";
        }
    }

    AdServices<VrmAd, VrmSource> getAdService(VideoProviderResponse.AdInfo adInfo) {
        return new VrmAdServices(adInfo.url, this.userAgent, this.softTimeout, this.hardTimeout, this.handler);
    }

    AdProvider.AdCallback<VrmAd, VrmSource> getAdCallback() {
        return this.adCallback;
    }
}
