package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.controls.AdControls;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.view.PlayerViewport;
import com.aol.mobile.sdk.player.view.model.UiPropertiesTranslator;
import com.aol.mobile.sdk.player.view.model.VideoVMTranslator;
import com.aol.mobile.sdk.player.view.p003ui.StreamStreamListener;
import com.aol.mobile.sdk.renderer.VideoRenderer;
import com.aol.mobile.sdk.renderer.viewmodel.VideoVM;

/* JADX INFO: loaded from: classes.dex */
class ContextObserver implements PlayerStateObserver {
    private final StreamStreamListener adCallbacks;
    private final AdControls adControls;
    private final VideoRenderer adVideoRenderer;
    private final StreamStreamListener contentCallbacks;
    private final ContentControls contentControls;
    private int index;
    private final PlayerViewport playerView;
    private final PlayerViewport.ViewModel[] contextVm = {new PlayerViewport.ViewModel(), new PlayerViewport.ViewModel()};
    private final VideoVM[] adVideoVm = {new VideoVM(), new VideoVM()};
    private final VideoVM[] contentVideoVm = {new VideoVM(), new VideoVM()};
    private final AdControls.ViewModel[] adControlsVm = {new AdControls.ViewModel(), new AdControls.ViewModel()};
    private final ContentControls.ViewModel[] contentControlsVm = {new ContentControls.ViewModel(), new ContentControls.ViewModel()};

    ContextObserver(PlayerViewport playerViewport, Playback playback, Playback playback2) {
        this.playerView = playerViewport;
        this.adControls = playerViewport.getAdControls();
        this.contentControls = playerViewport.getContentControls();
        this.adVideoRenderer = playerViewport.getAdVideoRenderer();
        this.adCallbacks = new StreamStreamListener(playback2);
        this.contentCallbacks = new StreamStreamListener(playback);
    }

    @Override // com.aol.mobile.sdk.player.PlayerStateObserver
    public void onPlayerStateChanged(Properties properties) {
        this.index = 1 - this.index;
        UiPropertiesTranslator.translatePropsTo(properties, this.contextVm[this.index]);
        this.playerView.render(this.contextVm[this.index]);
        UiPropertiesTranslator.translatePropsTo(properties, this.adControlsVm[this.index]);
        this.adControls.render(this.adControlsVm[this.index]);
        UiPropertiesTranslator.translatePropsTo(properties, this.contentControlsVm[this.index]);
        this.contentControls.render(this.contentControlsVm[this.index]);
        VideoVMTranslator.translatePropsToAdVideoVM(properties, this.adVideoVm[this.index], this.adCallbacks);
        this.adVideoRenderer.render(this.adVideoVm[this.index]);
        VideoVMTranslator.translatePropsToContentVideoVM(properties, this.contentVideoVm[this.index], this.contentCallbacks);
        this.playerView.getContentVideoRenderer().render(this.contentVideoVm[this.index]);
    }
}
