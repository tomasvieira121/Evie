package com.aol.mobile.sdk.player.model.properties;

import com.aol.mobile.sdk.player.model.PlayerModel;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class PlaylistProperties {
    public int count;
    public int currentIndex;
    public boolean hasNextVideo;
    public boolean hasPreviousVideo;
    public boolean isFirstVideo;
    public boolean isLastVideo;
    public PlayerModel model = new PlayerModel(Collections.emptyList(), false);
}
