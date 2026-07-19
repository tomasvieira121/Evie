package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.player.advertisement.utils.Task;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAd;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmSource;
import com.aol.mobile.sdk.player.model.AdState;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.Pixels;
import com.aol.mobile.sdk.player.model.PlayerModel;
import com.aol.mobile.sdk.player.model.PlayerState;
import com.aol.mobile.sdk.player.model.SeekState;
import com.aol.mobile.sdk.player.model.TimePosition;
import com.aol.mobile.sdk.player.model.VideoModel;
import com.aol.mobile.sdk.player.model.VrmState;
import com.aol.mobile.sdk.player.utils.Preconditions;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
class PlayerLogic {
    final PlayerState playerState;
    private final VvuidGenerator vvuidGenerator;

    PlayerLogic(PlayerModel playerModel, VvuidGenerator vvuidGenerator) {
        Preconditions.checkArgument(playerModel.videoModels.size() > 0, "PlayerModel must have at least 1 video");
        this.vvuidGenerator = vvuidGenerator;
        this.playerState = new PlayerState(playerModel, vvuidGenerator.generate());
    }

    static void checkAdCues(Set<Double> set, TimePosition timePosition) {
        Iterator<Double> it = set.iterator();
        while (it.hasNext()) {
            double dDoubleValue = it.next().doubleValue();
            double position = timePosition.getPosition();
            double duration = timePosition.getDuration();
            Double.isNaN(position);
            Double.isNaN(duration);
            if (dDoubleValue <= position / duration) {
                it.remove();
            }
        }
    }

    private void resetToStartState() {
        clearAd();
        switchStateToContent();
        this.playerState.textTrackList = Collections.unmodifiableList(Collections.emptyList());
        this.playerState.audioTrackList = Collections.unmodifiableList(Collections.emptyList());
        this.playerState.session.reset();
        PlayerState playerState = this.playerState;
        playerState.isPlaybackStarted = true;
        playerState.timePosition = null;
        playerState.bufferedPercentage = 0;
        playerState.shouldPlay = true;
        playerState.cameraDirection.change(0.0d, 0.0d);
        PlayerState playerState2 = this.playerState;
        playerState2.isVideoStreamPlaying = false;
        playerState2.errorState = null;
        playerState2.seekState = SeekState.NONE;
        PlayerState playerState3 = this.playerState;
        playerState3.hlsBitrate = 0L;
        playerState3.adCues.clear();
    }

    void playNext() {
        if (this.playerState.videoIndex + 1 < this.playerState.playerModel.videoModels.size()) {
            resetToStartState();
            this.playerState.videoIndex++;
            this.playerState.uniqueVideoId = this.vvuidGenerator.generate();
        }
        checkCasting();
    }

    void playPrevious() {
        if (this.playerState.videoIndex - 1 >= 0) {
            resetToStartState();
            this.playerState.videoIndex--;
            this.playerState.uniqueVideoId = this.vvuidGenerator.generate();
        }
        checkCasting();
    }

    void playAtIndex(int i) {
        int size = this.playerState.playerModel.videoModels.size();
        if (i >= 0 && i < size && this.playerState.videoIndex != i) {
            resetToStartState();
            PlayerState playerState = this.playerState;
            playerState.videoIndex = i;
            playerState.uniqueVideoId = this.vvuidGenerator.generate();
        }
        checkCasting();
    }

    private void checkCasting() {
        VideoModel videoModel = this.playerState.playerModel.videoModels.get(this.playerState.videoIndex).videoModel;
        if (videoModel == null || !videoModel.isScreenCastingEnabled) {
            setCast(false);
        }
    }

    void play() {
        if (this.playerState.seekState != SeekState.NONE) {
            return;
        }
        if (this.playerState.viewState == PlayerState.ViewState.Content) {
            if (this.playerState.errorState != null) {
                this.playerState.errorState = null;
            }
            this.playerState.isPlaybackStarted = true;
        }
        this.playerState.shouldPlay = true;
        playAd();
    }

    void playAd() {
        this.playerState.adState.shouldPlay = true;
    }

