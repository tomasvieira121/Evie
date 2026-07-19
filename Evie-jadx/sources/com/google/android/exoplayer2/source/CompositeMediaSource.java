package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompositeMediaSource<T> implements MediaSource {
    private final HashMap<T, MediaSource> childSources = new HashMap<>();
    private ExoPlayer player;

    protected abstract void onChildSourceInfoRefreshed(T t, MediaSource mediaSource, Timeline timeline, Object obj);

    protected CompositeMediaSource() {
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.Listener listener) {
        this.player = exoPlayer;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        Iterator<MediaSource> it = this.childSources.values().iterator();
        while (it.hasNext()) {
            it.next().maybeThrowSourceInfoRefreshError();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releaseSource() {
        Iterator<MediaSource> it = this.childSources.values().iterator();
        while (it.hasNext()) {
            it.next().releaseSource();
        }
        this.childSources.clear();
        this.player = null;
    }

    protected void prepareChildSource(final T t, final MediaSource mediaSource) {
        Assertions.checkArgument(!this.childSources.containsKey(t));
        this.childSources.put(t, mediaSource);
        mediaSource.prepareSource(this.player, false, new MediaSource.Listener() { // from class: com.google.android.exoplayer2.source.CompositeMediaSource.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.exoplayer2.source.MediaSource.Listener
            public void onSourceInfoRefreshed(MediaSource mediaSource2, Timeline timeline, Object obj) {
                CompositeMediaSource.this.onChildSourceInfoRefreshed(t, mediaSource, timeline, obj);
            }
        });
    }
}
