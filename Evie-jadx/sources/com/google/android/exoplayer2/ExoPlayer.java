package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.MediaSource;

/* JADX INFO: loaded from: classes.dex */
public interface ExoPlayer extends Player {

    @Deprecated
    public interface EventListener extends Player.EventListener {
    }

    PlayerMessage createMessage(PlayerMessage.Target target);

    void prepare(MediaSource mediaSource);

    void prepare(MediaSource mediaSource, boolean z, boolean z2);
}
