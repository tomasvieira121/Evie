package com.aol.mobile.sdk.player.view;

import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.player.Player;
import com.aol.mobile.sdk.player.model.properties.PlaylistItemProperties;
import com.aol.mobile.sdk.player.model.properties.TimeProperties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public class DefaultFeedbackHandler implements ControlsFeedbackHandler {
    private static final double FACTOR = Math.toRadians(1.0d) / 10.0d;
    private static final long TEN_SECONDS = 10000;

    double getNormalizedProgress(long j, long j2) {
        if (j < j2) {
            return 1.0d;
        }
        if (j2 < 0) {
            return 0.0d;
        }
        double d = j2;
        double d2 = j;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }

    @Override // com.aol.mobile.sdk.player.view.ControlsFeedbackHandler
    public void onButtonClick(Player player, ContentControls.Button button) {
        PlaylistItemProperties playlistItemProperties = player.getProperties().playlistItem;
        Long lValueOf = null;
        TimeProperties timeProperties = playlistItemProperties.video != null ? playlistItemProperties.video.time : null;
        long j = timeProperties == null ? 0L : timeProperties.duration;
        if (j > 0) {
            lValueOf = Long.valueOf(timeProperties.seekPosition == null ? timeProperties.current : timeProperties.seekPosition.longValue());
        }
        switch (button) {
            case PLAY:
                player.play();
                break;
            case PAUSE:
                player.pause();
                break;
            case REPLAY:
                player.replay();
                break;
            case NEXT:
                player.playNext();
                break;
            case PREVIOUS:
                player.playPrevious();
                break;
            case SEEK_FORWARD:
                if (lValueOf != null) {
                    player.seekTo(getNormalizedProgress(j, lValueOf.longValue() + TEN_SECONDS));
                    break;
                }
                break;
            case SEEK_BACKWARD:
                if (lValueOf != null) {
                    player.seekTo(getNormalizedProgress(j, lValueOf.longValue() - TEN_SECONDS));
                    break;
                }
                break;
            case COMPASS:
                player.setCameraDirection(0.0d, 0.0d);
                break;
        }
    }

    @Override // com.aol.mobile.sdk.player.view.ControlsFeedbackHandler
    public void onScroll(Player player, float f, float f2) {
        double d = -f;
        double d2 = FACTOR;
        Double.isNaN(d);
        double d3 = f2;
        Double.isNaN(d3);
        player.moveCameraBy(d * d2, d3 * d2);
    }

    @Override // com.aol.mobile.sdk.player.view.ControlsFeedbackHandler
    public void onSeekStarted(Player player) {
        player.startSeek();
    }

    @Override // com.aol.mobile.sdk.player.view.ControlsFeedbackHandler
    public void onSeekTo(Player player, double d) {
        player.seekTo(d);
    }

    @Override // com.aol.mobile.sdk.player.view.ControlsFeedbackHandler
    public void onSeekStopped(Player player) {
        player.stopSeek();
    }

    @Override // com.aol.mobile.sdk.player.view.ControlsFeedbackHandler
    public void onAudioTrackSelected(Player player, int i) {
        VideoProperties videoProperties = player.getProperties().playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        player.selectAudioTrack(videoProperties.audioTrackList.get(i));
    }

    @Override // com.aol.mobile.sdk.player.view.ControlsFeedbackHandler
    public void onCcTrackSelected(Player player, int i) {
        VideoProperties videoProperties = player.getProperties().playlistItem.video;
        if (videoProperties == null) {
            return;
        }
        player.selectTextTrack(videoProperties.textTrackList.get(i));
    }
}
