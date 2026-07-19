package com.evie.sidescreen.tiles.imageviewer;

import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PopupImageViewerPresenterFactory_Factory implements Factory<PopupImageViewerPresenterFactory> {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<LayerStack> layerStackProvider;
    private final Provider<SideScreenDependencies.PopupListener> popupListenerProvider;
    private final Provider<PopupViewProvider> popupViewProvider;
    private final Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;

    public PopupImageViewerPresenterFactory_Factory(Provider<LayerStack> provider, Provider<PopupViewProvider> provider2, Provider<TopLevelTilePresenterFactory> provider3, Provider<ActivityStarter> provider4, Provider<SideScreenDependencies.PopupListener> provider5) {
        this.layerStackProvider = provider;
        this.popupViewProvider = provider2;
        this.topLevelTilePresenterFactoryProvider = provider3;
        this.activityStarterProvider = provider4;
        this.popupListenerProvider = provider5;
    }

    @Override // javax.inject.Provider
    public PopupImageViewerPresenterFactory get() {
        return new PopupImageViewerPresenterFactory(this.layerStackProvider, this.popupViewProvider, this.topLevelTilePresenterFactoryProvider, this.activityStarterProvider, this.popupListenerProvider);
    }

    public static PopupImageViewerPresenterFactory_Factory create(Provider<LayerStack> provider, Provider<PopupViewProvider> provider2, Provider<TopLevelTilePresenterFactory> provider3, Provider<ActivityStarter> provider4, Provider<SideScreenDependencies.PopupListener> provider5) {
        return new PopupImageViewerPresenterFactory_Factory(provider, provider2, provider3, provider4, provider5);
    }
}