    void pause() {
        if (this.playerState.seekState != SeekState.NONE) {
            return;
        }
        this.playerState.shouldPlay = false;
        pauseAd();
    }

    void pauseAd() {
        this.playerState.adState.shouldPlay = false;
    }

    void replay() {
        Preconditions.checkState(this.playerState.seekState == SeekState.NONE, "Player can not replay while is seeking");
        seekTo(0.0d);
        this.playerState.session.reset();
        PlayerState playerState = this.playerState;
        playerState.shouldPlay = true;
        playerState.errorState = null;
        updateAdCues(playerState.playerModel.videoModels.get(this.playerState.videoIndex).videoModel, this.playerState.timePosition == null ? 0L : this.playerState.timePosition.getDuration());
    }

    void stopWithError(ErrorState errorState) {
        this.playerState.errorState = errorState;
    }

    void stopAdWithError(ErrorState errorState) {
        this.playerState.adState.errorState = errorState;
    }

    void startSeek() {
        Preconditions.checkState(this.playerState.seekState == SeekState.NONE, "Already seeking");
        PlayerState playerState = this.playerState;
        playerState.seekState = playerState.shouldPlay ? SeekState.SEEKING_WITH_RESUME : SeekState.SEEKING;
        this.playerState.shouldPlay = false;
    }

    void stopSeek() {
        Preconditions.checkState(this.playerState.seekState != SeekState.NONE, "StartSeek is not called");
        PlayerState playerState = this.playerState;
        playerState.shouldPlay = playerState.seekState == SeekState.SEEKING_WITH_RESUME;
        this.playerState.seekState = SeekState.NONE;
    }

    void seekTo(double d) {
        if (this.playerState.timePosition != null) {
            this.playerState.timePosition.setProgress(d);
        }
        this.playerState.seekPosition = Double.valueOf(d);
    }

    void resetSeekPosition() {
        this.playerState.seekPosition = null;
    }

    void updateVideoDuration(long j) {
        if (this.playerState.timePosition == null) {
            this.playerState.timePosition = new TimePosition(j);
            updateAdCues(this.playerState.playerModel.videoModels.get(this.playerState.videoIndex).videoModel, j);
        }
    }

