package com.aol.mobile.sdk.player.listener;

import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.player.PlayerStateObserver;
import com.aol.mobile.sdk.player.model.PlaylistItem;
import com.aol.mobile.sdk.player.model.VoidVideoModel;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public abstract class PlaylistListener implements PlayerStateObserver {
    private Integer videoIndex;

    public abstract void onNextInPlaylist(PlaylistItem playlistItem);

    public abstract void onPreviousInPlaylist(PlaylistItem playlistItem);

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public final void onPlayerStateChanged(Properties properties) {
        int i = properties.playlist.currentIndex;
        if (this.videoIndex != null) {
            VideoProperties videoProperties = properties.playlistItem.video;
            PlaylistItem playlistItem = videoProperties != null ? new PlaylistItem(videoProperties.model) : new PlaylistItem(new VoidVideoModel(properties.playlistItem.voidVideo.reason));
            if (this.videoIndex.intValue() + 1 == i) {
                onNextInPlaylist(playlistItem);
            }
            if (this.videoIndex.intValue() - 1 == i) {
                onPreviousInPlaylist(playlistItem);
            }
        }
        this.videoIndex = Integer.valueOf(i);
    }
}
