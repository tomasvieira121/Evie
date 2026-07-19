package com.evie.sidescreen.tiles.imageviewer;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PopupVideoViewerPresenterFactory_Factory implements Factory<PopupVideoViewerPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<LayerStack> layerStackProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<ExoPlayerObservable> playerProvider;
    private final Provider<SideScreenDependencies.PopupListener> popupListenerProvider;
    private final Provider<PopupViewProvider> popupViewProvider;
    private final Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
    private final Provider<VideoFocusHandler> videoFocusHandlerProvider;

    public PopupVideoViewerPresenterFactory_Factory(Provider<ExoPlayerObservable> provider, Provider<LayerStack> provider2, Provider<PopupViewProvider> provider3, Provider<TopLevelTilePresenterFactory> provider4, Provider<ActivityStarter> provider5, Provider<LifecycleCallbacks> provider6, Provider<VideoFocusHandler> provider7, Provider<SideScreenDependencies.PopupListener> provider8) {
        this.playerProvider = provider;
        this.layerStackProvider = provider2;
        this.popupViewProvider = provider3;
        this.topLevelTilePresenterFactoryProvider = provider4;
        this.activityStarterProvider = provider5;
        this.lifecycleCallbacksProvider = provider6;
        this.videoFocusHandlerProvider = provider7;
        this.popupListenerProvider = provider8;
    }

    @Override // javax.inject.Provider
    public PopupVideoViewerPresenterFactory get() {
        return new PopupVideoViewerPresenterFactory(this.playerProvider, this.layerStackProvider, this.popupViewProvider, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, this.lifecycleCallbacksProvider, this.videoFocusHandlerProvider, this.popupListenerProvider);
    }

    public static PopupVideoViewerPresenterFactory_Factory create(Provider<ExoPlayerObservable> provider, Provider<LayerStack> provider2, Provider<PopupViewProvider> provider3, Provider<TopLevelTilePresenterFactory> provider4, Provider<ActivityStarter> provider5, Provider<LifecycleCallbacks> provider6, Provider<VideoFocusHandler> provider7, Provider<SideScreenDependencies.PopupListener> provider8) {
        return new PopupVideoViewerPresenterFactory_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }
}
