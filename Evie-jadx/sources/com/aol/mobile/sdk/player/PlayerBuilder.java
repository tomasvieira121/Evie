package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.player.model.PlayerModel;
import com.aol.mobile.sdk.player.model.PlaylistItem;
import com.aol.mobile.sdk.player.utils.VideoProviderUtils;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerBuilder {
    private JSONObject extra;
    private final OneSDK oneSDK;
    private String siteSection;
    private VvuidGenerator vvuidGenerator = new VvuidGenerator();
    private boolean isAutoplayOn = true;

    PlayerBuilder(OneSDK oneSDK) {
        this.oneSDK = oneSDK;
    }

    public PlayerBuilder setVvuidGenerator(VvuidGenerator vvuidGenerator) {
        if (vvuidGenerator == null) {
            vvuidGenerator = new VvuidGenerator();
        }
        this.vvuidGenerator = vvuidGenerator;
        return this;
    }

    public PlayerBuilder setAutoplay(boolean z) {
        this.isAutoplayOn = z;
        return this;
    }

    public PlayerBuilder setExtra(JSONObject jSONObject) {
        this.extra = jSONObject;
        return this;
    }

    public PlayerBuilder withSiteSection(String str) {
        this.siteSection = str;
        return this;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public Player buildFrom(VideoProviderResponse videoProviderResponse) throws InvalidRendererException, EmptyPlaylistException {
        if (videoProviderResponse.playlistItems.length <= 0) {
            throw new EmptyPlaylistException();
        }
        for (VideoProviderResponse.PlaylistItem playlistItem : videoProviderResponse.playlistItems) {
            if (playlistItem.video != null && !this.oneSDK.renderersRegistry.hasRenderer(playlistItem.video.renderer)) {
                throw new InvalidRendererException();
            }
        }
        return this.oneSDK.constructPlayer(videoProviderResponse, new Player(constructModel(VideoProviderUtils.getVideoModelsList(videoProviderResponse), videoProviderResponse.isAutoplay, videoProviderResponse.features), this.vvuidGenerator));
    }

    PlayerModel constructModel(List<PlaylistItem> list, boolean z, VideoProviderResponse.Features features) {
        return new PlayerModel(list, z, features.embedClickthroughUrl, features.showClickThroughClose);
    }

    public void buildForVideo(String str, final Player.Callback callback) {
        this.oneSDK.getVideoProvider().requestVideoModel(str, this.extra, this.isAutoplayOn, this.siteSection, new VideoProvider.Callback() { // from class: com.aol.mobile.sdk.player.PlayerBuilder.1
            @Override // com.aol.mobile.sdk.player.VideoProvider.Callback
            public void success(VideoProviderResponse videoProviderResponse) {
                try {
                    callback.success(PlayerBuilder.this.buildFrom(videoProviderResponse));
                } catch (EmptyPlaylistException | InvalidRendererException e) {
                    callback.error(e);
                }
            }

            @Override // com.aol.mobile.sdk.player.VideoProvider.Callback
            public void error(Exception exc) {
                callback.error(exc);
            }
        });
    }

    public void requestForVideo(String str, VideoProvider.Callback callback) {
        this.oneSDK.getVideoProvider().requestVideoModel(str, this.extra, this.isAutoplayOn, this.siteSection, callback);
    }

    public void buildForPlaylist(String str, final Player.Callback callback) {
        this.oneSDK.getVideoProvider().requestPlaylistModel(str, this.extra, this.isAutoplayOn, this.siteSection, new VideoProvider.Callback() { // from class: com.aol.mobile.sdk.player.PlayerBuilder.2
            @Override // com.aol.mobile.sdk.player.VideoProvider.Callback
            public void success(VideoProviderResponse videoProviderResponse) {
                try {
                    callback.success(PlayerBuilder.this.buildFrom(videoProviderResponse));
                } catch (EmptyPlaylistException | InvalidRendererException e) {
                    callback.error(e);
                }
            }

            @Override // com.aol.mobile.sdk.player.VideoProvider.Callback
            public void error(Exception exc) {
                callback.error(exc);
            }
        });
    }

    public void requestForPlaylist(String str, VideoProvider.Callback callback) {
        this.oneSDK.getVideoProvider().requestPlaylistModel(str, this.extra, this.isAutoplayOn, this.siteSection, callback);
    }

    public void buildForVideoList(String[] strArr, final Player.Callback callback) {
        this.oneSDK.getVideoProvider().requestPlaylistModel(strArr, this.extra, this.isAutoplayOn, this.siteSection, new VideoProvider.Callback() { // from class: com.aol.mobile.sdk.player.PlayerBuilder.3
            @Override // com.aol.mobile.sdk.player.VideoProvider.Callback
            public void success(VideoProviderResponse videoProviderResponse) {
                try {
                    callback.success(PlayerBuilder.this.buildFrom(videoProviderResponse));
                } catch (EmptyPlaylistException | InvalidRendererException e) {
                    callback.error(e);
                }
            }

            @Override // com.aol.mobile.sdk.player.VideoProvider.Callback
            public void error(Exception exc) {
                callback.error(exc);
            }
        });
    }

    public void requestForVideoList(String[] strArr, VideoProvider.Callback callback) {
        this.oneSDK.getVideoProvider().requestPlaylistModel(strArr, this.extra, this.isAutoplayOn, this.siteSection, callback);
    }
}
