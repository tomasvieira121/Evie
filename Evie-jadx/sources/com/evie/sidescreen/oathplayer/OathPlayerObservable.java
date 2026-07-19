package com.evie.sidescreen.oathplayer;

import com.aol.mobile.sdk.player.Player;
import com.aol.mobile.sdk.player.PlayerBuilder;
import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.listener.ErrorListener;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.model.properties.AdProperties;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;
import com.aol.mobile.sdk.player.model.properties.ViewportProperties;
import com.evie.sidescreen.dagger.external.PlayerBuilderRequestor;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.BehaviorSubject;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class OathPlayerObservable extends Observable<OathPlayerEvent> {
    private PlayerBuilder mOathPlayerBuilder;
    private Player mPlayer;
    private Disposable mProgressDisposable;
    private BehaviorSubject<OathPlayerEvent> mSubject = BehaviorSubject.createDefault(new OathPlayerEvent.BuilderNotReady());
    private final Observable<?> mProgressObservable = Observable.interval(500, TimeUnit.MILLISECONDS);
    private boolean adClickEventFired = false;
    private final PlayerStateObserver mPlayerStateObserver = new C05331();
    private final ErrorListener errorListener = new ErrorListener() { // from class: com.evie.sidescreen.oathplayer.OathPlayerObservable.2
        @Override // com.aol.mobile.sdk.player.listener.ErrorListener
        public void onError(ErrorState errorState) {
            String str;
            switch (C05375.$SwitchMap$com$aol$mobile$sdk$player$model$ErrorState[errorState.ordinal()]) {
                case 1:
                    str = "Error: Bad Connection";
                    break;
                case 2:
                    str = "Error: Corrupted Content";
                    break;
                default:
                    str = "Error: Unknown";
                    break;
            }
            OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Error(str));
        }
    };

    /* JADX INFO: renamed from: com.evie.sidescreen.oathplayer.OathPlayerObservable$1 */
    class C05331 implements PlayerStateObserver {
        C05331() {
        }

        @Override // com.aol.mobile.sdk.player.PlayerStateObserver
        public void onPlayerStateChanged(Properties properties) {
            if (OathPlayerObservable.this.mPlayer == null || properties.playlistItem.video == null) {
                return;
            }
            if (!properties.shouldPlay) {
                if (OathPlayerObservable.this.mProgressDisposable != null) {
                    OathPlayerObservable.this.disposeProgressDisposable();
                    VideoProperties videoProperties = OathPlayerObservable.this.mPlayer.getProperties().playlistItem.video;
                    if (videoProperties == null || videoProperties.time == null) {
                        OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Pause());
                        return;
                    }
                    long j = videoProperties.time.current;
                    long j2 = videoProperties.time.duration;
                    if (j < j2 || j2 == -1) {
                        OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Pause());
                        return;
                    } else {
                        OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Finished());
                        return;
                    }
                }
                return;
            }
            if (Properties.ViewState.Ad != properties.viewState) {
                if (OathPlayerObservable.this.mProgressDisposable == null) {
                    OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Play());
                    OathPlayerObservable oathPlayerObservable = OathPlayerObservable.this;
                    oathPlayerObservable.mProgressDisposable = oathPlayerObservable.mProgressObservable.subscribe(new Consumer() { // from class: com.evie.sidescreen.oathplayer.-$$Lambda$OathPlayerObservable$1$-tAzo6VTK3PYBTjJRCKZybnh5jM
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) throws Exception {
                            OathPlayerObservable.C05331.lambda$onPlayerStateChanged$0(this.f$0, obj);
                        }
                    });
                    return;
                }
                return;
            }
            if (properties.f166ad.isFinished) {
                OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.AdFinished(properties.f166ad));
                return;
            }
            if (properties.f166ad.isAdClicked) {
                if (!OathPlayerObservable.this.adClickEventFired) {
                    OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.AdClick());
                    OathPlayerObservable.this.adClickEventFired = true;
                }
            } else {
                OathPlayerObservable.this.adClickEventFired = false;
            }
            TimeProperties timeProperties = properties.f166ad.time;
            OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.AdProgress(timeProperties == null ? 0L : timeProperties.current));
        }

        public static /* synthetic */ void lambda$onPlayerStateChanged$0(C05331 c05331, Object obj) throws Exception {
            VideoProperties videoProperties = OathPlayerObservable.this.mPlayer.getProperties().playlistItem.video;
            if (videoProperties == null || videoProperties.time == null) {
                return;
            }
            OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Progress(videoProperties.time.current, videoProperties.time.duration));
        }
    }

    /* JADX INFO: renamed from: com.evie.sidescreen.oathplayer.OathPlayerObservable$5 */
    static /* synthetic */ class C05375 {
        static final /* synthetic */ int[] $SwitchMap$com$aol$mobile$sdk$player$model$ErrorState = new int[ErrorState.values().length];

        static {
            try {
                $SwitchMap$com$aol$mobile$sdk$player$model$ErrorState[ErrorState.CONNECTION_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$aol$mobile$sdk$player$model$ErrorState[ErrorState.CONTENT_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public OathPlayerObservable(PlayerBuilderRequestor playerBuilderRequestor) {
        playerBuilderRequestor.request(new PlayerBuilderRequestor.PlayerBuilderRequestCallback() { // from class: com.evie.sidescreen.oathplayer.OathPlayerObservable.3
            @Override // com.evie.sidescreen.dagger.external.PlayerBuilderRequestor.PlayerBuilderRequestCallback
            public void onSuccess(PlayerBuilder playerBuilder) {
                OathPlayerObservable.this.mOathPlayerBuilder = playerBuilder;
                OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.BuilderReady());
            }

            @Override // com.evie.sidescreen.dagger.external.PlayerBuilderRequestor.PlayerBuilderRequestCallback
            public void onFailure(Exception exc) {
                OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Error(exc.getMessage()));
            }
        });
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super OathPlayerEvent> observer) {
        this.mSubject.subscribe(observer);
    }

    public void createPlayer(String str) {
        PlayerBuilder playerBuilder = this.mOathPlayerBuilder;
        if (playerBuilder == null) {
            return;
        }
        playerBuilder.setAutoplay(false).buildForVideo(str, new Player.Callback() { // from class: com.evie.sidescreen.oathplayer.OathPlayerObservable.4
            @Override // com.aol.mobile.sdk.player.Player.Callback
            public void success(Player player) {
                OathPlayerObservable.this.mPlayer = player;
                OathPlayerObservable.this.mPlayer.addPlayerStateObserver(OathPlayerObservable.this.mPlayerStateObserver);
                OathPlayerObservable.this.mPlayer.addErrorListener(OathPlayerObservable.this.errorListener);
                OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Ready());
            }

            @Override // com.aol.mobile.sdk.player.Player.Callback
            public void error(Exception exc) {
                OathPlayerObservable.this.mSubject.onNext(new OathPlayerEvent.Error(exc.getMessage()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disposeProgressDisposable() {
        Disposable disposable = this.mProgressDisposable;
        if (disposable != null) {
            disposable.dispose();
            this.mProgressDisposable = null;
        }
    }

    public void play() {
        Player player = this.mPlayer;
        if (player != null) {
            if (player.getProperties().playlistItem.video == null) {
                this.mSubject.onNext(new OathPlayerEvent.Error("Null Video Props"));
            } else {
                this.mPlayer.play();
            }
        }
    }

    public void pause() {
        Player player = this.mPlayer;
        if (player != null) {
            player.pause();
        }
    }

    public void seek(long j, long j2) {
        Player player = this.mPlayer;
        if (player != null) {
            double d = j;
            double d2 = j2;
            Double.isNaN(d);
            Double.isNaN(d2);
            player.seekTo(d / d2);
            this.mSubject.onNext(new OathPlayerEvent.Progress(j, j2));
        }
    }

    public Player getPlayer() {
        Player player = this.mPlayer;
        if (player != null) {
            return player;
        }
        this.mSubject.onNext(new OathPlayerEvent.Error("Player not initialized"));
        return null;
    }

    public long getDuration() {
        if (getTimeProperties() == null) {
            return -1L;
        }
        return getTimeProperties().duration;
    }

    public long getPosition() {
        if (getTimeProperties() == null) {
            return -1L;
        }
        return getTimeProperties().current;
    }

    private TimeProperties getTimeProperties() {
        VideoProperties videoProperties;
        Player player = this.mPlayer;
        if (player == null || (videoProperties = player.getProperties().playlistItem.video) == null) {
            return null;
        }
        return videoProperties.time;
    }

    public AdProperties getCurrentAdProperties() {
        if (this.mPlayer == null || Properties.ViewState.Ad != this.mPlayer.getProperties().viewState) {
            return null;
        }
        return this.mPlayer.getProperties().f166ad;
    }

    public ViewportProperties getViewportProperties() {
        Player player = this.mPlayer;
        if (player != null) {
            return player.getProperties().viewport;
        }
        return null;
    }

    public void reset() {
        dispose();
        if (this.mOathPlayerBuilder == null) {
            this.mSubject.onNext(new OathPlayerEvent.BuilderNotReady());
        } else {
            this.mSubject.onNext(new OathPlayerEvent.BuilderReady());
        }
    }

    public void dispose() {
        disposeProgressDisposable();
        Player player = this.mPlayer;
        if (player != null) {
            player.pause();
            this.mPlayer.removePlayerStateObserver(this.mPlayerStateObserver);
            this.mPlayer = null;
        }
    }
}
