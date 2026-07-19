package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.controls.AdControls;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.player.view.ControlsFeedbackHandler;
import com.aol.mobile.sdk.player.view.DefaultFeedbackHandler;
import com.aol.mobile.sdk.player.view.PlayerViewport;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class Binder {
    private Player player;
    private PlayerViewport playerView;
    boolean isBind = false;
    LinkedList<PlayerStateObserver> observers = new LinkedList<>();
    private boolean isPaused = false;
    private ControlsFeedbackHandler feedbackHandler = new DefaultFeedbackHandler();

    public void setCameraOrientationSensorEnabled(boolean z) {
    }

    private void unbind() {
        if (this.player != null) {
            Iterator<PlayerStateObserver> it = this.observers.iterator();
            while (it.hasNext()) {
                this.player.removePlayerStateObserver(it.next());
            }
        }
        PlayerViewport playerViewport = this.playerView;
        if (playerViewport != null) {
            unbindAllControllers(playerViewport);
        }
        this.observers.clear();
        this.isBind = false;
    }

    private void unbindAllControllers(PlayerViewport playerViewport) {
        playerViewport.render(new PlayerViewport.ViewModel());
        playerViewport.getAdVideoRenderer().render(new VideoVM());
        playerViewport.getContentVideoRenderer().render(new VideoVM());
        playerViewport.getContentControls().setListener(null);
        playerViewport.getAdControls().setListener(null);
    }

    private void bind() {
        Player player;
        PlayerViewport playerViewport = this.playerView;
        if (playerViewport != null && (player = this.player) != null) {
            bindControllersToViews(playerViewport, player);
            this.observers.add(new ContextObserver(this.playerView, this.player.contentPlayback, this.player.adPlayback));
            Iterator<PlayerStateObserver> it = this.observers.iterator();
            while (it.hasNext()) {
                this.player.addPlayerStateObserver(it.next());
            }
        }
        this.isBind = true;
    }

    private void bindControllersToViews(PlayerViewport playerViewport, final Player player) {
        playerViewport.getContentControls().setListener(new ContentControls.Listener() { // from class: com.aol.mobile.sdk.player.Binder.1
            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onButtonClick(ContentControls.Button button) {
                Binder.this.feedbackHandler.onButtonClick(player, button);
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onScroll(float f, float f2) {
                Binder.this.feedbackHandler.onScroll(player, f, f2);
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onSeekStarted() {
                Binder.this.feedbackHandler.onSeekStarted(player);
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onSeekTo(double d) {
                Binder.this.feedbackHandler.onSeekTo(player, d);
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onSeekStopped() {
                Binder.this.feedbackHandler.onSeekStopped(player);
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onAudioTrackSelected(int i) {
                Binder.this.feedbackHandler.onAudioTrackSelected(player, i);
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onCcTrackSelected(int i) {
                Binder.this.feedbackHandler.onCcTrackSelected(player, i);
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onCastEnabled() {
                player.enableCast();
            }

            @Override // com.aol.mobile.sdk.controls.ContentControls.Listener
            public void onCastDisabled() {
                player.disableCast();
            }
        });
        playerViewport.getAdControls().setListener(new AdControls.Listener() { // from class: com.aol.mobile.sdk.player.Binder.2
            @Override // com.aol.mobile.sdk.controls.AdControls.Listener
            public void onButtonClick(AdControls.Button button) {
                switch (C02643.$SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button[button.ordinal()]) {
                    case 1:
                        player.play();
                        break;
                    case 2:
                        player.pause();
                        break;
                }
            }

            @Override // com.aol.mobile.sdk.controls.AdControls.Listener
            public void onAdClicked() {
                player.notifyAdClicked();
            }

            @Override // com.aol.mobile.sdk.controls.AdControls.Listener
            public void onAdPresented() {
                player.notifyAdPresented();
            }
        });
    }

    /* JADX INFO: renamed from: com.aol.mobile.sdk.player.Binder$3 */
    static /* synthetic */ class C02643 {
        static final /* synthetic */ int[] $SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button = new int[AdControls.Button.values().length];

        static {
            try {
                $SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button[AdControls.Button.PLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$aol$mobile$sdk$controls$AdControls$Button[AdControls.Button.PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Player getPlayer() {
        return this.player;
    }

    public void setPlayer(Player player) {
        if (player == this.player) {
            return;
        }
        unbind();
        this.player = player;
        if (this.isPaused) {
            return;
        }
        bind();
    }

    public PlayerViewport getPlayerView() {
        return this.playerView;
    }

    public void setPlayerView(PlayerViewport playerViewport) {
        if (this.playerView == playerViewport) {
            return;
        }
        unbind();
        this.playerView = playerViewport;
        if (this.isPaused) {
            return;
        }
        bind();
    }

    public void onPause() {
        Player player = this.player;
        if (player != null) {
            player.moveToBackground();
        }
        this.isPaused = true;
    }

    public void onResume() {
        Player player = this.player;
        if (player != null) {
            player.moveToForeground();
            if (!this.isBind) {
                bind();
            }
        }
        this.isPaused = false;
    }

    public void onDestroy() {
        Player player = this.player;
        if (player != null) {
            player.completePlaybackSession();
        }
        setPlayer(null);
        setPlayerView(null);
    }

    public void setFeedbackHandler(ControlsFeedbackHandler controlsFeedbackHandler) {
        this.feedbackHandler = controlsFeedbackHandler;
    }
}
