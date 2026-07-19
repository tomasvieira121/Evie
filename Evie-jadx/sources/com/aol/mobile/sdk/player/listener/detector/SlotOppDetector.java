package com.aol.mobile.sdk.player.listener.detector;

import com.aol.mobile.sdk.player.StateObserver;
import com.aol.mobile.sdk.player.model.PlayerState;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
public final class SlotOppDetector implements StateObserver {
    private String adType;
    private Callback callback;
    private boolean isSent = false;
    private Properties.ViewState prevState;
    private String sessionId;
    private String slot;
    private String txid;

    public interface Callback {
        void onSlotOppDetected(int i, String str, int i2, String str2, String str3, String str4);
    }

    public SlotOppDetector(Callback callback) {
        this.callback = callback;
    }

    @Override // com.aol.mobile.sdk.player.StateObserver
    public void onStateChanged(PlayerState playerState, Properties properties) {
        VideoProperties videoProperties = properties.playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        boolean z = false;
        if (!properties.session.f168id.equals(this.sessionId)) {
            this.sessionId = properties.session.f168id;
            this.isSent = false;
        }
        if (this.prevState == Properties.ViewState.Content && properties.viewState == Properties.ViewState.Ad) {
            this.isSent = false;
        }
        if (playerState.vrmState.slot != null && playerState.vrmState.txid != null && properties.f166ad.type != null && !this.isSent) {
            this.slot = playerState.vrmState.slot;
            this.txid = playerState.vrmState.txid;
            this.adType = properties.f166ad.type;
        }
        boolean z2 = videoProperties.isPlaying && properties.viewState == Properties.ViewState.Content;
        if (properties.f166ad.isPlaying && properties.viewState == Properties.ViewState.Ad) {
            z = true;
        }
        if ((z2 || z) && !this.isSent) {
            if (this.slot != null && this.txid != null && this.adType != null) {
                this.callback.onSlotOppDetected(properties.playlist.currentIndex, videoProperties.uniqueVideoId, properties.viewport.width, this.txid, this.slot, this.adType);
            }
            this.slot = null;
            this.txid = null;
            this.adType = null;
            this.isSent = true;
        }
        this.prevState = properties.viewState;
    }
}
