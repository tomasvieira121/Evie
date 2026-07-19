package com.evie.sidescreen.exoplayer;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes.dex */
public final class VideoFocusHandler_Factory implements Factory<VideoFocusHandler> {
    private static final VideoFocusHandler_Factory INSTANCE = new VideoFocusHandler_Factory();

    @Override // javax.inject.Provider
    public VideoFocusHandler get() {
        return new VideoFocusHandler();
    }

    public static VideoFocusHandler_Factory create() {
        return INSTANCE;
    }
}
