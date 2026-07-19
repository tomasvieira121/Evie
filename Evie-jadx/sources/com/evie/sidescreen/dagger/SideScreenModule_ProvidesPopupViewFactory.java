package com.evie.sidescreen.dagger;

import com.evie.sidescreen.SideScreenView;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class SideScreenModule_ProvidesPopupViewFactory implements Factory<PopupViewProvider> {
    private final SideScreenModule module;
    private final Provider<SideScreenView> sideScreenViewProvider;

    public SideScreenModule_ProvidesPopupViewFactory(SideScreenModule sideScreenModule, Provider<SideScreenView> provider) {
        this.module = sideScreenModule;
        this.sideScreenViewProvider = provider;
    }

    @Override // javax.inject.Provider
    public PopupViewProvider get() {
        return proxyProvidesPopupView(this.module, this.sideScreenViewProvider.get());
    }

    public static SideScreenModule_ProvidesPopupViewFactory create(SideScreenModule sideScreenModule, Provider<SideScreenView> provider) {
        return new SideScreenModule_ProvidesPopupViewFactory(sideScreenModule, provider);
    }

    public static PopupViewProvider proxyProvidesPopupView(SideScreenModule sideScreenModule, SideScreenView sideScreenView) {
        return (PopupViewProvider) Preconditions.checkNotNull(sideScreenModule.providesPopupView(sideScreenView), "Cannot return null from a non-@Nullable @Provides method");
    }
}