    private void updateAdCues(VideoModel videoModel, long j) {
        if (videoModel == null || videoModel.adTimings == null) {
            return;
        }
        Iterator<Long> it = videoModel.adTimings.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            Set<Double> set = this.playerState.adCues;
            double d = jLongValue;
            Double.isNaN(d);
            double d2 = j;
            Double.isNaN(d2);
            set.add(Double.valueOf((d * 1000.0d) / d2));
        }
    }

    void updateAdDuration(long j) {
        this.playerState.adState.timePosition = new TimePosition(j);
    }

    void updateVideoPlayback(boolean z) {
        PlayerState playerState = this.playerState;
        playerState.isVideoStreamPlaying = z;
        playerState.session.updatePlaybackTime(z, System.currentTimeMillis());
    }

    void updateAdPlayback(boolean z) {
        this.playerState.adState.isStreamPlaying = z;
    }

    void endVideoPlayback() {
        Preconditions.checkState(this.playerState.timePosition != null, "Video duration is not set, but end of playback reached");
        if (this.playerState.playerModel.videoModels.size() - 1 == this.playerState.videoIndex) {
            this.playerState.timePosition.setToEndPosition();
            this.playerState.shouldPlay = false;
        } else {
            playNext();
        }
    }

    void updateVideoPosition(long j) {
        if (this.playerState.isVideoStreamPlaying && this.playerState.shouldPlay && this.playerState.timePosition != null) {
            if (j <= this.playerState.timePosition.getDuration()) {
                this.playerState.timePosition.setPosition(j);
                checkAdCues(this.playerState.adCues, this.playerState.timePosition);
            }
            this.playerState.session.updatePlaybackTime(this.playerState.isVideoStreamPlaying, System.currentTimeMillis());
        }
    }

    void updateAdPosition(long j) {
        if (this.playerState.adState.timePosition == null || j > this.playerState.adState.timePosition.getDuration()) {
            return;
        }
        this.playerState.adState.timePosition.setPosition(j);
    }

    void updateVideoBufferedPercentage(int i) {
        Preconditions.checkArgument(i >= 0 && i <= 100, "bufferedPercentage should be in range 0..100");
        if (this.playerState.bufferedPercentage != i) {
            this.playerState.bufferedPercentage = i;
        }
    }

    void updateVideoDimensions(int i, int i2) {
        PlayerState playerState = this.playerState;
        playerState.playerWidth = i;
        playerState.playerHeight = i2;
    }

    void updateAdDimensions(int i, int i2) {
        this.playerState.adState.width = i;
        this.playerState.adState.height = i2;
    }

    void completePlaybackSession() {
        if (this.playerState.isSessionCompleted) {
            return;
        }
        this.playerState.isSessionCompleted = true;
    }

    void setAd(VrmAd vrmAd) {
        AdState adState = this.playerState.adState;
        adState.timePosition = null;
        adState.url = vrmAd.adVideoUrl;
        adState.targetUrl = vrmAd.targetUrl;
        adState.isStreamPlaying = false;
        adState.isScalable = vrmAd.scalable;
        adState.isMaintainAspectRatio = vrmAd.maintainAspectRatio;
        adState.uniqueAdId = UUID.randomUUID().toString();
        VrmState vrmState = this.playerState.vrmState;
        vrmState.adUrl = vrmAd.adVideoUrl;
        vrmState.targetUrl = vrmAd.targetUrl;
        vrmState.adId = vrmAd.adId;
        vrmState.isScalable = vrmAd.scalable;
        vrmState.isMaintainAspectRatio = vrmAd.maintainAspectRatio;
        vrmState.pixels.impression = vrmAd.pixels.impression;
        vrmState.pixels.error = vrmAd.pixels.error;
        vrmState.pixels.clickTracking = vrmAd.pixels.clickTracking;
        vrmState.pixels.creativeView = vrmAd.pixels.creativeView;
        vrmState.pixels.start = vrmAd.pixels.start;
        vrmState.pixels.firstQuartile = vrmAd.pixels.firstQuartile;
        vrmState.pixels.midpoint = vrmAd.pixels.midpoint;
        vrmState.pixels.thirdQuartile = vrmAd.pixels.thirdQuartile;
        vrmState.pixels.complete = vrmAd.pixels.complete;
        vrmState.pixels.pause = vrmAd.pixels.pause;
        vrmState.pixels.resume = vrmAd.pixels.resume;
        VrmSource vrmSource = vrmAd.getVrmSource();
        vrmState.source.url = vrmSource.getUrl();
        vrmState.source.xml = vrmSource.getXml();
        vrmState.source.adEngineType = vrmSource.getAdEngineType();
        vrmState.source.ruleId = vrmSource.getRuleId();
        vrmState.source.ruleCompanyId = vrmSource.getRuleCompanyId();
        vrmState.source.vendor = vrmSource.getVendor();
        vrmState.source.name = vrmSource.getName();
        vrmState.taskState = VrmState.TaskState.NO_TASK;
        vrmState.groupProcessingState = VrmState.GroupProcessingState.NO_TIMEOUT_REACHED;
        vrmState.taskTime = 0L;
        vrmState.taskError = null;
    }

    void requestVrm(String str) {
        this.playerState.vrmState.vrmUrl = str;
    }

    void setCast(boolean z) {
        this.playerState.isCasting = z;
    }

    void setAdParams(String str, String str2, String str3) {
        AdState adState = this.playerState.adState;
        adState.adType = str3;
        adState.adNum++;
        VrmState vrmState = this.playerState.vrmState;
        vrmState.txid = str;
        vrmState.slot = str2;
    }

    void setTask(Task<VrmAd, VrmSource> task, VrmState.TaskState taskState) {
        this.playerState.vrmState.source.url = task.getSource().getUrl();
        this.playerState.vrmState.source.xml = task.getSource().getXml();
        this.playerState.vrmState.source.adEngineType = task.getSource().getAdEngineType();
        this.playerState.vrmState.source.ruleId = task.getSource().getRuleId();
        this.playerState.vrmState.source.ruleCompanyId = task.getSource().getRuleCompanyId();
        this.playerState.vrmState.source.vendor = task.getSource().getVendor();
        this.playerState.vrmState.source.name = task.getSource().getName();
        this.playerState.vrmState.taskTime = task.getTime();
        this.playerState.vrmState.taskError = task.getError();
        this.playerState.vrmState.taskState = taskState;
    }

    void setGroupProcessingState(VrmState.GroupProcessingState groupProcessingState) {
        this.playerState.vrmState.groupProcessingState = groupProcessingState;
    }

    void clearAd() {
        AdState adState = this.playerState.adState;
        adState.timePosition = null;
        adState.url = null;
        adState.targetUrl = null;
        adState.errorState = null;
        adState.isStreamPlaying = false;
        adState.adType = null;
        adState.uniqueAdId = null;
        VrmState vrmState = this.playerState.vrmState;
        vrmState.vrmUrl = null;
        vrmState.adUrl = null;
        vrmState.targetUrl = null;
        vrmState.adId = null;
        vrmState.pixels = new Pixels();
        vrmState.source = new com.aol.mobile.sdk.player.model.VrmSource();
        vrmState.txid = null;
        vrmState.slot = null;
        vrmState.taskState = VrmState.TaskState.NO_TASK;
        vrmState.groupProcessingState = VrmState.GroupProcessingState.NO_TIMEOUT_REACHED;
        vrmState.taskTime = 0L;
        vrmState.taskError = null;
    }

    void switchStateToContent() {
        this.playerState.viewState = PlayerState.ViewState.Content;
    }

    void switchStateToAd() {
        this.playerState.viewState = PlayerState.ViewState.Ad;
    }

    void setMute(boolean z) {
        if (this.playerState.isMuted != z) {
            this.playerState.isMuted = z;
        }
    }

    void setOnForeground(boolean z) {
        if (this.playerState.isOnForeground != z) {
            this.playerState.isOnForeground = z;
        }
    }

    void notifyAdClicked() {
        this.playerState.adState.isAdClicked = true;
    }

    void notifyAdPresented() {
        this.playerState.adState.isAdClicked = false;
    }

    void setCameraDirection(double d, double d2) {
        this.playerState.cameraDirection.change(d, d2);
    }

    void moveCameraBy(double d, double d2) {
        this.playerState.cameraDirection.moveBy(d, d2);
    }

    void updateHlsBitrate(long j) {
        this.playerState.hlsBitrate = j;
    }

    void updateTrackInfo(List<AudioTrack> list, List<TextTrack> list2) {
        this.playerState.audioTrackList = Collections.unmodifiableList(list);
        this.playerState.textTrackList = Collections.unmodifiableList(list2);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    void selectAudioTrack(AudioTrack audioTrack) {
        if (!this.playerState.audioTrackList.contains(audioTrack)) {
            throw new IllegalArgumentException("Audio track is not in list");
        }
        LinkedList linkedList = new LinkedList();
        for (AudioTrack audioTrack2 : this.playerState.audioTrackList) {
            if (audioTrack2 == audioTrack) {
                linkedList.add(audioTrack2.withSelected(true));
            } else {
                linkedList.add(audioTrack2.withSelected(false));
            }
        }
        this.playerState.audioTrackList = Collections.unmodifiableList(linkedList);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    void selectTextTrack(TextTrack textTrack) {
        if (!this.playerState.textTrackList.contains(textTrack)) {
            throw new IllegalArgumentException("Cc track is not in list");
        }
        LinkedList linkedList = new LinkedList();
        for (TextTrack textTrack2 : this.playerState.textTrackList) {
            if (textTrack2 == textTrack) {
                linkedList.add(textTrack2.withSelected(true));
            } else {
                linkedList.add(textTrack2.withSelected(false));
            }
        }
        this.playerState.textTrackList = Collections.unmodifiableList(linkedList);
    }
}
