package com.aol.mobile.sdk.player.model;

import com.aol.mobile.sdk.annotations.PublicApi;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class PlayerModel {
    public final boolean embedClickThroughUrl;
    public final boolean isAutoplayOn;
    public final boolean showClickThroughClose;
    public final List<PlaylistItem> videoModels;

    public PlayerModel(List<PlaylistItem> list, boolean z, boolean z2, boolean z3) {
        this.videoModels = Collections.unmodifiableList(list);
        this.isAutoplayOn = z;
        this.embedClickThroughUrl = z2;
        this.showClickThroughClose = z3;
    }

    public PlayerModel(List<PlaylistItem> list, boolean z) {
        this(list, z, false, false);
    }

    public PlayerModel withPlaylistItems(List<PlaylistItem> list) {
        return new PlayerModel(list, this.isAutoplayOn);
    }

    public PlayerModel withAutoplay(boolean z) {
        return new PlayerModel(this.videoModels, z);
    }
}
