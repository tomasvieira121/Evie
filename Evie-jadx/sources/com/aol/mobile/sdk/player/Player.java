package com.aol.mobile.sdk.player;

import android.os.Handler;
import com.aol.mobile.sdk.player.advertisement.utils.Task;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAd;
import com.aol.mobile.sdk.player.listener.ErrorListener;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.PlayerModel;
import com.aol.mobile.sdk.player.model.PlayerState;
import com.aol.mobile.sdk.player.model.VrmState;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.Transformer;
import com.aol.mobile.sdk.renderer.AudioTrack;
import com.aol.mobile.sdk.renderer.TextTrack;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class Player {
    private AdManager adManager;
    final Playback adPlayback;
    final Playback contentPlayback;
    private ErrorHandlingBehaviour errorHandlingBehaviour;
    private final CopyOnWriteArraySet<PlayerStateObserver> observers;
    final PlayerLogic playerLogic;
    private final Properties[] properties;
    private int propertiesIndex;
    private final CopyOnWriteArraySet<StateObserver> stateObservers;

    public interface Callback {
        void error(Exception exc);

        void success(Player player);
    }

    public enum ErrorHandlingBehaviour {
        NO_ACTION,
        NEXT_VIDEO_ON_CONTENT_ERROR
    }

    public Player(PlayerModel playerModel) {
        this(playerModel, new VvuidGenerator());
    }

    public Player(PlayerModel playerModel, VvuidGenerator vvuidGenerator) {
        this.observers = new CopyOnWriteArraySet<>();
        this.stateObservers = new CopyOnWriteArraySet<>();
        this.properties = new Properties[2];
        this.errorHandlingBehaviour = ErrorHandlingBehaviour.NEXT_VIDEO_ON_CONTENT_ERROR;
        this.propertiesIndex = 0;
        this.playerLogic = new PlayerLogic(playerModel, vvuidGenerator);
        this.properties[0] = new Properties();
        this.properties[1] = new Properties();
        this.contentPlayback = new ContentPlayback(this);
        this.adPlayback = new AdvertisementPlayback(this);
        firePropertiesUpdateEvent();
        addPlayerStateObserver(new C02671());
    }

    /* JADX INFO: renamed from: com.aol.mobile.sdk.player.Player$1 */
    class C02671 implements PlayerStateObserver {
        boolean isFired = false;

        C02671() {
        }

        @Override // com.aol.mobile.sdk.player.PlayerStateObserver
        public void onPlayerStateChanged(Properties properties) {
            if (properties.errorState == null || properties.errorState == ErrorState.CONNECTION_ERROR) {
                return;
            }
            switch (C02682.f154xe1bd3d93[Player.this.errorHandlingBehaviour.ordinal()]) {
                case 2:
                    if (!properties.playlist.isLastVideo && properties.f166ad.time == null && !this.isFired) {
                        this.isFired = true;
                        new Handler().post(new Runnable() { // from class: com.aol.mobile.sdk.player.Player.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Player.this.playNext();
                                C02671.this.isFired = false;
                            }
                        });
                        break;
                    }
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: com.aol.mobile.sdk.player.Player$2 */
    static /* synthetic */ class C02682 {

        /* JADX INFO: renamed from: $SwitchMap$com$aol$mobile$sdk$player$Player$ErrorHandlingBehaviour */
        static final /* synthetic */ int[] f154xe1bd3d93 = new int[ErrorHandlingBehaviour.values().length];

        static {
            try {
                f154xe1bd3d93[ErrorHandlingBehaviour.NO_ACTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f154xe1bd3d93[ErrorHandlingBehaviour.NEXT_VIDEO_ON_CONTENT_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void updateProps() {
        this.propertiesIndex = 1 - this.propertiesIndex;
        PlayerState playerState = this.playerLogic.playerState;
        Transformer.updateProps(this.properties[this.propertiesIndex], playerState);
        if (playerState.isSessionCompleted) {
            playerState.isSessionCompleted = false;
        }
    }

    public Properties getProperties() {
        return this.properties[this.propertiesIndex];
    }

    public void playNext() {
        this.playerLogic.playNext();
        firePropertiesUpdateEvent();
    }

    public void playPrevious() {
        this.playerLogic.playPrevious();
        firePropertiesUpdateEvent();
    }

    public void playAtIndex(int i) {
        this.playerLogic.playAtIndex(i);
        firePropertiesUpdateEvent();
    }

    public void play() {
        this.playerLogic.play();
        firePropertiesUpdateEvent();
    }

    void playAd() {
        this.playerLogic.playAd();
    }

    public void pause() {
        this.playerLogic.pause();
        firePropertiesUpdateEvent();
    }

    void pauseAd() {
        this.playerLogic.pauseAd();
    }

    public void seekTo(double d) {
        this.playerLogic.seekTo(d);
        firePropertiesUpdateEvent();
    }

    public void startSeek() {
        this.playerLogic.startSeek();
        firePropertiesUpdateEvent();
    }

    public void stopSeek() {
        this.playerLogic.stopSeek();
        firePropertiesUpdateEvent();
    }

    public void completePlaybackSession() {
        this.playerLogic.completePlaybackSession();
        firePropertiesUpdateEvent();
    }

    public void selectAudioTrack(AudioTrack audioTrack) {
        this.playerLogic.selectAudioTrack(audioTrack);
        firePropertiesUpdateEvent();
    }

    public void selectTextTrack(TextTrack textTrack) {
        this.playerLogic.selectTextTrack(textTrack);
        firePropertiesUpdateEvent();
    }

    public void addErrorListener(ErrorListener errorListener) {
        addPlayerStateObserver(errorListener);
    }

    void notifyAdPresented() {
        this.playerLogic.notifyAdPresented();
        firePropertiesUpdateEvent();
    }

    void notifyAdClicked() {
        this.playerLogic.notifyAdClicked();
        firePropertiesUpdateEvent();
    }

    public void replay() {
        this.playerLogic.replay();
        firePropertiesUpdateEvent();
    }

    void updateVideoDuration(long j) {
        this.contentPlayback.updateDuration(j);
    }

    void updateAdDuration(long j) {
        this.adPlayback.updateDuration(j);
    }

    void updateVideoPlayback(boolean z) {
        this.contentPlayback.updateReadyToPlayState(z);
    }

    void updateVideoPosition(long j) {
        this.contentPlayback.updatePosition(j);
    }

    public void updateVideoDimensions(int i, int i2) {
        this.contentPlayback.updateViewportSize(i, i2);
    }

    void switchStateToContent() {
        this.playerLogic.switchStateToContent();
        firePropertiesUpdateEvent();
    }

    void switchStateToAd() {
        this.playerLogic.switchStateToAd();
        firePropertiesUpdateEvent();
    }

    void setAd(VrmAd vrmAd) {
        this.playerLogic.setAd(vrmAd);
        firePropertiesUpdateEvent();
    }

    void requestVrm(String str) {
        this.playerLogic.requestVrm(str);
        firePropertiesUpdateEvent();
    }

    void setAdParams(String str, String str2, String str3) {
        this.playerLogic.setAdParams(str, str2, str3);
        firePropertiesUpdateEvent();
    }

    void setTask(Task task, VrmState.TaskState taskState) {
        this.playerLogic.setTask(task, taskState);
        firePropertiesUpdateEvent();
    }

    void setGroupProcessingState(VrmState.GroupProcessingState groupProcessingState) {
        this.playerLogic.setGroupProcessingState(groupProcessingState);
    }

    void stopContentPlayback() {
        this.contentPlayback.stopPlayback();
    }

    void stopAdPlayback() {
        this.adPlayback.stopPlayback();
    }

    void stopWithError(ErrorState errorState) {
        this.contentPlayback.stopWithError(errorState);
    }

    public void setMute(boolean z) {
        this.playerLogic.setMute(z);
        firePropertiesUpdateEvent();
    }

    public void addPlayerStateObserver(PlayerStateObserver playerStateObserver) {
        if (this.observers.contains(playerStateObserver)) {
            return;
        }
        playerStateObserver.onPlayerStateChanged(getProperties());
        this.observers.add(playerStateObserver);
    }

    public void removePlayerStateObserver(PlayerStateObserver playerStateObserver) {
        this.observers.remove(playerStateObserver);
    }

    void addStateObserver(StateObserver stateObserver) {
        if (this.stateObservers.contains(stateObserver)) {
            return;
        }
        stateObserver.onStateChanged(this.playerLogic.playerState, getProperties());
        this.stateObservers.add(stateObserver);
    }

    void setAdManager(AdManager adManager) {
        this.adManager = adManager;
        if (adManager != null) {
            adManager.onPlayerStateChanged(getProperties());
        }
    }

    void removeStateObserver(StateObserver stateObserver) {
        this.stateObservers.remove(stateObserver);
    }

    void firePropertiesUpdateEvent() {
        updateProps();
        Properties properties = getProperties();
        Iterator<StateObserver> it = this.stateObservers.iterator();
        while (it.hasNext()) {
            it.next().onStateChanged(this.playerLogic.playerState, properties);
        }
        Iterator<PlayerStateObserver> it2 = this.observers.iterator();
        while (it2.hasNext()) {
            it2.next().onPlayerStateChanged(properties);
        }
        AdManager adManager = this.adManager;
        if (adManager != null) {
            adManager.onPlayerStateChanged(properties);
        }
    }

    public void setCameraDirection(double d, double d2) {
        this.playerLogic.setCameraDirection(d, d2);
        firePropertiesUpdateEvent();
    }

    public void moveCameraBy(double d, double d2) {
        this.playerLogic.moveCameraBy(d, d2);
        firePropertiesUpdateEvent();
    }

    public void enableCast() {
        this.playerLogic.setCast(true);
        firePropertiesUpdateEvent();
    }

    public void disableCast() {
        this.playerLogic.setCast(false);
        firePropertiesUpdateEvent();
    }

    void moveToBackground() {
        this.playerLogic.setOnForeground(false);
        firePropertiesUpdateEvent();
    }

    void moveToForeground() {
        this.playerLogic.setOnForeground(true);
        firePropertiesUpdateEvent();
    }

    public ErrorHandlingBehaviour getErrorHandlingBehaviour() {
        return this.errorHandlingBehaviour;
    }

    public void setErrorHandlingBehaviour(ErrorHandlingBehaviour errorHandlingBehaviour) {
        this.errorHandlingBehaviour = errorHandlingBehaviour;
    }
}
