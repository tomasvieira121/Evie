package com.aol.mobile.sdk.player.model;

import com.aol.mobile.sdk.annotations.PublicApi;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class PlaylistItem {
    public final VideoModel videoModel;
    public final VoidVideoModel voidVideoModel;

    public PlaylistItem(VideoModel videoModel) {
        this.videoModel = videoModel;
        this.voidVideoModel = null;
    }

    public PlaylistItem(VoidVideoModel voidVideoModel) {
        this.videoModel = null;
        this.voidVideoModel = voidVideoModel;
    }
}
