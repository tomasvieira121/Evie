package com.aol.mobile.sdk.renderer;

import android.content.Context;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;

/* JADX INFO: loaded from: classes.dex */
public interface VideoRenderer {

    public interface Producer {
        VideoRenderer createRenderer(Context context);
    }

    void dispose();

    void render(VideoVM videoVM);
}
