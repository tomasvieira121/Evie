package com.aol.mobile.sdk.player.view;

import com.aol.mobile.sdk.annotations.PrivateApi;
import com.aol.mobile.sdk.controls.AdControls;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.player.utils.Disposable;
import com.aol.mobile.sdk.renderer.VideoRenderer;

/* JADX INFO: loaded from: classes.dex */
@PrivateApi
public interface PlayerViewport extends Disposable {

    @PrivateApi
    public static final class ViewModel {
        public String contentRendererId = "com.onemobilesdk.videorenderer.flat@2.11";
        public boolean isAdControlsVisible;
        public boolean isAdVisible;
        public boolean isCasting;
        public boolean isContentControlsVisible;
        public boolean isContentVisible;
    }

    AdControls getAdControls();

    VideoRenderer getAdVideoRenderer();

    ContentControls getContentControls();

    VideoRenderer getContentVideoRenderer();

    void render(ViewModel viewModel);
}
